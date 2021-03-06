<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:oai_dc='http://www.openarchives.org/OAI/2.0/oai_dc/' xmlns:dc="http://purl.org/dc/elements/1.1/" version="2.0" xmlns="http://www.loc.gov/mods/v3">
  <xsl:output omit-xml-declaration="yes" indent="yes"/>
  <xsl:template match="text()|@*"/>
  <xsl:template match="//oai_dc:dc">
    
    <mods xmlns="http://www.loc.gov/mods/v3" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.loc.gov/mods/v3 http://www.loc.gov/standards/mods/v3/mods-3-4.xsd" version="3.4">      
      
      <xsl:apply-templates select="dc:title"/>
      
      <xsl:apply-templates select="dc:contributor"/>
      
      <xsl:apply-templates select="dc:creator"/>
      
      <originInfo>
          <xsl:apply-templates select="dc:date[1]" mode="esdn"/>
          <xsl:apply-templates select="dc:publisher"/>
      </originInfo>
      
      <xsl:apply-templates select="dc:description"/>
      
      <!-- Any time we're wrapping at this level, check for a value, so that we don't
        output empty elements -->
      
      <xsl:if test="normalize-space(dc:source) != ''">
        <physicalDescription>
          <xsl:apply-templates select="dc:source" mode="rit">
            <xsl:with-param name="delimiter">;</xsl:with-param>
          </xsl:apply-templates>
        </physicalDescription>
      </xsl:if>
      
      <!-- templates we override get a mode attribute with the setSpec of the collection -->
      <xsl:apply-templates select="dc:identifier" mode="esdn"/>
      <xsl:apply-templates select="dc:language"/>
      <xsl:apply-templates select="dc:rights" mode="nyh"/>    
      <xsl:apply-templates select="dc:subject" mode="nyh"/>
      <xsl:apply-templates select="dc:type" mode="esdn"/>
      <xsl:apply-templates select="dc:coverage" mode="nyh"/>
      
      <!-- hard code collection and ownership note -->
      
      <xsl:element name="relatedItem" namespace="http://www.loc.gov/mods/v3">
        <xsl:attribute name="type">host</xsl:attribute>
        <xsl:attribute name="displayLabel">Collection</xsl:attribute>
        <xsl:element name="titleInfo" namespace="http://www.loc.gov/mods/v3">
          <xsl:element name="title" namespace="http://www.loc.gov/mods/v3">RIT LIbraries - Cary Graphic Arts Collection</xsl:element>
        </xsl:element>
      </xsl:element>
      
      <xsl:call-template name="intermediate-provider"><xsl:with-param name="council">Rochester Regional Library Council</xsl:with-param></xsl:call-template>
      <xsl:call-template name="owner-note"><xsl:with-param name="owner">RIT LIbraries - Cary Graphic Arts Collection</xsl:with-param></xsl:call-template> <!-- owning institution -->
    <xsl:apply-templates select="dc:relation" mode="esdn"/></mods>
  </xsl:template>
  
<!-- institution-specific templates -->
  <xsl:template match="dc:source" mode="rit">
    <xsl:param name="delimiter"/>
    <xsl:variable name="delim_list" select="tokenize(., $delimiter)"/>
    <xsl:element name="form" namespace="http://www.loc.gov/mods/v3">
      <xsl:value-of select="normalize-space($delim_list[1])"/>
    </xsl:element>
  </xsl:template>
  <!-- ESDN utility templates --> 
  <xsl:include href="nyh_templates.xsl"/>
<xsl:include href="esdn_templates.xsl"/>
  
  <!-- dublin core field templates -->
  <xsl:include href="oaidctomods_cdmbase.xsl"/>
  
  <!-- reference URL, thumbnail URL --> 
  <xsl:include href="oaidctomods_cdm6.5.xsl"/>
  
  <!-- collection-specific templates -->
  
</xsl:stylesheet>
