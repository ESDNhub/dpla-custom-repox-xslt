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
  <xsl:template match="text() | @*"/>
  <xsl:template match="//oai_dc:dc">
    <mods xmlns="http://www.loc.gov/mods/v3" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.loc.gov/mods/v3 http://www.loc.gov/standards/mods/v3/mods-3-4.xsd" version="3.4">      
      
      <xsl:apply-templates select="dc:title[1]"/>
      <xsl:apply-templates select="dc:creator"/>
      
      <xsl:if test="dc:date != ''">
        <originInfo>
          <xsl:apply-templates select="dc:date[lower-case(./text())!='unknown']"/>
        </originInfo>
      </xsl:if>
      
      <xsl:apply-templates select="dc:description"/>
      <xsl:apply-templates select="dc:identifier" mode="nysa"/>
      <xsl:if test="normalize-space(dc:language/text())!=''">
        <xsl:element name="language" namespace="http://www.loc.gov/mods/v3">
          <xsl:element name="languageTerm" namespace="http://www.loc.gov/mods/v3">
            <xsl:attribute name="type">code</xsl:attribute>
            <xsl:attribute name="authority">iso639-3</xsl:attribute>
            <xsl:call-template name="iso6393-codes">
              <xsl:with-param name="lval">
                <xsl:value-of select="dc:language"/>
              </xsl:with-param>
            </xsl:call-template>
          </xsl:element>
        </xsl:element>
      </xsl:if>
        <xsl:apply-templates select="dcterms:spatial" mode="nysa"/>
        <xsl:apply-templates select="dc:rights"/>
        <xsl:apply-templates select="dc:subject" mode="nysa"/>
        <xsl:apply-templates select="dc:type" mode="esdn"/>
      
      <!-- hard code ownership note -->
      
        <xsl:call-template name="owner-note">
          <xsl:with-param name="owner">New York State Archives</xsl:with-param>
        </xsl:call-template>

      <!-- collection info -->
      
      <xsl:element name="relatedItem" namespace="http://www.loc.gov/mods/v3">
        <xsl:attribute name="type">host</xsl:attribute>
        <xsl:attribute name="displayLabel">Collection</xsl:attribute>
        <xsl:element name="titleInfo" namespace="http://www.loc.gov/mods/v3">
          <xsl:element name="title" namespace="http://www.loc.gov/mods/v3">
            <xsl:value-of select="normalize-space(dc:title[2])"/>
          </xsl:element>
        </xsl:element>
      </xsl:element>
    </mods>
    
  </xsl:template>
  
  <!-- ESDN utility templates --> 
  <xsl:include href="esdn_templates.xsl"/>
  
  <!-- dublin core field templates -->
  <xsl:include href="oaidctomods_cdmbase.xsl"/>
  <xsl:include href="iso639x.xsl"/>

  <!-- collection-specific templates start here --> 

  <xsl:template match="dc:identifier" mode="nysa">
    <xsl:variable name="idvalue" select="normalize-space(.)"/>
    <xsl:choose>
      <xsl:when test="starts-with($idvalue, 'http')">
        <xsl:choose>
          <xsl:when test="ends-with($idvalue, '.jpg')">
            <location>
              <url access="preview"><xsl:value-of select="$idvalue"/></url>
            </location>
          </xsl:when>
          <xsl:otherwise>
            <location>
              <url usage="primary display" access="object in context">
                <xsl:value-of select="$idvalue"/>
              </url>
            </location>
            <!-- ref url-->
          </xsl:otherwise>
        </xsl:choose>
      </xsl:when>
      <xsl:otherwise>
        <identifier><xsl:value-of select="normalize-space(.)"/></identifier>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

  <xsl:template match="dcterms:spatial" mode="nysa">
    <xsl:for-each select="tokenize(., ';')">
      <xsl:if test="normalize-space(.) != ''">
        <xsl:if test="normalize-space(lower-case(.)) != 'unknown'">
          <xsl:element name="subject">
            <xsl:element name="geographic">
              <xsl:value-of select="normalize-space(.)"/>
            </xsl:element>
          </xsl:element>
        </xsl:if>
      </xsl:if>
    </xsl:for-each>
  </xsl:template>

  <xsl:template match="dc:subject" mode="nysa">
    <xsl:element name="subject" namespace="http://www.loc.gov/mods/v3">
      <xsl:attribute name="authority">lcsh</xsl:attribute>
      <xsl:attribute name="valueURI">
        <xsl:value-of
          select="concat('http://id.loc.gov/authorities/sh', substring-before(substring-after(., '/sh'), ']'))"/>
      </xsl:attribute>
      <xsl:element name="topic" namespace="http://www.loc.gov/mods/v3">
        <xsl:value-of select="normalize-space(substring-before(., '['))"/>
      </xsl:element>
    </xsl:element>

  </xsl:template>
</xsl:stylesheet>
