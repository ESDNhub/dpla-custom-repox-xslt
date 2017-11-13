<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:oai_dc='http://www.openarchives.org/OAI/2.0/oai_dc/' xmlns:dc="http://purl.org/dc/elements/1.1/" version="2.0" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns="http://www.loc.gov/mods/v3">
  <xsl:output omit-xml-declaration="yes" indent="yes"/>
  
  <xsl:template match="text()|@*"/>
  <xsl:template match="//oai_dc:dc">
    <mods xmlns="http://www.loc.gov/mods/v3" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.loc.gov/mods/v3 http://www.loc.gov/standards/mods/v3/mods-3-4.xsd" version="3.4">      
      <xsl:apply-templates select="dc:title"/>
      
      <!-- Check 'unknown' in dc:creator when well, unknown. Ignore it if present.-->
      <xsl:if test="lower-case(normalize-space(dc:creator)) != 'unknown'">
        <xsl:apply-templates select="dc:creator"/>
      </xsl:if>
      
      <xsl:if test="dc:date != ''">
        <originInfo>
          <xsl:if test="not(contains(lower-case(normalize-space(dc:date)), 'un'))">
            <xsl:apply-templates select="dc:date"/>
          </xsl:if>
        </originInfo>
      </xsl:if>
      
      <xsl:apply-templates select="dc:description"/>
      <xsl:apply-templates select="dc:language" mode="hobart"/>
      
      <!-- Storing format and extent info in dc:source. -->
      <!-- Any time we're wrapping at this level, check for a value, so that we don't
        output empty elements -->
      <xsl:if test="normalize-space(dc:source) != ''">
        <physicalDescription>
          <xsl:apply-templates select="dc:source" mode="esdn">
            <xsl:with-param name="delimiter" select="';'"/>
          </xsl:apply-templates>
        </physicalDescription>
      </xsl:if>
      
      <!-- templates we override get a mode attribute with the setSpec of the collection -->
      <xsl:apply-templates select="dc:identifier" mode="esdn"/>
      <xsl:apply-templates select="dc:rights" mode="hobart"/>
      <xsl:apply-templates select="dc:subject" mode="nyh"/>

      <xsl:apply-templates select="dc:coverage" mode="hobart"/>
      <xsl:apply-templates select="dc:type" mode="esdn"/>
      
      <!-- hard code collection and ownership note -->
      
      <xsl:element name="relatedItem" namespace="http://www.loc.gov/mods/v3">
        <xsl:attribute name="type">host</xsl:attribute>
        <xsl:attribute name="displayLabel">Collection</xsl:attribute>
        <xsl:element name="titleInfo" namespace="http://www.loc.gov/mods/v3">
          <xsl:element name="title" namespace="http://www.loc.gov/mods/v3">Hobart and William Smith Colleges</xsl:element>
        </xsl:element>
      </xsl:element>

      <xsl:call-template name="intermediate-provider"><xsl:with-param name="council">Rochester Regional Library Council</xsl:with-param></xsl:call-template><xsl:call-template name="owner-note">
        <xsl:with-param name="owner">Hobart and William Smith Colleges. Warren Hunting Smith Library</xsl:with-param>
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
  
<xsl:template match="dc:coverage" mode="hobart">
  <xsl:variable name="coveragevalue" select="normalize-space(.)"/>
  <xsl:element name="subject">
    <xsl:element name="topic">
      <!-- strip off the trailing semi-colon. -->
      <xsl:variable name="list-of-one" select="tokenize(., ';')"/>
      <xsl:value-of select="$list-of-one[1]"/>
    </xsl:element>
  </xsl:element>
</xsl:template>
  
  <xsl:template match="dc:language" mode="hobart">
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
  
  <xsl:template match="dc:rights" mode="hobart">
    <xsl:element name="accessCondition">
      <xsl:attribute name="type">use and reproduction</xsl:attribute>
      <xsl:attribute name="href" namespace="http://www.w3.org/1999/xlink"><xsl:value-of select="."/></xsl:attribute>
      Attribution-NonCommercial-NoDerivs 3.0 United States (CC BY-NC-ND 3.0 US)
    </xsl:element>
  </xsl:template>

</xsl:stylesheet>

