<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:oai_dc='http://www.openarchives.org/OAI/2.0/oai_dc/' xmlns:dc="http://purl.org/dc/elements/1.1/" version="2.0" xmlns="http://www.loc.gov/mods/v3">
  <xsl:output omit-xml-declaration="yes" indent="yes"/>
  
  <xsl:template match="text()|@*"/>
  <xsl:template match="//oai_dc:dc">
    <mods xmlns="http://www.loc.gov/mods/v3" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.loc.gov/mods/v3 http://www.loc.gov/standards/mods/v3/mods-3-4.xsd" version="3.4">      

      <xsl:apply-templates select="dc:title"/>
      <xsl:apply-templates select="dc:contributor"/>
      
      <!-- HRVH uses 'unknown' for dc:creator when well, unknown.-->
      <xsl:if test="lower-case(normalize-space(dc:creator)) != 'unknown'">
        <xsl:apply-templates select="dc:creator"/>
      </xsl:if>
      
      <xsl:if test="dc:date != 'unknown' or dc:publisher != 'unknown'">
        <originInfo>
          <xsl:if test="lower-case(normalize-space(dc:date)) != 'unknown'">
            <xsl:apply-templates select="dc:date" mode="esdn"/>
          </xsl:if>
          <xsl:if test="lower-case(normalize-space(dc:publisher)) != 'unknown'">
            <xsl:apply-templates select="dc:publisher"/>
          </xsl:if>
        </originInfo>
      </xsl:if>
      
      <xsl:apply-templates select="dc:description"/>
      <xsl:apply-templates select="dc:identifier" mode="esdn"/>
      <xsl:apply-templates select="dc:language"/>
      <xsl:apply-templates select="dc:rights"/>
      <xsl:apply-templates select="dc:subject" mode="hrvh"/>
      <xsl:apply-templates select="dc:format" mode="hrvh"/>      
      <xsl:apply-templates select="dc:coverage"/>
      <xsl:apply-templates select="dc:type" mode="esdn"/>
      
      <!-- hard code collection and ownership note -->
      
      <xsl:element name="relatedItem" namespace="http://www.loc.gov/mods/v3">
        <xsl:attribute name="type">host</xsl:attribute>
        <xsl:attribute name="displayLabel">Collection</xsl:attribute>
        <xsl:element name="titleInfo" namespace="http://www.loc.gov/mods/v3">
          <xsl:element name="title" namespace="http://www.loc.gov/mods/v3">Library Association of Rockland County</xsl:element>
        </xsl:element>
      </xsl:element>
      
      <xsl:call-template name="intermediate-provider">
        <xsl:with-param name="council">Southeastern New York Library Resources Council</xsl:with-param>
      </xsl:call-template>
      
      <!-- library system, parse institution name from dc:source -->
      
      <xsl:call-template name="owner-note">
        <xsl:with-param name="owner">
          <xsl:choose>
            <xsl:when test="contains(lower-case(dc:source[1]), 'haverstraw')">Haverstraw King's Daughters Public Library</xsl:when>
            <xsl:when test="contains(lower-case(dc:source[1]), 'nanuet public library')"
              >Nanuet Public Library</xsl:when>
            <xsl:when test="contains(lower-case(dc:source[1]), 'marie hoose')"
              >Nanuet Public Library</xsl:when>
            <xsl:when test="contains(lower-case(dc:source[1]), 'courtesy')"
              >Nanuet Public Library</xsl:when>
            <xsl:when test="contains(lower-case(dc:source[1]), 'new city library')">New City Library</xsl:when>
            <xsl:when test="contains(lower-case(dc:source[1]), 'palisades')">Palisades Free Library</xsl:when>
            <xsl:when test="contains(lower-case(dc:source[1]), 'alice gerard')">Palisades Free Library</xsl:when>
            <xsl:when test="contains(lower-case(dc:source[1]), 'pearl river library')">Pearl River Library</xsl:when>
            <xsl:when test="contains(lower-case(dc:source[1]), 'piermont public library')">Piermont Public Library</xsl:when>
            <xsl:when test="contains(lower-case(dc:source[1]), 'suffern free library')">Suffern Free Library</xsl:when>
            <xsl:when test="contains(lower-case(dc:source[1]), 'greco')">Suffern Free Library</xsl:when>
            <xsl:when test="contains(lower-case(dc:source[1]), 'tappan library')">Tappan Library</xsl:when>
            <xsl:when test="contains(lower-case(dc:source[1]), 'tomkins cove public library')">Tomkins Cove Public Library</xsl:when>
            <xsl:when test="contains(lower-case(dc:source[1]), 'valley cottage library')">Valley Cottage Library</xsl:when>
            <xsl:when test="contains(lower-case(dc:source[1]), 'west nyack library')">West Nyack Free Library</xsl:when>
            <xsl:when test="contains(lower-case(dc:source[1]), 'john scott')">West Nyack Free Library</xsl:when>
            <xsl:otherwise>Library Association of Rockland County</xsl:otherwise>
          </xsl:choose>
        </xsl:with-param>
      </xsl:call-template>
    <xsl:apply-templates select="dc:relation" mode="esdn"/>
    </mods>
  </xsl:template>
  
  <!-- ESDN utility templates -->
  <xsl:include href="esdn_templates.xsl"/>
  
  <!-- HRVH utility templates -->
  <xsl:include href="hrvh_templates.xsl"/>
  
  <!-- dublin core field templates -->
  <xsl:include href="oaidctomods_cdmbase.xsl"/>
  
  <!-- reference URL, thumbnail URL --> 
  <xsl:include href="oaidctomods_cdm6.5.xsl"/>
  
  <!-- collection-specific templates start here -->
  
</xsl:stylesheet>
