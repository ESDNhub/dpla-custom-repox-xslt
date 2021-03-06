<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:oai_dc='http://www.openarchives.org/OAI/2.0/oai_dc/' xmlns:dc="http://purl.org/dc/elements/1.1/" version="2.0" xmlns="http://www.loc.gov/mods/v3">
  <xsl:output omit-xml-declaration="yes" indent="yes"/>
  
  <xsl:template match="text()|@*"/>
  <xsl:template match="//oai_dc:dc">
    <mods xmlns="http://www.loc.gov/mods/v3" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.loc.gov/mods/v3 http://www.loc.gov/standards/mods/v3/mods-3-4.xsd" version="3.4">      
      <xsl:apply-templates select="dc:title"/>
      <xsl:apply-templates select="dc:contributor"/>
      <xsl:apply-templates select="dc:creator[lower-case(normalize-space(text()))!='unknown']"/>
      
        <xsl:if test="exists(dc:date) or exists(dc:publisher)">
          <xsl:element name="originInfo" namespace="http://www.loc.gov/mods/v3">
            <xsl:apply-templates select="dc:date" mode="esdn"/>
            <xsl:apply-templates select="dc:publisher"/>
          </xsl:element>
        </xsl:if>
      
      <xsl:apply-templates select="dc:description"/>
      
      <xsl:apply-templates select="dc:source" mode="hrvi"/>

      <xsl:apply-templates select="dc:format" mode="nyh"/>
      
      <xsl:apply-templates select="dc:identifier" mode="nyh_nolocal"/>
      <xsl:apply-templates select="dc:language"/>
      
      <!-- coordinates for HRVI in dc:coverage -->
      
      <xsl:choose>
        <xsl:when test="count(dc:coverage) = 1">
          <xsl:apply-templates select="dc:coverage" mode="esdn"/>
        </xsl:when>
        <xsl:when test="count(dc:coverage) = 2 and matches(dc:coverage[1], '\d+')">
          <xsl:element name="subject">
            <xsl:element name="cartographics">
              <xsl:element name="coordinates">
                <xsl:call-template name="coords_element">
                  <xsl:with-param name="lat"><xsl:value-of select="dc:coverage[1]"/></xsl:with-param>
                  <xsl:with-param name="long"><xsl:value-of select="dc:coverage[2]"/></xsl:with-param>
                </xsl:call-template>          
              </xsl:element>
            </xsl:element>
          </xsl:element>
        </xsl:when>
        <xsl:when test="count(dc:coverage) = 0"/>
        <xsl:otherwise>
          <xsl:apply-templates select="dc:coverage[1]" mode="esdn"/>
          <xsl:apply-templates select="dc:coverage[2]" mode="esdn"/>
          <xsl:variable name="coord_list" select="tokenize(normalize-space(dc:coverage[3]), ';')"/>
          <xsl:element name="subject">
            <xsl:element name="cartographics">
              <xsl:element name="coordinates">
                <xsl:call-template name="coords_element">
                  <xsl:with-param name="lat"><xsl:value-of select="$coord_list[1]"/></xsl:with-param>
                  <xsl:with-param name="long"><xsl:value-of select="$coord_list[2]"/></xsl:with-param>
                </xsl:call-template>          
              </xsl:element>
            </xsl:element>
          </xsl:element>
        </xsl:otherwise>
      </xsl:choose>
      
      <xsl:apply-templates select="dc:rights" mode="esdn"/>
      <xsl:apply-templates select="dc:subject" mode="nyh"/>

      <xsl:apply-templates select="dc:type" mode="esdn"/>
      
      <!-- hard code collection and ownership note -->
      
      <xsl:element name="relatedItem" namespace="http://www.loc.gov/mods/v3">
        <xsl:attribute name="type">host</xsl:attribute>
        <xsl:attribute name="displayLabel">Collection</xsl:attribute>
        <xsl:element name="titleInfo" namespace="http://www.loc.gov/mods/v3">
          <xsl:element name="title" namespace="http://www.loc.gov/mods/v3">Hudson River Valley Institute</xsl:element>
        </xsl:element>
      </xsl:element>
      
      <xsl:call-template name="intermediate-provider">
        <xsl:with-param name="council">Southeastern New York Library Resources Council</xsl:with-param>
      </xsl:call-template>
      <xsl:call-template name="owner-note">
        <xsl:with-param name="owner">Hudson River Valley Institute</xsl:with-param>
      </xsl:call-template>
      
      <xsl:apply-templates select="dc:relation" mode="esdn"/>
      
    </mods>
  </xsl:template>
  
  <!-- ESDN utility templates -->
  <xsl:include href="nyh_templates.xsl"/>
  <xsl:include href="esdn_templates.xsl"/>
  
  <!-- dublin core field templates -->
  <xsl:include href="oaidctomods_cdmbase.xsl"/>
  
  <!-- reference URL, thumbnail URL --> 
  <xsl:include href="oaidctomods_cdm6.5.xsl"/>
  
  <!-- collection-specific templates start here --> 
  
  <xsl:template match="dc:source" mode="hrvi">
    <xsl:variable name="source_list" select="tokenize(., ';')"/>
    <xsl:element name="physicalDescription" namespace="http://www.loc.gov/mods/v3">
      <xsl:element name="form" namespace="http://www.loc.gov/mods/v3"><xsl:value-of select="normalize-space($source_list[1])"/></xsl:element>
      <xsl:choose>
        <xsl:when test="count($source_list) > 1">
          <xsl:element name="extent" namespace="http://www.loc.gov/mods/v3"><xsl:value-of select="normalize-space($source_list[2])"/></xsl:element>
        </xsl:when>
        <xsl:otherwise/>
      </xsl:choose>
    </xsl:element>
  </xsl:template>

</xsl:stylesheet>

