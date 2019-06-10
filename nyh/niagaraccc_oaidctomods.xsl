<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
  xmlns:oai_dc="http://www.openarchives.org/OAI/2.0/oai_dc/"
  xmlns:dc="http://purl.org/dc/elements/1.1/" version="2.0" xmlns="http://www.loc.gov/mods/v3">
  <xsl:output omit-xml-declaration="yes" indent="yes"/>

  <xsl:template match="text() | @*"/>
  <xsl:template match="//oai_dc:dc[exists(./dc:rights)]">
    <mods xmlns="http://www.loc.gov/mods/v3" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
      xsi:schemaLocation="http://www.loc.gov/mods/v3 http://www.loc.gov/standards/mods/v3/mods-3-4.xsd"
      version="3.4">
      <xsl:apply-templates select="dc:title"/>
      <xsl:apply-templates select="dc:contributor[not(contains(lower-case(text()), 'unknown'))]"/>
      <xsl:apply-templates select="dc:creator[not(contains(lower-case(text()), 'unknown'))]"/>

      <xsl:element name="originInfo" namespace="http://www.loc.gov/mods/v3">
        <xsl:apply-templates select="dc:date" mode="niagaraccc"/>
        <xsl:apply-templates select="dc:publisher"/>
      </xsl:element>

      <xsl:apply-templates select="dc:description"/>

      <!-- templates we override get a mode attribute with the setSpec of the collection -->
      <xsl:apply-templates select="dc:identifier" mode="nyh_nolocal"/>

      <xsl:apply-templates select="dc:language"/>
      <xsl:apply-templates select="dc:rights" mode="nyh"/>

      <xsl:apply-templates select="dc:subject" mode="nyh"/>
      <xsl:apply-templates select="dc:format" mode="nyh"/>
      <xsl:element name="physicalDescription" namespace="http://www.loc.gov/mods/v3">
        <xsl:apply-templates select="dc:source" mode="esdn">
          <xsl:with-param name="delimiter">;</xsl:with-param>
        </xsl:apply-templates>        
      </xsl:element>
      
      <xsl:apply-templates select="dc:coverage" mode="esdn"/>
      <xsl:apply-templates select="dc:type" mode="esdn"/>

      <!-- hard code collection and ownership note -->

      <xsl:element name="relatedItem" namespace="http://www.loc.gov/mods/v3">
        <xsl:attribute name="type">host</xsl:attribute>
        <xsl:attribute name="displayLabel">Collection</xsl:attribute>
        <xsl:element name="titleInfo" namespace="http://www.loc.gov/mods/v3">
          <xsl:element name="title" namespace="http://www.loc.gov/mods/v3">Niagara County Community College</xsl:element>
        </xsl:element>
      </xsl:element>
      
      <xsl:call-template name="intermediate-provider">
        <xsl:with-param name="council">Western New York Library Resources Council</xsl:with-param>
      </xsl:call-template>
      <xsl:call-template name="owner-note">
        <xsl:with-param name="owner">Niagara County Community College</xsl:with-param>
      </xsl:call-template>
    </mods>
  </xsl:template>

  <!-- ESDN utility templates -->
  <xsl:include href="esdn_templates.xsl"/>

  <!-- HRVH utility templates -->
  <xsl:include href="nyh_templates.xsl"/>

  <!-- dublin core field templates -->
  <xsl:include href="oaidctomods_cdmbase.xsl"/>

  <!-- reference URL, thumbnail URL -->
  <xsl:include href="oaidctomods_cdm6.5.xsl"/>

  <!-- collection-specific templates start here -->
  
  <xsl:template match="dc:type" mode="niagaraccc">
    <xsl:for-each select="tokenize(., ';')">
      <xsl:if test="lower-case(normalize-space(.))='still image'">
        <xsl:element name="typeOfResource">
          <xsl:value-of select="normalize-space(lower-case(.))"/>
        </xsl:element>
      </xsl:if>
    </xsl:for-each>
  </xsl:template>
  
  <xsl:template match="dc:date" mode="niagaraccc">
    <xsl:variable name="date_string">
      <xsl:choose>
        <xsl:when test="matches(., '[0-9]{4}-[0-9]{4}')">
          <xsl:value-of select="concat(substring-before(., '-'), ';', substring-after(., '-'))"/>
        </xsl:when>
        <xsl:when test="matches(., '[0-9]{4}-[0-9]{2}')">
          <xsl:value-of select="substring-before(., '-')"/>
        </xsl:when>
        <xsl:otherwise>
          <xsl:value-of select="."/>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:variable>
    <xsl:call-template name="date-to-mods">
      <xsl:with-param name="dateval"><xsl:value-of select="$date_string"/></xsl:with-param>
    </xsl:call-template>
  </xsl:template>
  
</xsl:stylesheet>
