<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:oai_dc='http://www.openarchives.org/OAI/2.0/oai_dc/' xmlns:dc="http://purl.org/dc/elements/1.1/" version="2.0" xmlns="http://www.loc.gov/mods/v3">
  <xsl:output omit-xml-declaration="yes" indent="yes"/>
  
  <xsl:template match="text()|@*"/>
  <xsl:template match="//oai_dc:dc">
    <mods xmlns="http://www.loc.gov/mods/v3" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.loc.gov/mods/v3 http://www.loc.gov/standards/mods/v3/mods-3-4.xsd" version="3.4">      
      <xsl:apply-templates select="dc:title"/>
      
      <!-- Albany Law uses 'unknown' for dc:creator when well, unknown. Ignore it if present.-->
      <xsl:if test="lower-case(normalize-space(dc:creator)) != 'unknown'">
        <xsl:apply-templates select="dc:creator"/>
      </xsl:if>
      
      <xsl:if test="dc:date[1] != ''">
        <originInfo>
            <xsl:if test="lower-case(normalize-space(dc:date[1])) != 'unknown'">
              <xsl:apply-templates select="dc:date[1]" mode="esdn"/>
            </xsl:if>
        </originInfo>
      </xsl:if>
      
      <xsl:apply-templates select="dc:description"/>
      <xsl:apply-templates select="dc:language"/>
      
      <!-- Format and extent info are in dc:source. -->
      <!-- Any time we're wrapping at this level, check for a value, so that we don't
        output empty elements -->
      <xsl:if test="normalize-space(dc:source) != ''">
        <xsl:element name="physicalDescription">
           <xsl:element name="form">
             <xsl:value-of select="dc:source"/>
           </xsl:element>
        </xsl:element>
      </xsl:if>
      
      <!-- templates we override get a mode attribute with the setSpec of the collection -->
      <xsl:apply-templates select="dc:identifier" mode="esdn"/>
      <xsl:apply-templates select="dc:rights"/>
      <xsl:apply-templates select="dc:subject"/>


      <xsl:apply-templates select="dc:coverage"/>
      <xsl:apply-templates select="dc:type" mode="esdn"/>
      <xsl:call-template name="owner-note">
        <xsl:with-param name="owner">University of Rochester. Medical
        Center. Eastman Institute for Oral Health</xsl:with-param>
      </xsl:call-template>
    <xsl:apply-templates select="dc:relation"/></mods>
  </xsl:template>
  
  <!-- ESDN utility templates -->
  <xsl:include href="esdn_templates.xsl"/>
  
  <!-- dublin core field templates -->
  <xsl:include href="oaidctomods_cdmbase.xsl"/>
  
  <!-- reference URL, thumbnail URL --> 
  <xsl:include href="oaidctomods_cdm6.5.xsl"/>
  
  <!-- collection-specific templates start here --> 
  </xsl:stylesheet>

