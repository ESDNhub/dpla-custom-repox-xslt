<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:oai-pmh="http://www.openarchives.org/OAI/2.0/" xmlns:oai_dc='http://www.openarchives.org/OAI/2.0/oai_dc/' xmlns:dc="http://purl.org/dc/elements/1.1/" version="2.0" xmlns="http://www.loc.gov/mods/v3">
  <xsl:output omit-xml-declaration="yes" indent="yes"/>
  <xsl:template match="text()|@*"/>
  <xsl:template match="//oai_dc:dc">
    <mods xmlns="http://www.loc.gov/mods/v3" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.loc.gov/mods/v3 http://www.loc.gov/standards/mods/v3/mods-3-4.xsd" version="3.4">      
      <xsl:apply-templates select="dc:title"/>
      
      <xsl:apply-templates select="dc:creator"/>
      <xsl:apply-templates select="dc:contributor"/>
      
      <xsl:if test="dc:publisher != '' or dc:date != ''">
        <originInfo>
          <xsl:apply-templates select="dc:date[lower-case(./text())!='undated']"/>
          <xsl:apply-templates select="dc:publisher[lower-case(./text())!='unknown']"/>
        </originInfo>
      </xsl:if>
      
      <xsl:apply-templates select="dc:description"/>
      
      <xsl:element name="physicalDescription">
        <xsl:apply-templates select="dc:type" mode="newschool"/>
        <xsl:apply-templates select="dc:format" mode="newschool"/>
      </xsl:element>
      
      <!-- preview and link back in separate dc:identifier elements -->
      
      <xsl:element name="location" namespace="http://www.loc.gov/mods/v3">
        <xsl:element name="url">
          <xsl:attribute name="usage">primary display</xsl:attribute>
          <xsl:attribute name="access">object in context</xsl:attribute>
          <xsl:value-of select="normalize-space(dc:identifier)"/>
        </xsl:element>
      </xsl:element>

      <xsl:apply-templates select="dc:subject"/>
      <xsl:apply-templates select="dc:language" mode="newschool"/>
      
      <!-- hard code collection and ownership note -->
      
      <xsl:element name="relatedItem" namespace="http://www.loc.gov/mods/v3">
        <xsl:attribute name="type">host</xsl:attribute>
        <xsl:attribute name="displayLabel">Collection</xsl:attribute>
        <xsl:element name="titleInfo" namespace="http://www.loc.gov/mods/v3">
          <xsl:element name="title" namespace="http://www.loc.gov/mods/v3">The New School Archives-Digital Collections</xsl:element>
        </xsl:element>
      </xsl:element>

      <xsl:call-template name="owner-note">
        <xsl:with-param name="owner">The New School Archives and Special Collections</xsl:with-param>
      </xsl:call-template>
    </mods>
  </xsl:template>
  
  <!-- Collection-specific templates -->
  
  <xsl:template match="dc:language" mode="newschool">
    <xsl:element name="language" namespace="http://www.loc.gov/mods/v3">
      <xsl:element name="languageTerm">
      <xsl:choose>
        <xsl:when test="normalize-space(lower-case(.))='en'">eng</xsl:when>
        <xsl:otherwise><xsl:value-of select="normalize-space(.)"/></xsl:otherwise>
      </xsl:choose>
      </xsl:element>
    </xsl:element>
  </xsl:template>
  
  <xsl:template match="dc:format" mode="newschool">
    <xsl:element name="internetMediaType" namespace="http://www.loc.gov/mods/v3">
      <xsl:value-of select="normalize-space(.)"/>
    </xsl:element>
  </xsl:template>
  
  <xsl:template match="dc:type" mode="newschool">
    <xsl:element name="form" namespace="http://www.loc.gov/mods/v3">
      <xsl:value-of select="normalize-space(.)"/>
    </xsl:element>
  </xsl:template>

  <!-- ESDN utility templates -->
  <xsl:include href="esdn_templates.xsl"/>
    
  <!-- dublin core field templates -->
  <xsl:include href="oaidctomods_base.xsl"/>
  
</xsl:stylesheet>

