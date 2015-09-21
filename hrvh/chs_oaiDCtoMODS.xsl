<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:oai_dc='http://www.openarchives.org/OAI/2.0/oai_dc/' xmlns:dc="http://purl.org/dc/elements/1.1/" version="2.0" xmlns="http://www.loc.gov/mods/v3">
  <xsl:output omit-xml-declaration="yes" indent="yes"/>
  
  <xsl:template match="text()|@*"/>
  <xsl:template match="//oai_dc:dc">
    <mods xmlns="http://www.loc.gov/mods/v3" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.loc.gov/mods/v3 http://www.loc.gov/standards/mods/v3/mods-3-4.xsd" version="3.4">      
      <xsl:apply-templates select="dc:title"/>
      <xsl:apply-templates select="dc:contributor"/>
      <xsl:apply-templates select="dc:creator"/>
      
        <xsl:element name="originInfo">
          <xsl:apply-templates select="dc:date" mode="esdn"/>
          <xsl:apply-templates select="dc:publisher" mode="esdn"/>
        </xsl:element>
      
      <xsl:apply-templates select="dc:description"/>
      <xsl:apply-templates select="dc:format" mode="chs"/>
      <xsl:apply-templates select="dc:identifier" mode="esdn"/>
      <xsl:apply-templates select="dc:language"/>
      <xsl:apply-templates select="dc:coverage" mode="hrvh"/>
      <xsl:apply-templates select="dc:rights"/>
      <xsl:apply-templates select="dc:subject" mode="hrvh"/>


      <xsl:apply-templates select="dc:type" mode="esdn"/>
      <xsl:call-template name="intermediate-provider">
        <xsl:with-param name="council">Southeastern New York Library Resources Council</xsl:with-param>
      </xsl:call-template>
      <xsl:call-template name="owner-note">
        <xsl:with-param name="owner">Chester Historical Society</xsl:with-param>
      </xsl:call-template>
    </mods>
  </xsl:template>
  
  <!-- ESDN utility templates -->
  <xsl:include href="hrvh_templates.xsl"/>
<xsl:include href="esdn_templates.xsl"/>
  
  <!-- dublin core field templates -->
  <xsl:include href="oaidctomods_cdmbase.xsl"/>
  
  <!-- reference URL, thumbnail URL --> 
  <xsl:include href="oaidctomods_cdm6.5.xsl"/>
  
  <!-- collection-specific templates start here --> 

  <xsl:template match="dc:format" mode="chs">
    <xsl:choose>
      <xsl:when test="contains(., ';')">
        <xsl:variable name="elmlist" select="tokenize(., ';')"/>
        <xsl:element name="physicalDescription" namespace="http://www.loc.gov/mods/v3">
          <xsl:element name="form"><xsl:value-of select="normalize-space($elmlist[1])"/></xsl:element>
          <xsl:element name="extent"><xsl:value-of select="normalize-space($elmlist[2])"/></xsl:element>
        </xsl:element>
      </xsl:when>
      <xsl:otherwise/>
    </xsl:choose>
  </xsl:template>

</xsl:stylesheet>

