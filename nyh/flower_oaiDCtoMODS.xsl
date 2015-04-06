<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:oai_dc='http://www.openarchives.org/OAI/2.0/oai_dc/' xmlns:dc="http://purl.org/dc/elements/1.1/" version="2.0" xmlns="http://www.loc.gov/mods/v3">
  <xsl:output omit-xml-declaration="yes" indent="yes"/>
  
  <xsl:template match="text()|@*"/>
  <xsl:template match="//oai_dc:dc">
    <mods xmlns="http://www.loc.gov/mods/v3" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.loc.gov/mods/v3 http://www.loc.gov/standards/mods/v3/mods-3-4.xsd" version="3.4">      
      <xsl:apply-templates select="dc:title"/>
      
      <xsl:if test="normalize-space(dc:date) != '' or normalize-space(dc:publisher) != ''">      
        <originInfo>
          <!-- Check for 'unknown' in dc:date. Ignore it if present.-->
          <xsl:if test="lower-case(normalize-space(dc:date)) != 'unknown'">
            <xsl:apply-templates select="dc:date" mode="esdn"/>
          </xsl:if>
          <xsl:apply-templates select="dc:publisher"/>
        </originInfo>
      </xsl:if>
      <xsl:apply-templates select="dc:description"/>

      <!-- templates we override get a mode attribute with the setSpec of the collection -->
      <xsl:apply-templates select="dc:identifier" mode="esdn"/>
      <xsl:apply-templates select="dc:rights"/>
      <xsl:apply-templates select="dc:subject" mode="nyh"/>
      <xsl:apply-templates select="dc:coverage" mode="esdn"/>
      <xsl:apply-templates select="dc:type" mode="flower"/>
      <xsl:call-template name="owner-note">
        <xsl:with-param name="owner">Watertown Flower Memorial Library</xsl:with-param>
      </xsl:call-template>
    <xsl:apply-templates select="dc:relation"/></mods>
  </xsl:template>
  
  <!-- ESDN utility templates -->
  <xsl:include href="nyh_templates.xsl"/>
<xsl:include href="esdn_templates.xsl"/>
  
  <!-- dublin core field templates -->
  <xsl:include href="oaidctomods_cdmbase.xsl"/>
  
  <!-- reference URL, thumbnail URL --> 
  <xsl:include href="oaidctomods_cdm6.5.xsl"/>
  
  <!-- collection-specific templates start here -->
  <xsl:template match="dc:type" mode="flower">
    <xsl:variable name="typelist" select="tokenize(., ';')"/>
    <xsl:element name="typeOfResource">
      <xsl:value-of select="$typelist[1]"/>
    </xsl:element>
  </xsl:template>
</xsl:stylesheet>


