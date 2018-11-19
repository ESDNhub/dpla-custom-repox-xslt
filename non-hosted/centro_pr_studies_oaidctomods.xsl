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
      <xsl:apply-templates select="dc:title[1]"/>

      <xsl:apply-templates select="dc:creator"/>
      <xsl:apply-templates select="dc:contributor"/>
      
      <physicalDescription>
        <xsl:apply-templates select="dc:format" mode="cps"/>
      </physicalDescription>
      
      <xsl:apply-templates select="dc:description[1]" mode="cps"/>
      
      <xsl:apply-templates select="dc:rights" mode="esdn"/>
      <xsl:apply-templates select="dc:coverage" mode="esdn"/>
      
      <xsl:element name="relatedItem">
        <xsl:element name="titleInfo">
          <xsl:element name="title">
            <xsl:value-of select="normalize-space(dc:title[last()])"/>
          </xsl:element>
        </xsl:element>
      </xsl:element>
      
      <xsl:if test="exists(dc:language)">
        <xsl:element name="language">
          <xsl:for-each select="tokenize(dc:language, ';')">
            <xsl:element name="languageTerm">
              <xsl:attribute name="type">code</xsl:attribute>
              <xsl:attribute name="authority">iso639-2b</xsl:attribute>
              <xsl:call-template name="iso6393-codes">
                <xsl:with-param name="lval"><xsl:value-of select="lower-case(normalize-space(.))"/>
                </xsl:with-param>
              </xsl:call-template>
            </xsl:element>
          </xsl:for-each>
        </xsl:element>
      </xsl:if>
      <xsl:apply-templates select="dc:identifier" mode="cps"/>      
      <xsl:apply-templates select="dc:subject"/>
      <xsl:apply-templates select="dc:type" mode="cps"/>
      <xsl:apply-templates select="dc:relation"/>

      <!-- hard code collection and ownership note -->
      
      <xsl:element name="relatedItem" namespace="http://www.loc.gov/mods/v3">
        <xsl:attribute name="type">host</xsl:attribute>
        <xsl:attribute name="displayLabel">Collection</xsl:attribute>
        <xsl:element name="titleInfo" namespace="http://www.loc.gov/mods/v3">
          <xsl:element name="title" namespace="http://www.loc.gov/mods/v3">Center for Puerto Rican Studies, Library and Archives Collections</xsl:element>
        </xsl:element>
      </xsl:element>

      <xsl:call-template name="owner-note">
        <xsl:with-param name="owner">Center for Puerto Rican Studies, Library and Archives</xsl:with-param>
      </xsl:call-template>
      <xsl:call-template name="intermediate-provider">
        <xsl:with-param name="council">Metropolitan New York Library Council</xsl:with-param>
      </xsl:call-template>
    </mods>
  </xsl:template>

  <!-- ESDN utility templates -->
  <xsl:include href="esdn_templates.xsl"/>

  <!-- dublin core field templates -->
  <xsl:include href="oaidctomods_cdmbase.xsl"/>

  <!-- reference URL, thumbnail URL -->
  <xsl:include href="oaidctomods_cdm6.5.xsl"/>
  
  <!-- reference URL, thumbnail URL -->
  <xsl:include href="iso639x.xsl"/>
  
  <!-- Collection specific templates -->
  <xsl:template match="dc:type" mode="cps">
    <xsl:for-each select="tokenize(normalize-space(.), ';')">
    <xsl:choose>
      <xsl:when test="contains(., 'doc')">
        <xsl:element name="typeOfResource" namespace="http://www.loc.gov/mods/v3"
          exclude-result-prefixes="#all">
          <xsl:text>text</xsl:text>
        </xsl:element>
      </xsl:when>
      <xsl:when test="contains(., 'photo')">
        <xsl:element name="typeOfResource" namespace="http://www.loc.gov/mods/v3"
          exclude-result-prefixes="#all">
          <xsl:text>still image</xsl:text>
        </xsl:element>
      </xsl:when>
      <xsl:when test="contains(., 'Realia')">
        <xsl:element name="typeOfResource" namespace="http://www.loc.gov/mods/v3"
          exclude-result-prefixes="#all">
          <xsl:text>three dimensional object</xsl:text>
        </xsl:element>
      </xsl:when>
    </xsl:choose>
    </xsl:for-each>
  </xsl:template>
  
  <!-- add link back, thumbnail, additional identifiers -->
  <xsl:template match="dc:identifier" mode="cps">
    <xsl:choose>
      <xsl:when test="contains(., 'index.php')">
        <xsl:element name="location" namespace="http://www.loc.gov/mods/v3">
          <xsl:element name="url" namespace="http://www.loc.gov/mods/v3">
            <xsl:attribute name="usage">primary display</xsl:attribute>
            <xsl:attribute name="access">object in context</xsl:attribute>
            <xsl:value-of select="normalize-space(.)"/>
          </xsl:element>
        </xsl:element>
      </xsl:when>
      <xsl:when test="contains(., '/ca/media')">
        <xsl:element name="location" namespace="http://www.loc.gov/mods/v3">
          <xsl:element name="url" namespace="http://www.loc.gov/mods/v3">
            <xsl:attribute name="access">preview</xsl:attribute>
            <xsl:value-of select="normalize-space(.)"/>
          </xsl:element>
        </xsl:element>
      </xsl:when>
      <xsl:when test="position()=1">
        <xsl:element name="identifier" namespace="http://www.loc.gov/mods/v3"><xsl:value-of select="normalize-space(.)"/></xsl:element>
      </xsl:when>
      <xsl:otherwise/>
    </xsl:choose>
  </xsl:template>
  
  <xsl:template match="dc:format" mode="cps">
    <xsl:variable name="format_val" select="normalize-space(.)"/>
    <xsl:choose>
      <xsl:when test="not(contains($format_val, '/'))">
        <xsl:element name="extent" namespace="http://www.loc.gov/mods/v3">
          <xsl:value-of select="$format_val"/>
        </xsl:element>
      </xsl:when>
      <xsl:when test="contains($format_val, '/')">
        <xsl:element name="internetMediaType" namespace="http://www.loc.gov/mods/v3">
          <xsl:value-of select="$format_val"/>
        </xsl:element>
      </xsl:when>
      <!-- there are instances where value is just a semo-colon, discard -->
      <xsl:when test="$format_val=';'"/>
    </xsl:choose>
  </xsl:template>
  
  <xsl:template match="dc:description" mode="cps">
    <xsl:for-each select="tokenize(normalize-space(.), ';')">
      <xsl:if test=".!=''">
        <xsl:variable name="cleanText">
          <xsl:call-template name="remove-html">
            <xsl:with-param name="text"><xsl:value-of select="."/></xsl:with-param>
          </xsl:call-template>
        </xsl:variable>
        <xsl:element name="note" namespace="http://www.loc.gov/mods/v3">
          <xsl:attribute name="type">content</xsl:attribute>
          <xsl:value-of select="$cleanText"/>
        </xsl:element>
      </xsl:if>
    </xsl:for-each>
  </xsl:template>

  <xsl:template name="remove-html">
    <xsl:param name="text"/>    
    <xsl:choose>
      <xsl:when test="contains($text, '&lt;')">
        <xsl:value-of select="substring-before($text, '&lt;')"/>
        <xsl:call-template name="remove-html">
          <xsl:with-param name="text" select="substring-after($text, '&gt;')"/>
        </xsl:call-template>
      </xsl:when>
      <xsl:otherwise>
        <xsl:value-of select="$text"/>
      </xsl:otherwise>
    </xsl:choose>    
  </xsl:template>
  
</xsl:stylesheet>
