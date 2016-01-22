<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:oai_dc='http://www.openarchives.org/OAI/2.0/oai_dc/' xmlns:dc="http://purl.org/dc/elements/1.1/" version="2.0" xmlns="http://www.loc.gov/mods/v3">
  <xsl:output omit-xml-declaration="yes" indent="yes"/>
  
  <xsl:template match="text()|@*"/>
  <xsl:template match="//oai_dc:dc">
    <mods xmlns="http://www.loc.gov/mods/v3" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.loc.gov/mods/v3 http://www.loc.gov/standards/mods/v3/mods-3-4.xsd" version="3.4">      
      <xsl:apply-templates select="dc:title"/>
      
      <!-- Check 'unknown' in dc:creator when well, unknown. Ignore it if present.-->
      <xsl:if test="lower-case(normalize-space(dc:creator)) != 'unknown'">
        <xsl:apply-templates select="dc:creator"/>
      </xsl:if>
      
      <xsl:if test="dc:date != '' or dc:publisher != ''">
          <xsl:element name="originInfo">
            <xsl:if test="lower-case(normalize-space(dc:date)) != 'unknown'">
              <xsl:apply-templates select="dc:date" mode="esdn"/>
            </xsl:if>
            <xsl:if test="lower-case(normalize-space(dc:publisher)) != 'unknown'">
              <xsl:apply-templates select="dc:publisher"/>
            </xsl:if>
          </xsl:element>
      </xsl:if>
      
      <xsl:apply-templates select="dc:description"/>
      
      <!-- Format and extent info are in dc:source. -->
      <!-- Any time we're wrapping at this level, check for a value, so that we don't
        output empty elements -->
      <xsl:if test="normalize-space(dc:source) != ''">
        <xsl:element name="physicalDescription">
           <xsl:element name="extent">
             <xsl:value-of select="dc:source"/>
           </xsl:element>
        </xsl:element>
      </xsl:if>
      
      <!-- templates we override get a mode attribute with the setSpec of the collection -->
      <xsl:apply-templates select="dc:identifier" mode="esdn"/>
      <xsl:apply-templates select="dc:language" mode="bufferiepl"/>
      <xsl:apply-templates select="dc:rights"/>
      <xsl:apply-templates select="dc:subject" mode="nyh"/>

      <!-- account for coordinates from WNYLRC collections -->

      <xsl:choose>
        <xsl:when test="count(dc:coverage) = 1">
          <xsl:apply-templates select="dc:coverage" mode="nyh"/>
        </xsl:when>
        <xsl:when test="count(dc:coverage) = 2 and matches(dc:coverage[1], '\d+')">
          <xsl:element name="subject">
            <xsl:element name="cartographics">
              <xsl:element name="coordinates">
                <xsl:call-template name="coords_element-nyh">
                  <xsl:with-param name="lat"><xsl:value-of select="dc:coverage[1]"/></xsl:with-param>
                  <xsl:with-param name="long"><xsl:value-of select="dc:coverage[2]"/></xsl:with-param>
                </xsl:call-template>          
              </xsl:element>
            </xsl:element>
          </xsl:element>
        </xsl:when>
        <xsl:when test="count(dc:coverage) = 0"/>
        <xsl:otherwise>
          <xsl:apply-templates select="dc:coverage[1]" mode="nyh"/>
          <xsl:element name="subject">
            <xsl:element name="cartographics">
              <xsl:element name="coordinates">
                <xsl:call-template name="coords_element-nyh">
                  <xsl:with-param name="lat"><xsl:value-of select="dc:coverage[2]"/></xsl:with-param>
                  <xsl:with-param name="long"><xsl:value-of select="dc:coverage[3]"/></xsl:with-param>
                </xsl:call-template>          
              </xsl:element>
            </xsl:element>
          </xsl:element>
        </xsl:otherwise>
      </xsl:choose>
      
      <xsl:apply-templates select="dc:type" mode="esdn"/>
      
      <!-- hard code collection and ownership note -->
      
      <xsl:element name="relatedItem" namespace="http://www.loc.gov/mods/v3">
        <xsl:attribute name="type">host</xsl:attribute>
        <xsl:attribute name="displayLabel">Collection</xsl:attribute>
        <xsl:element name="titleInfo" namespace="http://www.loc.gov/mods/v3">
          <xsl:element name="title" namespace="http://www.loc.gov/mods/v3">Buffalo &amp; Erie County Public Library</xsl:element>
        </xsl:element>
      </xsl:element>
      
      <xsl:call-template name="intermediate-provider"><xsl:with-param name="council">Western New York Library Resources Council</xsl:with-param></xsl:call-template><xsl:call-template name="owner-note">
        <xsl:with-param name="owner">Buffalo &amp; Erie County Public Library</xsl:with-param>
      </xsl:call-template>
    <xsl:apply-templates select="dc:relation" mode="esdn"/></mods>
  </xsl:template>
  
  <!-- ESDN utility templates -->
  <xsl:include href="nyh_templates.xsl"/>
<xsl:include href="esdn_templates.xsl"/>
  
  <!-- dublin core field templates -->
  <xsl:include href="oaidctomods_cdmbase.xsl"/>
  
  <!-- reference URL, thumbnail URL --> 
  <xsl:include href="oaidctomods_cdm6.5.xsl"/>
  
  <!-- collection-specific templates start here --> 
  
  <xsl:template match="dc:language" mode="bufferiepl">
    <xsl:choose>
      <xsl:when test="contains(normalize-space(lower-case(.)), 'english')">
        <xsl:element name="language">
          <xsl:element name="languageTerm">
            <xsl:text>eng</xsl:text>
          </xsl:element>
        </xsl:element>
      </xsl:when>
      <xsl:otherwise>
        <xsl:apply-templates select="."/>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

</xsl:stylesheet>

