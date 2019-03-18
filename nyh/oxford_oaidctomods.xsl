<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:oai_dc='http://www.openarchives.org/OAI/2.0/oai_dc/' xmlns:dc="http://purl.org/dc/elements/1.1/" version="2.0" xmlns="http://www.loc.gov/mods/v3">
  <xsl:output omit-xml-declaration="yes" indent="yes"/>
  
  <xsl:template match="text()|@*"/>
  <xsl:template match="//oai_dc:dc">
    <mods xmlns="http://www.loc.gov/mods/v3" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.loc.gov/mods/v3 http://www.loc.gov/standards/mods/v3/mods-3-4.xsd" version="3.4">      
      <xsl:apply-templates select="dc:title"/>      
      <xsl:apply-templates select="dc:creator"/>
      <xsl:apply-templates select="dc:contributor"/>      
        <xsl:element name="originInfo" namespace="http://www.loc.gov/mods/v3">
          <xsl:apply-templates select="dc:date" mode="esdn"/>
          <xsl:apply-templates select="dc:publisher[1]"/>
        </xsl:element>      
      <xsl:apply-templates select="dc:description"/>
      <xsl:apply-templates select="dc:format" mode="oxford"/>
      
      <!-- templates we override get a mode attribute with the setSpec of the collection -->
      <xsl:apply-templates select="dc:identifier" mode="esdn"/>
      <xsl:apply-templates select="dc:rights" mode="esdn"/>
      <xsl:apply-templates select="dc:subject" mode="nyh"/>
      <xsl:apply-templates select="dc:coverage" mode="nyh"/>
      <xsl:apply-templates select="dc:type" mode="esdn"/>
      
      <!-- hard code collection and ownership note -->
      
      <xsl:element name="relatedItem" namespace="http://www.loc.gov/mods/v3">
        <xsl:attribute name="type">host</xsl:attribute>
        <xsl:attribute name="displayLabel">Collection</xsl:attribute>
        <xsl:element name="titleInfo" namespace="http://www.loc.gov/mods/v3">
          <xsl:element name="title" namespace="http://www.loc.gov/mods/v3">Oxford Memorial Library</xsl:element>
        </xsl:element>
      </xsl:element>
      
      <xsl:call-template name="intermediate-provider">
        <xsl:with-param name="council">South Central Regional Library Council</xsl:with-param>
      </xsl:call-template><xsl:call-template name="owner-note"><xsl:with-param name="owner">Oxford Memorial Library</xsl:with-param></xsl:call-template>
     </mods>
  </xsl:template>
  
  <!-- ESDN utility templates -->
  <xsl:include href="nyh_templates.xsl"/>
  <xsl:include href="esdn_templates.xsl"/>
  <xsl:include href="iso639x.xsl"/>
  
  <!-- dublin core field templates -->
  <xsl:include href="oaidctomods_cdmbase.xsl"/>
  
  <!-- reference URL, thumbnail URL --> 
  <xsl:include href="oaidctomods_cdm6.5.xsl"/>
  
  <!-- collection-specific templates start here --> 

  <xsl:template match="dc:format" mode="oxford">
    <xsl:choose>
      <xsl:when test="not(contains(., 'image/jpeg'))">
        <xsl:element name="genre" namespace="http://www.loc.gov/mods/v3">
          <xsl:value-of select="tokenize(normalize-space(.), ';')[1]"/>
        </xsl:element>        
      </xsl:when>
      <xsl:otherwise/>
    </xsl:choose>
  </xsl:template>
  
</xsl:stylesheet>

