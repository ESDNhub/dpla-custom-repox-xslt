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

      <xsl:apply-templates select="dc:contributor[lower-case(./text()) != 'unknown']"/>
      <xsl:apply-templates select="dc:creator[lower-case(./text()) != 'unknown']"/>

      <xsl:if test="dc:publisher != '' or dc:date != ''">
        <originInfo>
          <xsl:apply-templates select="dc:date[lower-case(./text())!='unknown']" mode="esdn"/>
          <xsl:apply-templates select="dc:publisher[lower-case(./text())!='unknown']"/>
        </originInfo>
      </xsl:if>
      
      <xsl:apply-templates select="dc:description"/>

      <xsl:if test="normalize-space(dc:format) != ''">
        <physicalDescription>
          <xsl:apply-templates select="dc:format" mode="stlawu"/>
        </physicalDescription>
      </xsl:if>

      <!-- templates we override get a mode attribute with the setSpec of the collection -->
      <xsl:apply-templates select="dc:identifier" mode="esdn"/>
      <xsl:apply-templates select="dc:rights" mode="nyh"/>
      <xsl:apply-templates select="dc:subject" mode="nyh"/>
      <xsl:apply-templates select="dc:language" mode="esdn"/>

      <xsl:apply-templates select="dc:coverage" mode="nyh"/>
      <xsl:apply-templates select="dc:type" mode="esdn"/>
      
      <!-- hard code collection and ownership note -->
      
      <xsl:element name="relatedItem" namespace="http://www.loc.gov/mods/v3">
        <xsl:attribute name="type">host</xsl:attribute>
        <xsl:attribute name="displayLabel">Collection</xsl:attribute>
        <xsl:element name="titleInfo" namespace="http://www.loc.gov/mods/v3">
          <xsl:element name="title" namespace="http://www.loc.gov/mods/v3">St. Lawrence University</xsl:element>
        </xsl:element>
      </xsl:element>
      
      <xsl:call-template name="intermediate-provider">
        <xsl:with-param name="council">Northern New York Library Network</xsl:with-param>
      </xsl:call-template>
      <xsl:call-template name="owner-note">
        <xsl:with-param name="owner">
          St. Lawrence University</xsl:with-param>
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
  
  <xsl:template match="dc:format" mode="stlawu">
    <xsl:choose>
      <xsl:when test="contains(., ';')">
        <xsl:variable name="elmlist" select="tokenize(., ';')"/>
          <xsl:element name="form"><xsl:value-of select="normalize-space($elmlist[1])"/></xsl:element>
          <xsl:element name="extent"><xsl:value-of select="normalize-space($elmlist[2])"/></xsl:element>       
      </xsl:when>
      <xsl:otherwise/>
    </xsl:choose>
  </xsl:template>
  
</xsl:stylesheet>
