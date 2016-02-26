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

      <xsl:apply-templates select="dc:title"/>
      <xsl:apply-templates select="dc:creator" mode="bpl"/>

      <xsl:if test="dc:publisher != '' or dc:date != ''">
        <originInfo>
          <xsl:apply-templates select="dc:date" mode="esdn"/>
          <xsl:apply-templates select="dc:publisher"/>
        </originInfo>
      </xsl:if>

      <physicalDescription>
        <xsl:apply-templates select="dc:format" mode="bpl"/>
      </physicalDescription>
      
      <xsl:apply-templates select="dc:description"/>
      <xsl:apply-templates select="dc:rights"/>
      <xsl:apply-templates select="dc:language"/>
      <xsl:apply-templates select="dc:identifier" mode="bpl"/>
      
      <xsl:apply-templates select="dc:subject"/>
      <xsl:apply-templates select="dc:coverage"/>
      <xsl:apply-templates select="dc:type" mode="bpl"/>

      <!-- hard code CiT note on BPL request -->

      <xsl:element name="note" namespace="http://www.loc.gov/mods/v3">
        <xsl:attribute name="type">content</xsl:attribute>
        Collected through the Our Streets Our Stories community heritage
        project, funded by the John S. and James L. Knight Foundation.
      </xsl:element>
      
      <!-- hard code collection and ownership note -->
      
      <xsl:element name="relatedItem" namespace="http://www.loc.gov/mods/v3">
        <xsl:attribute name="type">host</xsl:attribute>
        <xsl:attribute name="displayLabel">Collection</xsl:attribute>
        <xsl:element name="titleInfo" namespace="http://www.loc.gov/mods/v3">
          <xsl:element name="title" namespace="http://www.loc.gov/mods/v3">Brooklyn Public Library-Brooklyn Collection</xsl:element>
        </xsl:element>
      </xsl:element>

      <xsl:call-template name="owner-note">
        <xsl:with-param name="owner">Brooklyn Public Library</xsl:with-param>
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

  <xsl:template match="dc:creator" mode="bpl">
    <xsl:variable name="creatorvalue" select="normalize-space(.)"/>
    <xsl:for-each select="tokenize($creatorvalue,';')">
      <xsl:if test="normalize-space(.)!=''">
        <name>
          <namePart>
            <xsl:value-of select="normalize-space(.)"/>
            <!--creator-->
          </namePart>
          <role>
            <roleTerm>creator</roleTerm>
          </role>
        </name>
      </xsl:if>
    </xsl:for-each>
  </xsl:template>

  <xsl:template match="dc:format" mode="bpl">
    <xsl:element name="form"><xsl:value-of select="."/></xsl:element>
  </xsl:template>
  
  <xsl:template match="dc:type" mode="bpl">
    <xsl:variable name="typevalue" select="normalize-space(.)"/>
    <xsl:if test="normalize-space(.)!=''">
      <xsl:choose>
        <xsl:when test="(contains(., 'still image'))">
          <xsl:element name="typeOfResource" namespace="http://www.loc.gov/mods/v3">
            <xsl:value-of select="normalize-space(.)"/>
          </xsl:element>
        </xsl:when>
        <xsl:otherwise>
          <xsl:element name="genre" namespace="http://www.loc.gov/mods/v3">
            <xsl:value-of select="normalize-space(.)"/>
          </xsl:element>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:if>
  </xsl:template>
  
  <!-- add link back, thumbnail, additional identifiers -->

  <xsl:template match="dc:identifier" mode="bpl">
    <xsl:variable name="idvalue" select="normalize-space(.)"/>
    <xsl:if test="normalize-space(.)!='' and not(contains(.,'waystation'))">
      <xsl:choose>
        <xsl:when test="(contains(., 'record'))">
          <xsl:element name="location" namespace="http://www.loc.gov/mods/v3">
            <xsl:element name="url" namespace="http://www.loc.gov/mods/v3">
              <xsl:attribute name="usage">primary display</xsl:attribute>
              <xsl:attribute name="access">object in context</xsl:attribute>
              <xsl:value-of select="normalize-space(.)"/>
            </xsl:element>
          </xsl:element>
        </xsl:when>
        <xsl:when test="(contains(., 'articles'))">
          <xsl:element name="location" namespace="http://www.loc.gov/mods/v3">
            <xsl:element name="url" namespace="http://www.loc.gov/mods/v3">
              <xsl:attribute name="access">preview</xsl:attribute>
              <xsl:value-of select="normalize-space(.)"/>
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
