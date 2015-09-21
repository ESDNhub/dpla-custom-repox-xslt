<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:oai-pmh="http://www.openarchives.org/OAI/2.0/" xmlns:oai_dc='http://www.openarchives.org/OAI/2.0/oai_dc/' xmlns:dc="http://purl.org/dc/elements/1.1/" version="2.0" xmlns="http://www.loc.gov/mods/v3">
  <xsl:output omit-xml-declaration="yes" indent="yes"/>
  <xsl:template match="text()|@*"/>
  <xsl:template match="//oai_dc:dc">
    <mods xmlns="http://www.loc.gov/mods/v3" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.loc.gov/mods/v3 http://www.loc.gov/standards/mods/v3/mods-3-4.xsd" version="3.4">      
      
      <originInfo>
        <xsl:apply-templates select="dc:publisher"/>
        <xsl:apply-templates select="dc:date" mode="esdn"/>
      </originInfo>
      <xsl:apply-templates select="dc:description"/>
      <xsl:apply-templates select="dc:format"/>
      <xsl:element name="language" namespace="http://www.loc.gov/mods/v3">
        <xsl:element name="languageTerm">
          <xsl:attribute name="type">code</xsl:attribute>eng</xsl:element>
      </xsl:element>
      <xsl:element name="location" namespace="http://www.loc.gov/mods/v3">
        <xsl:element name="url">
          <xsl:attribute name="usage">primary display</xsl:attribute>
          <xsl:attribute name="access">object in context</xsl:attribute>
          <xsl:value-of select="normalize-space(dc:identifier[1])"/>
        </xsl:element>
        <xsl:element name="url">
          <xsl:attribute name="access">preview</xsl:attribute>
          <xsl:value-of select="normalize-space(dc:identifier[2])"/>
        </xsl:element>
      </xsl:element>
      <xsl:element name="physicalDescription">
        <xsl:apply-templates select="dc:source" mode="esdn">
          <xsl:with-param name="delimiter">;</xsl:with-param>
        </xsl:apply-templates>
      </xsl:element>
      <xsl:apply-templates select="dc:rights"/>
      <xsl:apply-templates select="dc:subject"/>
      <xsl:apply-templates select="dc:title"/>
      <xsl:apply-templates select="dc:type" mode="esdn"/>
      
    <!-- hard code ownership note -->
      <xsl:call-template name="owner-note">
        <xsl:with-param name="owner">Harrison Public Library</xsl:with-param>
      </xsl:call-template>

    </mods>
  </xsl:template>

  <!-- ESDN utility templates -->
  <xsl:include href="esdn_templates.xsl"/>
    
  <!-- dublin core field templates -->
  <xsl:include href="oaidctomods_base.xsl"/>
  
</xsl:stylesheet>

