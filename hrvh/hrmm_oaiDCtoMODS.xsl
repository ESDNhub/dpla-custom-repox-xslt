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
      <xsl:if test="lower-case(normalize-space(dc:creator)) != 'unknown'">
        <xsl:apply-templates select="dc:creator"/>
      </xsl:if>
      
      <xsl:if test="dc:publisher != '' or dc:date != ''">
        <originInfo>
          <xsl:apply-templates select="dc:date[1][lower-case(./text())!='unknown']" mode="esdn"/>
          <xsl:apply-templates select="dc:publisher[lower-case(./text())!='unknown']"/>
        </originInfo>
      </xsl:if>
      
      <xsl:apply-templates select="dc:description"/>
      <xsl:apply-templates select="dc:identifier" mode="esdn"/>
      <xsl:apply-templates select="dc:language" mode="esdn"/>
      <xsl:apply-templates select="dc:rights"/>
      <xsl:apply-templates select="dc:subject" mode="hrvh"/>
      <xsl:apply-templates select="dc:format[1]" mode="hrmm"/>
      
      <xsl:element name="physicalDescription" namespace="http://www.loc.gov/mods/v3">
        <xsl:apply-templates select="dc:format[2]" mode="hrmm"/>
        <xsl:apply-templates select="dc:format[3]" mode="hrmm"/>
      </xsl:element>
      
      <xsl:apply-templates select="dc:coverage"/>
      <xsl:apply-templates select="dc:type" mode="esdn"/>
      
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
  
  <xsl:include href="hrvh_templates.xsl"/>
  <xsl:include href="esdn_templates.xsl"/>
  
  <!-- dublin core field templates -->
  
  <xsl:include href="oaidctomods_cdmbase.xsl"/>
  
  <!-- reference URL, thumbnail URL -->
  
  <xsl:include href="oaidctomods_cdm6.5.xsl"/>
  
  <!-- collection-specific templates start here -->
  
  <!-- grab genre, form, extent from multiple dc:format fields in record -->
  
  <xsl:template match="dc:format[1]" mode="hrmm">
    <xsl:variable name="formvalue" select="normalize-space(.)"/>
    <xsl:for-each select="tokenize($formvalue, ';')">
      <xsl:if test="normalize-space(.) != ''">
        <xsl:element name="genre">
          <xsl:attribute name="authority">aat</xsl:attribute>
          <xsl:value-of select="normalize-space(lower-case(.))"/>
        </xsl:element>
      </xsl:if>
    </xsl:for-each>
  </xsl:template>
  
  <xsl:template match="dc:format[2]" mode="hrmm">
    <xsl:for-each select=".">
      <xsl:variable name="sourcevalue" select="."/>
      <xsl:if test="normalize-space($sourcevalue) != ''">
        <form>
          <xsl:value-of select="$sourcevalue"/>
        </form>
      </xsl:if>
    </xsl:for-each>
  </xsl:template>
  
  <xsl:template match="dc:format[3]" mode="hrmm">
    <xsl:for-each select=".">
      <xsl:variable name="sourcevalue" select="."/>
      <xsl:if test="normalize-space($sourcevalue) != ''">
        <extent>
          <xsl:value-of select="$sourcevalue"/>
        </extent>
      </xsl:if>
    </xsl:for-each>
  </xsl:template>
  
</xsl:stylesheet>
