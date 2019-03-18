<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:oai_dc='http://www.openarchives.org/OAI/2.0/oai_dc/' xmlns:dc="http://purl.org/dc/elements/1.1/" version="2.0" xmlns="http://www.loc.gov/mods/v3">
  <xsl:output omit-xml-declaration="yes" indent="yes"/>
  
  <xsl:template match="text()|@*"/>
  <xsl:template match="//oai_dc:dc">
    <mods xmlns="http://www.loc.gov/mods/v3" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.loc.gov/mods/v3 http://www.loc.gov/standards/mods/v3/mods-3-4.xsd" version="3.4">      
      <xsl:apply-templates select="dc:title"/>
      
      <!-- hartwell uses 'unknown' for dc:creator when well, unknown. Ignore it if present.-->
      <xsl:if test="lower-case(normalize-space(dc:creator)) != 'unknown'">
        <xsl:apply-templates select="dc:creator"/>
      </xsl:if>
      <xsl:apply-templates select="dc:contributor"/>
      
      <xsl:if test="dc:publisher != '' or dc:date != ''">
        <originInfo>
          <xsl:if test="not(starts-with(dc:date, '999'))">
            <xsl:apply-templates select="dc:date" mode="esdn"/>
          </xsl:if>
          <xsl:if test="lower-case(normalize-space(dc:publisher[1])) != 'unknown'">
            <xsl:apply-templates select="dc:publisher[1]"/>
          </xsl:if>
        </originInfo>
      </xsl:if>
      
      <xsl:apply-templates select="dc:description"/>
      
      <xsl:if test="exists(dc:language)">
        <xsl:element name="language" namespace="http://www.loc.gov/mods/v3">
          <xsl:element name="languageTerm" namespace="http://www.loc.gov/mods/v3">
            <xsl:attribute name="type">code</xsl:attribute>
            <xsl:attribute name="authority">iso639-3</xsl:attribute>
            <xsl:call-template name="iso6393-codes">
              <xsl:with-param name="lval"><xsl:value-of select="replace(dc:language, ';', '')"/></xsl:with-param>
            </xsl:call-template>
          </xsl:element>
        </xsl:element>       
      </xsl:if>
      
        <xsl:element name="physicalDescription" namespace="http://www.loc.gov/mods/v3">
          <xsl:apply-templates select="dc:source" mode="hartwick"/>
          <xsl:apply-templates select="dc:format" mode="hartwick"/>
        </xsl:element>
      
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
          <xsl:element name="title" namespace="http://www.loc.gov/mods/v3">Hartwick College</xsl:element>
        </xsl:element>
      </xsl:element>
      
      <xsl:call-template name="intermediate-provider">
        <xsl:with-param name="council">South Central Regional Library Council</xsl:with-param>
      </xsl:call-template><xsl:call-template name="owner-note"><xsl:with-param name="owner">Hartwick College</xsl:with-param></xsl:call-template>
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
  
  <xsl:template match="dc:source" mode="hartwick">
    <xsl:element name="form" namespace="http://www.loc.gov/mods/v3">
      <xsl:value-of select="tokenize(normalize-space(.), ';')[1]"/>
    </xsl:element>
  </xsl:template>
  
  <xsl:template match="dc:format" mode="hartwick">
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

