<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:oai_dc='http://www.openarchives.org/OAI/2.0/oai_dc/' xmlns:dc="http://purl.org/dc/elements/1.1/" version="2.0" xmlns="http://www.loc.gov/mods/v3">
  <xsl:output omit-xml-declaration="yes" indent="yes"/>
  
  <xsl:template match="text()|@*"/>
  <xsl:template match="//oai_dc:dc">
    <mods xmlns="http://www.loc.gov/mods/v3" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.loc.gov/mods/v3 http://www.loc.gov/standards/mods/v3/mods-3-4.xsd" version="3.4">      
      <xsl:apply-templates select="dc:title"/>
      
      <!-- AmPomGen uses 'unknown' for dc:creator when well, unknown. Ignore it if present.-->
      <xsl:if test="lower-case(normalize-space(dc:creator)) != 'unknown'">
        <xsl:apply-templates select="dc:creator" mode="ampomgen"/>
      </xsl:if>
      
      <xsl:if test="exists(dc:date)">
        <originInfo>
          <xsl:if test="lower-case(normalize-space(dc:date[1])) != 'unknown'">
            <xsl:apply-templates select="dc:date[1]" mode="esdn"/>
          </xsl:if>
        </originInfo>
      </xsl:if>
      
      <xsl:apply-templates select="dc:description"/>
      
      <!-- VRT stores format and extent info in dc:source. -->
      <!-- Any time we're wrapping at this level, check for a value, so that we don't
        output empty elements -->
      <xsl:if test="normalize-space(dc:source) != ''">
        <physicalDescription>
          <xsl:apply-templates select="dc:source" mode="ampomgen"/>
        </physicalDescription>
      </xsl:if>
      
      <!-- templates we override get a mode attribute with the setSpec of the collection -->
      <xsl:apply-templates select="dc:identifier" mode="esdn"/>
      <xsl:apply-templates select="dc:rights"/>
      <xsl:apply-templates select="dc:subject" mode="nyh"/>


      <xsl:apply-templates select="dc:coverage" mode="nyh"/>
      <xsl:apply-templates select="dc:type" mode="esdn"/>
      
      <!-- hard code collection and ownership note -->
      
      <xsl:element name="relatedItem" namespace="http://www.loc.gov/mods/v3">
        <xsl:attribute name="type">host</xsl:attribute>
        <xsl:attribute name="displayLabel">Collection</xsl:attribute>
        <xsl:element name="titleInfo" namespace="http://www.loc.gov/mods/v3">
          <xsl:element name="title" namespace="http://www.loc.gov/mods/v3">American Pomeroy Historic Genealogical Association</xsl:element>
        </xsl:element>
      </xsl:element>
      
      <xsl:call-template name="intermediate-provider"><xsl:with-param name="council">Central New York Library Resources Council</xsl:with-param></xsl:call-template><xsl:call-template name="owner-note"><xsl:with-param name="owner">American Pomeroy Historic Genealogical Association</xsl:with-param></xsl:call-template>
     <xsl:apply-templates select="dc:relation" mode="esdn"/></mods>
  </xsl:template>
  
  <!-- ESDN utility templates -->
  <xsl:include href="nyh_templates.xsl"/>
<xsl:include href="esdn_templates.xsl"/>
  
  <!-- dublin core field templates -->
  <xsl:include href="oaidctomods_cdmbase.xsl"/>
  
  <!-- reference URL, thumbnail URL --> 
  <xsl:include href="oaidctomods_cdm6.5.xsl"/>
  
  <!-- collection-specific templates start here --> 
  
  <xsl:template match="dc:creator" mode="ampomgen">
    <xsl:variable name="creatorvalue" select="normalize-space(.)"/>
    <xsl:for-each select="tokenize($creatorvalue,';')">
      <xsl:if test="normalize-space(.)!='' and normalize-space(.) != '(?)'">
        <name>
          <namePart>
            <xsl:value-of select="normalize-space(.)"/> <!--creator-->
          </namePart>
          <role><roleTerm>Creator</roleTerm></role>
        </name> 
      </xsl:if>
    </xsl:for-each>      
  </xsl:template>
  
  <xsl:template match="dc:source" mode="ampomgen">
    <xsl:variable name="commaed" select="replace(., ';', ',')"/>
    <xsl:variable name="quote_delim" select="tokenize($commaed, ',')"/> 
    <xsl:variable name="capitalized" select="concat(upper-case(substring($quote_delim[3], 2, 1)), substring($quote_delim[3], 3))"/>
    <extent><xsl:value-of select="normalize-space($quote_delim[3])"/></extent>
    <form><xsl:value-of select="$quote_delim[1]"/>,<xsl:value-of select="$quote_delim[2]"/></form>
  </xsl:template>
  
</xsl:stylesheet>

