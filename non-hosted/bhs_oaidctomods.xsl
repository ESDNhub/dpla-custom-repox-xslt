<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
  xmlns:oai_dc="http://www.openarchives.org/OAI/2.0/oai_dc/"
  xmlns:dc="http://purl.org/dc/elements/1.1/" version="2.0" xmlns="http://www.loc.gov/mods/v3">
  <xsl:output omit-xml-declaration="yes" indent="yes"/>

  <xsl:template match="text() | @*"/>
  <xsl:template match="//oai_dc:dc">
    <mods xmlns="http://www.loc.gov/mods/v3" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
      xsi:schemaLocation="http://www.loc.gov/mods/v3 http://www.loc.gov/standards/mods/v3/mods-3-4.xsd"
      version="3.4">

      <xsl:apply-templates select="dc:title"/>
      
      <xsl:apply-templates select="dc:creator[lower-case(./text()) != 'unknown']"/>

      <xsl:if test="normalize-space(dc:date) != ''">
        <originInfo>
          <xsl:if test="lower-case(normalize-space(dc:date)) != 'unknown'">
            <xsl:apply-templates select="dc:date"/>
          </xsl:if>
        </originInfo>
      </xsl:if>
      
      <xsl:if test="normalize-space(dc:format) != ''">
        <physicalDescription>
          <xsl:apply-templates select="dc:format"/>
        </physicalDescription>
      </xsl:if>
      
      <!-- hard code still image based on BHS request -->
      
      <xsl:element name="typeOfResource" namespace="http://www.loc.gov/mods/v3">still image</xsl:element>

      <xsl:apply-templates select="dc:description"/>
      <xsl:apply-templates select="dc:identifier" mode="bhs"/>
      <xsl:apply-templates select="dc:rights" mode="esdn"/>
      <xsl:apply-templates select="dc:subject"/>
      <xsl:apply-templates select="dc:coverage" mode="bhs"/>
      <xsl:apply-templates select="dc:relation" mode="bhs"/>

      <!-- hard code ownership note -->

      <xsl:call-template name="owner-note">
        <xsl:with-param name="owner">Brooklyn Historical Society</xsl:with-param>
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

  <!-- Collection specific templates -->

  <xsl:template match="dc:relation" mode="bhs">
    <xsl:element name="relatedItem" namespace="http://www.loc.gov/mods/v3">
      <xsl:attribute name="type">host</xsl:attribute>
      <xsl:attribute name="displayLabel">Collection</xsl:attribute>
      <xsl:element name="titleInfo" namespace="http://www.loc.gov/mods/v3">
        <xsl:element name="title" namespace="http://www.loc.gov/mods/v3">
          <xsl:value-of select="normalize-space(.)"/>
        </xsl:element>
      </xsl:element>
    </xsl:element>
  </xsl:template>
  
  <xsl:template match="dc:coverage" mode="bhs">
    <xsl:variable name="coveragevalue" select="normalize-space(.)"/>
    <xsl:for-each select="tokenize($coveragevalue, ';')">
    <xsl:element name="subject" namespace="http://www.loc.gov/mods/v3">
      <xsl:element name="geographic" namespace="http://www.loc.gov/mods/v3">
          <xsl:value-of select="normalize-space(.)"/>
      </xsl:element>
    </xsl:element>
    </xsl:for-each>
  </xsl:template>

  <xsl:template match="dc:identifier" mode="bhs">
    <xsl:if test="normalize-space(.) != '' and not(contains(., 'waystation'))">
      <xsl:choose>
        <xsl:when test="(contains(., 'brooklynhistory'))">
          <xsl:element name="location" namespace="http://www.loc.gov/mods/v3">
            <xsl:element name="url" namespace="http://www.loc.gov/mods/v3">
              <xsl:attribute name="usage">primary display</xsl:attribute>
              <xsl:attribute name="access">object in context</xsl:attribute>
              <xsl:value-of select="normalize-space(.)"/>
            </xsl:element>
          </xsl:element>
        </xsl:when>
        <xsl:when test="(contains(lower-case(.), 'jpg'))">
          <xsl:element name="location" namespace="http://www.loc.gov/mods/v3">
            <xsl:element name="url" namespace="http://www.loc.gov/mods/v3">
              <xsl:attribute name="access">preview</xsl:attribute>
              <xsl:value-of
                select="concat('https://s3.amazonaws.com/pastperfectonline/images/museum_475/', substring-before(., '\'), '/thumbs/', substring-after(.,'\'))"/>
            </xsl:element>
          </xsl:element>
        </xsl:when>
        <xsl:otherwise>
          <identifier>
            <xsl:value-of select="normalize-space(.)"/>
          </identifier>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:if>
  </xsl:template>

</xsl:stylesheet>
