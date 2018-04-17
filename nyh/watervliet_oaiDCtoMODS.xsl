<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:oai_dc='http://www.openarchives.org/OAI/2.0/oai_dc/' xmlns:dc="http://purl.org/dc/elements/1.1/" version="2.0" xmlns="http://www.loc.gov/mods/v3">
  <xsl:output omit-xml-declaration="yes" indent="yes"/>
  
  <xsl:template match="text()|@*"/>
  <xsl:template match="//oai_dc:dc">
    <mods xmlns="http://www.loc.gov/mods/v3" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.loc.gov/mods/v3 http://www.loc.gov/standards/mods/v3/mods-3-4.xsd" version="3.4">      
      <xsl:apply-templates select="dc:title"/>
      
      <!-- Watervliet uses 'unknown' for dc:creator when well, unknown. Ignore it if present.-->
      <xsl:if test="lower-case(normalize-space(dc:creator)) != 'unknown'">
        <xsl:apply-templates select="dc:creator" mode="watervliet"/>
      </xsl:if>
      
      <xsl:if test="dc:publisher != '' or dc:date != '9999'">
        <originInfo>
          <xsl:if test="lower-case(normalize-space(dc:date)) != 'unknown'">
            <xsl:apply-templates select="dc:date[./text()!='9999']" mode="esdn"/>
          </xsl:if>
          <xsl:if test="lower-case(normalize-space(dc:publisher)) != 'unknown'">
            <xsl:apply-templates select="dc:publisher"/>
          </xsl:if>
      </originInfo>
      </xsl:if>
      
      <xsl:apply-templates select="dc:description"/>
      
      <!-- VRT stores format and extent info in dc:source. -->
      <!-- Any time we're wrapping at this level, check for a value, so that we don't
        output empty elements -->
      <xsl:if test="normalize-space(dc:source) != ''">
        <physicalDescription>
          <xsl:apply-templates select="dc:source" mode="watervliet"/>
        </physicalDescription>
      </xsl:if>
      
      <!-- templates we override get a mode attribute with the setSpec of the collection -->
      <xsl:apply-templates select="dc:identifier" mode="esdn"/>
      <xsl:apply-templates select="dc:rights" mode="nyh"/>
      <xsl:apply-templates select="dc:subject" mode="nyh"/>

      <xsl:apply-templates select="dc:coverage" mode="nyh"/>
      <xsl:apply-templates select="dc:type" mode="esdn"/>
      <xsl:apply-templates select="dc:format" mode="watervliet"/>
      <xsl:apply-templates select="dc:language" mode="esdn"/>
      
      <!-- hard code collection and ownership note -->
      
      <xsl:element name="relatedItem" namespace="http://www.loc.gov/mods/v3">
        <xsl:attribute name="type">host</xsl:attribute>
        <xsl:attribute name="displayLabel">Collection</xsl:attribute>
        <xsl:element name="titleInfo" namespace="http://www.loc.gov/mods/v3">
          <xsl:element name="title" namespace="http://www.loc.gov/mods/v3">Watervliet Public Library</xsl:element>
        </xsl:element>
      </xsl:element>
      
      <xsl:call-template name="intermediate-provider"><xsl:with-param name="council">Capital District Library Council</xsl:with-param></xsl:call-template><xsl:call-template name="owner-note"><xsl:with-param name="owner">Watervliet Public Library</xsl:with-param></xsl:call-template>
     <xsl:apply-templates select="dc:relation" mode="watervliet"/></mods>
  </xsl:template>
  
  <!-- ESDN utility templates -->
  <xsl:include href="nyh_templates.xsl"/>
<xsl:include href="esdn_templates.xsl"/>
  
  <!-- dublin core field templates -->
  <xsl:include href="oaidctomods_cdmbase.xsl"/>
  
  <!-- reference URL, thumbnail URL --> 
  <xsl:include href="oaidctomods_cdm6.5.xsl"/>
  
  <!-- collection-specific templates start here --> 
  
  <xsl:template match="dc:creator" mode="watervliet">
    <xsl:variable name="creatorvalue" select="normalize-space(.)"/>
    <xsl:for-each select="tokenize($creatorvalue,';')">
      <xsl:if test="normalize-space(.)!='' and normalize-space(.) != '(?)'">
        <name>
          <namePart>
            <xsl:value-of select="normalize-space(.)"/> <!--creator-->
          </namePart>
          <role><roleTerm>creator</roleTerm></role>
        </name> 
      </xsl:if>
    </xsl:for-each>      
  </xsl:template>
  
  <xsl:template match="dc:source" mode="watervliet">
    <xsl:variable name="commaed" select="replace(., ';', ',')"/>
    <xsl:variable name="quote_delim" select="tokenize($commaed, ',')"/> 
    <extent><xsl:value-of select="normalize-space($quote_delim[3])"/></extent>
    <form><xsl:value-of select="$quote_delim[1]"/>,<xsl:value-of select="$quote_delim[2]"/></form>
  </xsl:template>
  
  <xsl:template match="dc:relation" mode="watervliet">
    <xsl:for-each select="tokenize(., ';')">
      <xsl:element name="relatedItem" namespace="http://www.loc.gov/mods/v3">
        <xsl:element name="titleInfo" namespace="http://www.loc.gov/mods/v3">
          <xsl:element name="title" namespace="http://www.loc.gov/mods/v3">
            <xsl:value-of select="normalize-space(.)"/>
          </xsl:element>
        </xsl:element>
      </xsl:element>
    </xsl:for-each>
  </xsl:template>
  
  <xsl:template match="dc:format" mode="watervliet">
    <xsl:for-each select="tokenize(., ';')">
      <xsl:choose>
        <xsl:when test=".!=''">
          <xsl:element name="genre" namespace="http://www.loc.gov/mods/v3">
            <xsl:value-of select="normalize-space(.)"/>
          </xsl:element>
        </xsl:when>
        <xsl:otherwise/>
      </xsl:choose>
    </xsl:for-each>
    
  </xsl:template>

</xsl:stylesheet>

