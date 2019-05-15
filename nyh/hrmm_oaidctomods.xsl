<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
  xmlns:oai_dc="http://www.openarchives.org/OAI/2.0/oai_dc/"
  xmlns:dc="http://purl.org/dc/elements/1.1/" version="2.0" xmlns="http://www.loc.gov/mods/v3">
  <xsl:output omit-xml-declaration="yes" indent="yes"/>
  <xsl:template match="text()|@*"/>
  <xsl:template match="//oai_dc:dc">
    <mods xmlns="http://www.loc.gov/mods/v3" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
      xsi:schemaLocation="http://www.loc.gov/mods/v3 http://www.loc.gov/standards/mods/v3/mods-3-4.xsd"
      version="3.4">
      
      <xsl:apply-templates select="dc:title"/>
      <xsl:apply-templates select="dc:contributor"/>
      
      <!-- HRVH uses 'unknown' for dc:creator when well, unknown.-->
        <xsl:apply-templates select="dc:creator[not(contains(lower-case(text()), 'unknown'))]"/>
      
      <xsl:if test="dc:publisher != '' or dc:date != ''">
        <originInfo>
          <xsl:apply-templates select="dc:date[1][not(contains(lower-case(text()), 'unknown'))]" mode="esdn"/>
          <xsl:apply-templates select="dc:publisher[not(contains(lower-case(text()), 'unknown'))]"/>
        </originInfo>
      </xsl:if>
      
      <xsl:apply-templates select="dc:description"/>
      <xsl:apply-templates select="dc:identifier" mode="nyh_nolocal"/>
      <xsl:apply-templates select="dc:language" mode="esdn"/>
      <xsl:apply-templates select="dc:rights" mode="nyh"/>
      <xsl:apply-templates select="dc:subject" mode="nyh"/>
      
      <xsl:apply-templates select="dc:coverage"/>
      <xsl:apply-templates select="dc:type" mode="esdn"/>
      <xsl:if test="exists(dc:source) or exists(dc:format)">
        <xsl:element name="physicalDescription" namespace="http://www.loc.gov/mods/v3">
          <xsl:if test="count(dc:format)=2">
            <xsl:apply-templates select="dc:format[2]" mode="hrmm"/>
          </xsl:if>
          <xsl:apply-templates select="dc:source" mode="hrmm"/>
        </xsl:element>        
      </xsl:if>
      <xsl:apply-templates select="dc:format[1]" mode="nyh"/>
      
      <!-- hard code collection and ownership note -->
      
      <xsl:element name="relatedItem" namespace="http://www.loc.gov/mods/v3">
        <xsl:attribute name="type">host</xsl:attribute>
        <xsl:attribute name="displayLabel">Collection</xsl:attribute>
        <xsl:element name="titleInfo" namespace="http://www.loc.gov/mods/v3">
          <xsl:element name="title" namespace="http://www.loc.gov/mods/v3">Hudson River Maritime
            Museum</xsl:element>
        </xsl:element>
      </xsl:element>
      
      <xsl:call-template name="intermediate-provider">
        <xsl:with-param name="council">Southeastern New York Library Resources Council</xsl:with-param>
      </xsl:call-template>
      
      <xsl:call-template name="owner-note">
        <xsl:with-param name="owner">Hudson River Maritime Museum</xsl:with-param>
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
  
  <xsl:template match="dc:format" mode="hrmm">
    <xsl:for-each select="tokenize(., ';')">
      <xsl:if test="normalize-space(.)!=''">
        <xsl:element name="extent" namespace="http://www.loc.gov/mods/v3">
          <xsl:value-of select="normalize-space(.)"/>
        </xsl:element>
      </xsl:if>
    </xsl:for-each>
  </xsl:template>
  
  <xsl:template match="dc:source" mode="hrmm">
    <xsl:element name="form" namespace="http://www.loc.gov/mods/v3">
      <xsl:value-of select="normalize-space(.)"/>
    </xsl:element>
  </xsl:template>
  
</xsl:stylesheet>
