<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
  xmlns:oai_dc="http://www.openarchives.org/OAI/2.0/oai_dc/"
  xmlns:dc="http://purl.org/dc/elements/1.1/" version="2.0" xmlns="http://www.loc.gov/mods/v3">
  <xsl:output omit-xml-declaration="yes" indent="yes"/>

  <xsl:template match="text() | @*"/>
  <xsl:template match="/">
    <xsl:apply-templates select="//oai_dc:dc[not(contains(dc:relation/node(), 'NYSHA Manuscript Finding Aids'))]"/>
  </xsl:template>
  
  <xsl:template match="//oai_dc:dc">
      <mods xmlns="http://www.loc.gov/mods/v3" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
        xsi:schemaLocation="http://www.loc.gov/mods/v3 http://www.loc.gov/standards/mods/v3/mods-3-4.xsd"
        version="3.4">
        <xsl:apply-templates select="dc:title"/>

        <xsl:apply-templates select="dc:contributor"/>
        <xsl:apply-templates select="dc:creator[lower-case(./text()) != 'unknown']"/>

        <xsl:if test="dc:publisher != '' or dc:date != ''">
          <originInfo>
            <xsl:apply-templates select="dc:date[lower-case(./text()) != '9999']" mode="esdn"/>
            <xsl:apply-templates select="dc:publisher[lower-case(./text()) != 'unknown']"/>
          </originInfo>
        </xsl:if>

        <xsl:apply-templates select="dc:description"/>
        <xsl:apply-templates select="dc:format" mode="nyh"/>

        <xsl:if test="normalize-space(dc:source) != ''">
          <physicalDescription>
            <xsl:apply-templates select="dc:source" mode="esdn">
              <xsl:with-param name="delimiter">;</xsl:with-param>
            </xsl:apply-templates>
          </physicalDescription>
        </xsl:if>

        <xsl:apply-templates select="dc:identifier" mode="esdn"/>
        <xsl:apply-templates select="dc:coverage" mode="esdn"/>
        <xsl:apply-templates select="dc:rights" mode="nyh"/>
        <xsl:apply-templates select="dc:subject" mode="nyh"/>
        <xsl:apply-templates select="dc:language" mode="esdn"/>
        <xsl:apply-templates select="dc:type" mode="esdn"/>

        <!-- hard code collection and ownership note -->

        <xsl:element name="relatedItem" namespace="http://www.loc.gov/mods/v3">
          <xsl:attribute name="type">host</xsl:attribute>
          <xsl:attribute name="displayLabel">Collection</xsl:attribute>
          <xsl:element name="titleInfo" namespace="http://www.loc.gov/mods/v3">
            <xsl:element name="title" namespace="http://www.loc.gov/mods/v3">Fenimore Art Museum</xsl:element>
          </xsl:element>
        </xsl:element>

        <xsl:call-template name="intermediate-provider">
          <xsl:with-param name="council">South Central Regional Library Council</xsl:with-param>
        </xsl:call-template>
        <xsl:call-template name="owner-note">
          <xsl:with-param name="owner">Fenimore Art Museum</xsl:with-param>
        </xsl:call-template>
        <xsl:apply-templates select="dc:relation" mode="esdn"/>
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

  <xsl:template match="dc:coverage" mode="union">
    <xsl:variable name="coveragevalue" select="normalize-space(.)"/>
    <xsl:for-each select="tokenize($coveragevalue, ';')">
    <xsl:if test="normalize-space(.) != ''">
    <xsl:choose>
      <xsl:when test='matches(., "\d+")'>
        <xsl:choose>
          <!-- if numbers follow a coordinate pattern, ignore -->
          <xsl:when test='matches(., "\d+\.\d+")'/>
          <xsl:otherwise>
            <xsl:element name="subject" namespace="http://www.loc.gov/mods/v3">
              <xsl:element name="temporal" namespace="http://www.loc.gov/mods/v3">
                <xsl:value-of select="normalize-space(.)"/>
              </xsl:element>
            </xsl:element>
          </xsl:otherwise>
        </xsl:choose>
      </xsl:when>
      <xsl:otherwise>
        <xsl:element name="subject" namespace="http://www.loc.gov/mods/v3">
          <xsl:element name="geographic" namespace="http://www.loc.gov/mods/v3">
            <xsl:value-of select="normalize-space(.)"/>
          </xsl:element>
        </xsl:element>
      </xsl:otherwise>
    </xsl:choose>
    </xsl:if>
    </xsl:for-each>
  </xsl:template>

</xsl:stylesheet>
