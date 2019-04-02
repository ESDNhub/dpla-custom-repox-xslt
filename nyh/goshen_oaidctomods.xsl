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
      
      <xsl:if test="dc:publisher != '' or dc:date != ''">
        <xsl:element name="originInfo" namespace="http://www.loc.gov/mods/v3">
          <xsl:apply-templates select="dc:date[lower-case(./text())!='unknown']" mode="esdn"/>
          <xsl:apply-templates select="dc:publisher[lower-case(./text())!='unknown']"/>
        </xsl:element>
      </xsl:if>
      
      <xsl:apply-templates select="dc:description"/>
      <xsl:apply-templates select="dc:identifier" mode="esdn"/>
      <xsl:apply-templates select="dc:language" mode="esdn"/>
      <xsl:apply-templates select="dc:rights" mode="esdn"/>
      <xsl:apply-templates select="dc:subject" mode="nyh"/>
      
      <xsl:element name="physicalDescription" namespace="http://www.loc.gov/mods/v3">
        <xsl:apply-templates select="dc:source" mode="esdn">
          <xsl:with-param name="delimiter">;</xsl:with-param>
        </xsl:apply-templates>
      </xsl:element>      
      <xsl:apply-templates select="dc:format" mode="nyh"/>
      
      <xsl:apply-templates select="dc:coverage"/>
      <xsl:apply-templates select="dc:type" mode="goshen"/>

      <!-- hard code collection and ownership note -->
      
      <xsl:element name="relatedItem" namespace="http://www.loc.gov/mods/v3">
        <xsl:attribute name="type">host</xsl:attribute>
        <xsl:attribute name="displayLabel">Collection</xsl:attribute>
        <xsl:element name="titleInfo" namespace="http://www.loc.gov/mods/v3">
          <xsl:element name="title" namespace="http://www.loc.gov/mods/v3">Goshen Public Library and Historical Society</xsl:element>
        </xsl:element>
      </xsl:element>
      
      <xsl:call-template name="intermediate-provider">
        <xsl:with-param name="council">Southeastern New York Library Resources Council</xsl:with-param>
      </xsl:call-template>
      <xsl:call-template name="owner-note">
        <xsl:with-param name="owner">Goshen Public Library and Historical Society</xsl:with-param>
      </xsl:call-template>
      <xsl:apply-templates select="dc:relation" mode="esdn"/>
    </mods>
  </xsl:template>
  
  <!-- ESDN utility templates -->
  <xsl:include href="nyh_templates.xsl"/>
  <xsl:include href="esdn_templates.xsl"/>
  
  <!-- dublin core field templates -->
  <xsl:include href="oaidctomods_cdmbase.xsl"/>
  
  <!-- reference URL, thumbnail URL --> 
  <xsl:include href="oaidctomods_cdm6.5.xsl"/>
  
  <!-- collection-specific templates start here --> 
  
  <xsl:template match="dc:type" mode="goshen">
    <!-- always tokenize, since we sometimes get single values with a delimiter -->
    <xsl:for-each select="tokenize(., ';')">
      <!-- check for empty element -->
      <xsl:if test="normalize-space(.) != ''">
        <xsl:variable name="dc-type" select="lower-case(normalize-space(.))"/>
        <xsl:choose>
          <xsl:when test="contains($dc-type, 'collection')"/>
          <xsl:when test="contains($dc-type, 'dataset')">
            <xsl:element name="typeOfResource" namespace="http://www.loc.gov/mods/v3"
              exclude-result-prefixes="#all">
              <xsl:text>software, multimedia</xsl:text>
            </xsl:element>
          </xsl:when>
          <xsl:when test="starts-with($dc-type, 'image')">
            <xsl:element name="typeOfResource" namespace="http://www.loc.gov/mods/v3"
              exclude-result-prefixes="#all">
              <xsl:text>still image</xsl:text>
            </xsl:element>
          </xsl:when>
          <xsl:when test="contains($dc-type, 'moving image') or contains($dc-type, 'MovingImage')">
            <xsl:element name="typeOfResource" namespace="http://www.loc.gov/mods/v3"
              exclude-result-prefixes="#all">
              <xsl:text>moving image</xsl:text>
            </xsl:element>
          </xsl:when>
          <xsl:when test="contains($dc-type, 'still image') or contains($dc-type, 'StillImage') or contains($dc-type, 'photograph')">
            <xsl:element name="typeOfResource" namespace="http://www.loc.gov/mods/v3"
              exclude-result-prefixes="#all">
              <xsl:text>still image</xsl:text>
            </xsl:element>
          </xsl:when>
          <xsl:when test="contains($dc-type, 'interactive resource') or contains($dc-type, 'InteractiveResource')">
            <xsl:element name="typeOfResource" namespace="http://www.loc.gov/mods/v3"
              exclude-result-prefixes="#all">
              <xsl:text>software, multimedia</xsl:text>
            </xsl:element>
          </xsl:when>
          <xsl:when test="contains($dc-type, 'physical object') or contains($dc-type, 'PhysicalObject')">
            <xsl:element name="typeOfResource" namespace="http://www.loc.gov/mods/v3"
              exclude-result-prefixes="#all">
              <xsl:text>three dimensional object</xsl:text>
            </xsl:element>
          </xsl:when>
          <xsl:when test="contains($dc-type, 'service')">
            <xsl:element name="typeOfResource" namespace="http://www.loc.gov/mods/v3"
              exclude-result-prefixes="#all">
              <xsl:text>software, multimedia</xsl:text>
            </xsl:element>
          </xsl:when>
          <xsl:when test="contains($dc-type, 'map') or contains($dc-type, 'cartographic')">
            <xsl:element name="typeOfResource" namespace="http://www.loc.gov/mods/v3"
              exclude-result-prefixes="#all">
              <xsl:text>cartographic</xsl:text>
            </xsl:element>
          </xsl:when>
          <xsl:when test="contains($dc-type, 'sound')">
            <xsl:element name="typeOfResource" namespace="http://www.loc.gov/mods/v3"
              exclude-result-prefixes="#all">
              <xsl:text>sound recording</xsl:text>
            </xsl:element>
          </xsl:when>
          <xsl:when test="contains($dc-type, 'text') or contains($dc-type, 'document')">
            <xsl:element name="typeOfResource" namespace="http://www.loc.gov/mods/v3"
              exclude-result-prefixes="#all">
              <xsl:text>text</xsl:text>
            </xsl:element>
          </xsl:when>
          <xsl:otherwise>
            <xsl:element name="typeOfResource" namespace="http://www.loc.gov/mods/v3">
              <xsl:value-of select="normalize-space(.)"/>
            </xsl:element>      
          </xsl:otherwise>
        </xsl:choose>
      </xsl:if>
    </xsl:for-each>
  </xsl:template>
  
  

</xsl:stylesheet>

