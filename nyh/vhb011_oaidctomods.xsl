<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
  xmlns:oai_dc='http://www.openarchives.org/OAI/2.0/oai_dc/'
  xmlns:dc="http://purl.org/dc/elements/1.1/"
  xmlns:xs="http://www.w3.org/2001/XMLSchema"
  xmlns:oai-pmh="http://www.openarchives.org/OAI/2.0/"
  xmlns:mods="http://www.loc.gov/mods/v3"
  exclude-result-prefixes="xs"
  
  version="2.0"
  xmlns="http://www.loc.gov/mods/v3">
  <xsl:output omit-xml-declaration="yes" indent="yes"/>
  
  <xsl:template match="/">
    <xsl:apply-templates select="//oai_dc:dc"/>
  </xsl:template>
  
  <xsl:template match="text()|@*"/>
  <xsl:template match="oai_dc:dc">
    <mods xmlns="http://www.loc.gov/mods/v3" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.loc.gov/mods/v3 http://www.loc.gov/standards/mods/v3/mods-3-4.xsd" version="3.4">
      <xsl:apply-templates select="dc:title"/>
      
      <xsl:if test="normalize-space(dc:date) != ''">
        <originInfo>
          <xsl:apply-templates select="dc:date" mode="esdn"/>
        </originInfo>
      </xsl:if>
      
      <xsl:apply-templates select="dc:description"/>
      <!-- templates we override get a mode attribute with the setSpec of the collection -->
      <xsl:apply-templates select="dc:identifier" mode="esdn"/>
      <xsl:apply-templates select="dc:relation"/>
      <xsl:apply-templates select="dc:rights"/>
      <xsl:apply-templates select="dc:subject" mode="nyh"/>
      <xsl:apply-templates select="dc:language" mode="buffaloerie"/>


      <xsl:apply-templates select="dc:coverage" mode="nyh"/>
      <xsl:apply-templates select="dc:type" mode="esdn"/>
      <!-- hard code ownership note -->
      <xsl:call-template name="intermediate-provider"><xsl:with-param name="council">Western New York Library Resources Council</xsl:with-param></xsl:call-template><xsl:call-template name="owner-note">
        <xsl:with-param name="owner">Buffalo &amp; Erie County Public Library</xsl:with-param>
      </xsl:call-template>
     <xsl:apply-templates select="dc:relation"/></mods>
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
  
  <xsl:template match="dc:language" mode="buffaloerie">
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

