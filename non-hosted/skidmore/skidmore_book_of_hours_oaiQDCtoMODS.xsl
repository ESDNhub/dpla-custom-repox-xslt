<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
  xmlns:oai_dc='http://www.openarchives.org/OAI/2.0/oai_dc/'
  xmlns:dc="http://purl.org/dc/elements/1.1/"
  xmlns:xs="http://www.w3.org/2001/XMLSchema"
  xmlns:oai-pmh="http://www.openarchives.org/OAI/2.0/"
  xmlns:mods="http://www.loc.gov/mods/v3"
  xmlns:oai_qdc="http://worldcat.org/xmlschemas/qdc-1.0/"
  xmlns:dcterms="http://purl.org/dc/terms/"
  xsi:schemaLocation="http://worldcat.org/xmlschemas/qdc-1.0/
  http://worldcat.org/xmlschemas/qdc/1.0/qdc-1.0.xsd
  http://purl.org/net/oclcterms
  http://worldcat.org/xmlschemas/oclcterms/1.4/oclcterms-1.4.xsd"
  exclude-result-prefixes="xs"
  version="2.0"
  xmlns="http://www.loc.gov/mods/v3">
  <xsl:output omit-xml-declaration="yes" indent="yes"/>
  
  <xsl:template match="text()|@*"/>
  <xsl:template match="//oai_qdc:qualifieddc">
    <mods xmlns="http://www.loc.gov/mods/v3" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.loc.gov/mods/v3 http://www.loc.gov/standards/mods/v3/mods-3-4.xsd" version="3.4">      
      <xsl:apply-templates select="dc:title"/>  
      <xsl:apply-templates select="dcterms:alternative" mode="skidmore"/>
      <xsl:apply-templates select="dc:creator"/>
      <xsl:apply-templates select="dc:contributor"/>
      
      <xsl:if test="dc:publisher != '' or dc:date != ''">
        <originInfo>
          <xsl:apply-templates select="dc:date[lower-case(./text())!='unknown']" mode="esdn" />
          <xsl:apply-templates select="dc:publisher[lower-case(./text())!='unknown']"/>
        </originInfo>
      </xsl:if>
      
      <xsl:if test="dc:source != ''">
        <physicalDescription>
          <xsl:apply-templates select="dc:source" mode="skidmore"/>
        </physicalDescription>
      </xsl:if>
      
      <xsl:apply-templates select="dcterms:abstract" mode="skidmore"/>
      <xsl:apply-templates select="dc:description"/>   
      <xsl:apply-templates select="dc:identifier" mode="esdn"/>
      <xsl:apply-templates select="dc:language"/>
      <xsl:apply-templates select="dc:rights"/>
      <xsl:apply-templates select="dc:subject"/>

      <xsl:apply-templates select="dcterms:spatial" mode="skidmore"/>
      <xsl:apply-templates select="dc:type" mode="esdn"/>
      
      <!-- hard code collection and ownership note -->
        
        <xsl:element name="relatedItem" namespace="http://www.loc.gov/mods/v3">
          <xsl:attribute name="type">host</xsl:attribute>
          <xsl:attribute name="displayLabel">Collection</xsl:attribute>
          <xsl:element name="titleInfo" namespace="http://www.loc.gov/mods/v3">
            <xsl:element name="title" namespace="http://www.loc.gov/mods/v3">Skidmore College-Book of Hours</xsl:element>
          </xsl:element>
        </xsl:element>
      
      <xsl:call-template name="owner-note"><xsl:with-param name="owner">Skidmore College</xsl:with-param></xsl:call-template>
      <xsl:call-template name="intermediate-provider">
        <xsl:with-param name="council">Capital District Library Council</xsl:with-param>
      </xsl:call-template>
     </mods>
  </xsl:template>
  
  <!-- ESDN utility templates -->
  <xsl:include href="esdn_templates.xsl"/>
  
  <!-- dublin core field templates -->
  <xsl:include href="oaidctomods_cdmbase.xsl"/>
  
  <!-- reference URL, thumbnail URL --> 
  <xsl:include href="oaidctomods_cdm6.5.xsl"/>
  
  <!-- collection-specific templates start here --> 
  
  <xsl:template match="dcterms:abstract" mode="skidmore">
    <note type="content"><xsl:value-of select="normalize-space(.)"/></note>
  </xsl:template>
  
  <xsl:template match="dcterms:alternative" mode="skidmore">
    <titleInfo type="alternative">
      <title><xsl:value-of select="normalize-space(.)"/></title>
    </titleInfo>
  </xsl:template>

  <xsl:template match="dc:source" mode="skidmore">
      <extent><xsl:value-of select="normalize-space(.)"/></extent>
  </xsl:template>

  <xsl:template match="dcterms:spatial" mode="skidmore">
    <xsl:for-each select="tokenize(., ';')">
      <xsl:if test="normalize-space(.)!=''">
        <xsl:if test="normalize-space(lower-case(.))!='unknown'">
        <xsl:element name="subject">
          <xsl:element name="geographic"><xsl:value-of select="normalize-space(.)"/></xsl:element>
        </xsl:element>
        </xsl:if>
      </xsl:if>
    </xsl:for-each>
</xsl:template>
  
</xsl:stylesheet>

