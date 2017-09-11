<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:oai-pmh="http://www.openarchives.org/OAI/2.0/" xmlns:oai_dc='http://www.openarchives.org/OAI/2.0/oai_dc/' xmlns:dc="http://purl.org/dc/elements/1.1/" version="2.0" xmlns="http://www.loc.gov/mods/v3">
  <xsl:output omit-xml-declaration="yes" indent="yes"/>
  <xsl:template match="text()|@*"/>
  <xsl:template match="/">
    <xsl:apply-templates select="//oai_dc:dc[not(contains(dc:source[2]/node(), 'Theses'))]"/>
  </xsl:template>
  
  <xsl:template match="//oai_dc:dc">
    <mods xmlns="http://www.loc.gov/mods/v3" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.loc.gov/mods/v3 http://www.loc.gov/standards/mods/v3/mods-3-4.xsd" version="3.4">      
      <xsl:apply-templates select="dc:title"/>
      
      <xsl:apply-templates select="dc:creator"/>
      <xsl:apply-templates select="dc:contributor"/>
      
      <xsl:if test="dc:publisher != '' or dc:date != ''">
        <originInfo>
          <xsl:apply-templates select="dc:date"/>
          <xsl:apply-templates select="dc:publisher"/>
        </originInfo>
      </xsl:if>
      
      <xsl:apply-templates select="dc:description"/>
      
      <xsl:element name="physicalDescription">
        <xsl:apply-templates select="dc:type" mode="newschool"/>
        <xsl:apply-templates select="dc:format" mode="newschool"/>
      </xsl:element>

      <xsl:apply-templates select="dc:subject"/>
      
      <xsl:if test="dc:language != ''">
        <xsl:apply-templates select="dc:language" mode="newschool"/>
      </xsl:if>
      
      <xsl:apply-templates select="dc:identifier" mode="newschool"/>
      <xsl:apply-templates select="dc:rights"/>
      
      <!-- map collection title and collection description -->
      
      <xsl:apply-templates select="dc:source[lower-case(./text())!='the new school archives and special collections']" mode="newschool"/>
      <xsl:apply-templates select="dc:relation" mode="newschool"/>
      
      <!-- hard code ownership note -->

      <xsl:call-template name="owner-note">
        <xsl:with-param name="owner">The New School Archives and Special Collections</xsl:with-param>
      </xsl:call-template>
      <xsl:call-template name="intermediate-provider">
        <xsl:with-param name="council">Metropolitan New York Library Council</xsl:with-param>
      </xsl:call-template>
      
      <!-- parse type based on value of format -->
      
      <xsl:call-template name="new-school-type">
        <xsl:with-param name="type">
          <xsl:choose>
            <xsl:when test="contains(lower-case(dc:format), 'application/pdf')">text</xsl:when>
            <xsl:when test="contains(lower-case(dc:format), 'audio/mpeg')">sound recording</xsl:when>
            <xsl:when test="contains(lower-case(dc:format), 'image/jpeg')">still image</xsl:when>
            <xsl:when test="contains(lower-case(dc:format), 'image/png')">still image</xsl:when>
            <xsl:when test="contains(lower-case(dc:format), 'image/tiff')">still image</xsl:when>
            <xsl:when test="contains(lower-case(dc:format), 'video/mp4')">moving image</xsl:when>
            <xsl:otherwise>still image</xsl:otherwise>
          </xsl:choose>
        </xsl:with-param>
      </xsl:call-template>
      
    </mods>
  </xsl:template>
  
  <!-- Collection-specific templates -->
  
  <xsl:template match="dc:source" mode="newschool">
  <xsl:element name="relatedItem" namespace="http://www.loc.gov/mods/v3">
    <xsl:attribute name="type">host</xsl:attribute>
    <xsl:attribute name="displayLabel">Collection</xsl:attribute>
    <xsl:element name="titleInfo" namespace="http://www.loc.gov/mods/v3">
      <xsl:element name="title" namespace="http://www.loc.gov/mods/v3"><xsl:value-of select="normalize-space(.)"/></xsl:element>
    </xsl:element>
  </xsl:element>
  </xsl:template>
  
  <xsl:template match="dc:relation" mode="newschool">
    <xsl:element name="relatedItem" namespace="http://www.loc.gov/mods/v3">
      <xsl:attribute name="type">host</xsl:attribute>
      <xsl:attribute name="displayLabel">Collection</xsl:attribute>
        <xsl:element name="abstract" namespace="http://www.loc.gov/mods/v3"><xsl:value-of select="normalize-space(.)"/></xsl:element>  
    </xsl:element>
  </xsl:template>
  
  <xsl:template match="dc:language" mode="newschool">
    <xsl:element name="language" namespace="http://www.loc.gov/mods/v3">
      <xsl:element name="languageTerm">
      <xsl:choose>
        <xsl:when test="normalize-space(lower-case(.))='en'">eng</xsl:when>
        <xsl:when test="normalize-space(lower-case(.))='english'">eng</xsl:when>
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
  
  <xsl:template match="dc:identifier" mode="newschool">
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
      <xsl:otherwise/>
    </xsl:choose>
  </xsl:template>

  <xsl:template name="new-school-type">
    <xsl:param name="type"/>
    <xsl:element name="typeOfResource">
      <xsl:value-of select="$type"/>
    </xsl:element>
  </xsl:template>
  
  <!-- ESDN utility templates -->
  <xsl:include href="esdn_templates.xsl"/>
  
  <!-- dublin core field templates -->
  <xsl:include href="oaidctomods_base.xsl"/>
  
</xsl:stylesheet>



