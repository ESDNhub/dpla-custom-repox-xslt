<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
  xmlns:oai_dc="http://www.openarchives.org/OAI/2.0/oai_dc/"
  xmlns:dc="http://purl.org/dc/elements/1.1/" version="2.0" xmlns="http://www.loc.gov/mods/v3">
  <xsl:output omit-xml-declaration="yes" indent="yes"/>

  <xsl:template match="text() | @*"/>
  <xsl:template match="//oai_dc:dc">
    <mods xmlns="http://www.loc.gov/mods/v3" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
      xmlns:dcterms="http://purl.org/dc/terms/"
      xsi:schemaLocation="http://www.loc.gov/mods/v3 http://www.loc.gov/standards/mods/v3/mods-3-4.xsd"
      version="3.4">

      <xsl:apply-templates select="dc:title"/>
      <xsl:apply-templates select="dc:creator"/>
      <xsl:element name="originInfo" namespace="http://www.loc.gov/mods/v3">
        <!-- dc:publisher is duplicated in every record, go figure -->
        <xsl:apply-templates select="dc:publisher[1]"/>
        <xsl:apply-templates select="dc:date" mode="la_mama"/>
      </xsl:element>

      <xsl:element name="note" namespace="http://www.loc.gov/mods/v3">
        <xsl:attribute name="type">content</xsl:attribute>
        <xsl:for-each select="./dc:description">
          <xsl:value-of select="normalize-space(.)"/>
          <xsl:if test="position()!=last()">
            <xsl:text> </xsl:text>
          </xsl:if>
        </xsl:for-each>
      </xsl:element>
      
      <xsl:element name="physicalDescription" namespace="http://www.loc.gov/mods/v3">
        <xsl:element name="extent" namespace="http://www.loc.gov/mods/v3">
          <xsl:value-of select="concat(substring-before(dc:source[1], ' in'), 'x', substring-before(dc:source[2], ' in'), ' in.')"/>
        </xsl:element>
        <xsl:apply-templates select="dc:format"/>
      </xsl:element>
      <xsl:apply-templates select="dc:type" mode="esdn"/>
      <xsl:apply-templates select="dc:identifier" mode="la_mama"/>
      <xsl:apply-templates select="dc:language" mode="la_mama"/>
      <xsl:apply-templates select="dc:coverage"/>
      <xsl:apply-templates select="dc:rights" mode="esdn"/>
      <xsl:apply-templates select="dc:subject"/>
      
      <xsl:element name="genre" namespace="http://www.loc.gov/mods/v3">programs</xsl:element>
      <xsl:element name="genre" namespace="http://www.loc.gov/mods/v3">flyers</xsl:element>
      
      <!-- hard code collection and ownership note -->
      <!-- collection -->
      <xsl:element name="relatedItem" namespace="http://www.loc.gov/mods/v3">
        <xsl:attribute name="type">host</xsl:attribute>
        <xsl:attribute name="displayLabel">Collection</xsl:attribute>
        <xsl:element name="titleInfo" namespace="http://www.loc.gov/mods/v3">
          <xsl:element name="title" namespace="http://www.loc.gov/mods/v3">La MaMa Experimental Theater Club-Program Collection</xsl:element>
        </xsl:element>
      </xsl:element>

      <!-- ownership note -->
      <xsl:call-template name="owner-note">
        <xsl:with-param name="owner">La MaMa Experimental Theater Club</xsl:with-param>
      </xsl:call-template>
      
      <!-- council -->
      <xsl:call-template name="intermediate-provider">
        <xsl:with-param name="council">Metropolitan New York Library Council</xsl:with-param>
      </xsl:call-template>
    </mods>
  </xsl:template>

  <!-- ESDN utility templates -->
  <xsl:include href="esdn_templates.xsl"/>
  
  <!-- dublin core field templates -->
  <xsl:include href="oaidctomods_cdm6.5.xsl"/>
  
  <!-- reference URL, thumbnail URL -->
  <xsl:include href="oaidctomods_cdmbase.xsl"/>

  <!-- language codes -->
  <xsl:include href="iso639x.xsl"/>
  
  <!-- Collection specific templates -->
  <xsl:template match="dc:date" mode="la_mama">
    <!-- If there's a date range, pass it as a Cdm-style tokenized list -->
    <xsl:variable name="date_str" select="replace(., ' - ', ';')"/>
    <xsl:call-template name="date-to-mods">
      <xsl:with-param name="dateval"><xsl:value-of select="normalize-space($date_str)"/></xsl:with-param>
    </xsl:call-template>
  </xsl:template>
  
  <xsl:template match="dc:identifier" mode="la_mama">
    <xsl:choose>
      <!-- object url -->
      <xsl:when test="contains(., 'object_id')">
        <xsl:element name="location" namespace="http://www.loc.gov/mods/v3">
          <xsl:element name="url" namespace="http://www.loc.gov/mods/v3">
            <xsl:attribute name="usage">primary display</xsl:attribute>
            <xsl:attribute name="access">object in context</xsl:attribute>
            <xsl:value-of select="normalize-space(.)"/>
           </xsl:element>
        </xsl:element>
      </xsl:when>
      <!-- thumbnail -->
      <xsl:when test="contains(., '/media')">
        <xsl:element name="location" namespace="http://www.loc.gov/mods/v3">
          <xsl:element name="url">
            <xsl:attribute name="access">preview</xsl:attribute>
            <xsl:value-of select="normalize-space(.)"/>
          </xsl:element>
        </xsl:element>
      </xsl:when>
      <!-- discard id from Omeka -->
      <xsl:when test="contains(., 'waystation')"/>
      <!-- local identifier -->
      <xsl:otherwise>
        <xsl:element name="identifier" namespace="http://www.loc.gov/mods/v3">
          <xsl:attribute name="type">local</xsl:attribute>
          <xsl:value-of select="normalize-space(.)"/>
        </xsl:element>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>
  
  <xsl:template match="dc:language" mode="la_mama">
    <xsl:element name="language" namespace="http://www.loc.gov/mods/v3">
      <xsl:element name="languageTerm" namespace="http://www.loc.gov/mods/v3">
        <xsl:attribute name="type">code</xsl:attribute>
        <xsl:attribute name="authority">iso639-3</xsl:attribute>
        <xsl:call-template name="iso6393-codes">
          <xsl:with-param name="lval">
            <xsl:value-of select="normalize-space(lower-case(.))"/>
          </xsl:with-param>
        </xsl:call-template>
      </xsl:element>
    </xsl:element>
  </xsl:template>  

</xsl:stylesheet>
