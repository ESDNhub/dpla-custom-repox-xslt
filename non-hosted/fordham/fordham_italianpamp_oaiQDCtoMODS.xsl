<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
  xmlns:oai_dc="http://www.openarchives.org/OAI/2.0/oai_dc/"
  xmlns:dc="http://purl.org/dc/elements/1.1/" xmlns:xs="http://www.w3.org/2001/XMLSchema"
  xmlns:oai-pmh="http://www.openarchives.org/OAI/2.0/" xmlns:mods="http://www.loc.gov/mods/v3"
  xmlns:dcterms="http://purl.org/dc/terms/" xmlns:edm="http://www.europeana.eu/schemas/edm/"
  xmlns:oai_qdc="http://worldcat.org/xmlschemas/qdc-1.0/"
  xsi:schemaLocation="http://worldcat.org/xmlschemas/qdc-1.0/
  http://purl.org/net/oclcterms
  http://worldcat.org/xmlschemas/oclcterms/1.4/oclcterms-1.4.xsd"
  exclude-result-prefixes="xs oai_qdc oai-pmh edm mods xsi dcterms" version="2.0"
  xmlns="http://www.loc.gov/mods/v3">
  <xsl:output indent="yes"/>

  <xsl:template match="text() | @*"/>

  <xsl:template match="/">
    <xsl:apply-templates select="//oai_qdc:qualifieddc[dc:title != 'Quality target']"/>
  </xsl:template>

  <xsl:template match="oai_qdc:qualifieddc">
    <mods xmlns="http://www.loc.gov/mods/v3" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
      xsi:schemaLocation="http://www.loc.gov/mods/v3 http://www.loc.gov/standards/mods/v3/mods-3-4.xsd"
      version="3.4">
      <xsl:apply-templates select="dc:title"/>
      <xsl:apply-templates select="dc:contributor" mode="fordham"/>
      <xsl:apply-templates select="dc:creator" mode="fordham"/>
      <xsl:if test="exists(dc:date) or exists(dc:publisher)">
        <xsl:element name="originInfo">
          <xsl:apply-templates select="dc:date[not(starts-with(./text(), 'MD'))]" mode="esdn"/>
          <xsl:apply-templates select="dc:publisher"/>
        </xsl:element>
      </xsl:if>
      <xsl:apply-templates select="dc:description"/>
      <xsl:apply-templates select="dcterms:tableOfContents"/>

      <xsl:element name="physicalDescription" namespace="http://www.loc.gov/mods/v3">
        <xsl:apply-templates select="dcterms:extent"/>
      </xsl:element>

      <xsl:if test="exists(dcterms:isPartOf) or exists(dcterms:isFormatOf)">
        <xsl:element name="relatedItem" namespace="http://www.loc.gov/mods/v3">
          <xsl:apply-templates select="dcterms:isFormatOf"/>
          <xsl:apply-templates select="dcterms:isPartOf"/>
        </xsl:element>
      </xsl:if>
      <xsl:apply-templates select="dc:identifier" mode="esdn"/>
      <xsl:apply-templates select="dc:subject"/>
      <xsl:apply-templates select="dc:type"/>

      <!-- hard code ownership note -->
      <xsl:call-template name="owner-note">
        <xsl:with-param name="owner">Fordham University</xsl:with-param>
      </xsl:call-template>
    </mods>
  </xsl:template>

  <!-- ESDN utility templates -->
  <xsl:include href="esdn_templates.xsl"/>

  <!-- dublin core field templates -->
  <xsl:include href="oaidctomods_cdmbase.xsl"/>
  <xsl:include href="oaidctomods_cdm6.5.xsl"/>

  <!-- collection-specific templates start here -->

  <xsl:template match="dcterms:tableOfContents">
    <xsl:element name="note" namespace="http://www.loc.gov/mods/v3">
      <xsl:attribute name="type">content</xsl:attribute>
      <xsl:value-of select="normalize-space(.)"/>
    </xsl:element>
  </xsl:template>

  <xsl:template match="dcterms:isFormatOf">
    <xsl:element name="location" namespace="http://www.loc.gov/mods/v3">
      <xsl:element name="url" namespace="http://www.loc.gov/mods/v3">
        <xsl:value-of select="normalize-space(.)"/>
      </xsl:element>
    </xsl:element>
  </xsl:template>

  <xsl:template match="dcterms:isPartOf">
    <xsl:element name="titleInfo" namespace="http://www.loc.gov/mods/v3">
      <xsl:element name="title" namespace="http://www.loc.gov/mods/v3">
        <xsl:value-of select="normalize-space(.)"/>
      </xsl:element>
    </xsl:element>
  </xsl:template>

  <xsl:template match="dc:contributor" mode="fordham">
    <xsl:variable name="contributorvalue" select="normalize-space(.)"/>
    <xsl:for-each select="tokenize($contributorvalue, ';')">
      <xsl:if test="normalize-space(.) != ''">
        <name>
          <namePart>
            <xsl:value-of select="normalize-space(substring-before(., '--'))"/>
            <!--contributor-->
          </namePart>
          <role>
            <roleTerm>contributor</roleTerm>
          </role>
        </name>
      </xsl:if>
    </xsl:for-each>
  </xsl:template>

  <xsl:template match="dc:creator" mode="fordham">
    <xsl:variable name="creatorvalue" select="normalize-space(.)"/>
    <xsl:for-each select="tokenize($creatorvalue, ';')">
      <xsl:if test="normalize-space(.) != ''">
        <name>
          <namePart>
            <xsl:value-of select="normalize-space(substring-before(., '--'))"/>
            <!--contributor-->
          </namePart>
          <role>
            <roleTerm>creator</roleTerm>
          </role>
        </name>
      </xsl:if>
    </xsl:for-each>
  </xsl:template>

  <xsl:template match="dcterms:extent">
    <xsl:element name="extent" namespace="http://www.loc.gov/mods/v3">
      <xsl:value-of select="normalize-space(.)"/>
    </xsl:element>
  </xsl:template>

</xsl:stylesheet>