<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
  xmlns:oai-pmh="http://www.openarchives.org/OAI/2.0/"
  xmlns:oai_dc="http://www.openarchives.org/OAI/2.0/oai_dc/"
  xmlns:dc="http://purl.org/dc/elements/1.1/" version="2.0" xmlns="http://www.loc.gov/mods/v3">
  <xsl:output omit-xml-declaration="yes" indent="yes"/>
  <xsl:template match="text() | @*"/>
  <xsl:template match="//oai_dc:dc">
    <mods xmlns="http://www.loc.gov/mods/v3" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
      xsi:schemaLocation="http://www.loc.gov/mods/v3 http://www.loc.gov/standards/mods/v3/mods-3-4.xsd"
      version="3.4">
      
      <!-- Stylesheet for Queens Memory Documents collection. -->
      
      <xsl:apply-templates select="dc:title"/>
      <xsl:apply-templates select="dc:contributor"/>
      <xsl:apply-templates select="dc:creator[lower-case(./text()) != 'unknown']"/>
      <xsl:if test="exists(dc:publisher) or exists(dc:date)">
        <originInfo>
          <xsl:apply-templates select="dc:publisher"/>
          <xsl:apply-templates select="dc:date[1]"/>
        </originInfo>
      </xsl:if>
      <xsl:apply-templates select="dc:description"/>
      <xsl:apply-templates select="dc:source" mode="queens_memory"/>
      
      <xsl:element name="physicalDescription" namespace="http://www.loc.gov/mods/v3">
        <xsl:if test="exists(dc:format[2])">
          <xsl:element name="extent" namespace="http://www.loc.gov/mods/v3">
            <xsl:value-of select="dc:format[2]"/>
          </xsl:element>
        </xsl:if>
        <xsl:if test="exists(dc:format[1])">
          <xsl:element name="form" namespace="http://www.loc.gov/mods/v3">
            <xsl:value-of select="dc:format[1]"/>
          </xsl:element>
        </xsl:if>
      </xsl:element>
      
      <xsl:apply-templates select="dc:subject"/>
      <xsl:apply-templates select="dc:coverage[2]" mode="esdn"/>
      
      <xsl:element name="typeOfResource" namespace="http://www.loc.gov/mods/v3">still image</xsl:element> <!-- add type, all photographs-->
      
      <!-- hard code rights -->
      
      <xsl:element name="accessCondition">The Queens Library is interested in learning more about
        items you've seen on our websites or elsewhere online. If you have any more information
        about an item or its copyright status, we want to hear from you. Please contact
        digitalarchive@queenslibrary.org with your contact information and a link to the relevant
        content.</xsl:element>
      
      <xsl:apply-templates select="dc:relation"/>
      
      <!-- Build link and thumbnail preview -->
      
      <xsl:element name="location" namespace="http://www.loc.gov/mods/v3">
        <xsl:element name="url">
          <xsl:attribute name="usage">primary display</xsl:attribute>
          <xsl:attribute name="access">object in context</xsl:attribute>
          <xsl:value-of
            select="concat('http://digitalarchives.queenslibrary.org/vital/access/manager/Repository/', normalize-space(dc:identifier[1]))"
          />
        </xsl:element>
      </xsl:element>
      <xsl:element name="location" namespace="http://www.loc.gov/mods/v3">
        <xsl:element name="url">
          <xsl:attribute name="access">preview</xsl:attribute>
          <xsl:value-of
            select="concat('http://digitalarchives.queenslibrary.org/vital/access/services/Download/', normalize-space(dc:identifier[1]), '/JPGSOURCE1-PhotographFront?view=true')"
          />
        </xsl:element>
      </xsl:element>
      
      <!-- hard code collection and ownership note -->
      
      <xsl:call-template name="owner-note">
        <xsl:with-param name="owner">Queens Borough Public Library</xsl:with-param>
      </xsl:call-template>
      
      <xsl:element name="relatedItem" namespace="http://www.loc.gov/mods/v3">
        <xsl:attribute name="type">host</xsl:attribute>
        <xsl:attribute name="displayLabel">Collection</xsl:attribute>
        <xsl:element name="titleInfo" namespace="http://www.loc.gov/mods/v3">
          <xsl:element name="title" namespace="http://www.loc.gov/mods/v3">Queens Borough Public Library-Queens Memory Photographs</xsl:element>
        </xsl:element>
      </xsl:element>
      
    </mods>
  </xsl:template>
  
  <!-- ESDN utility templates -->
  <xsl:include href="esdn_templates.xsl"/>
  
  <!-- dublin core field templates -->
  <xsl:include href="oaidctomods_base.xsl"/>
  
  <!-- collection-specific templates -->
  
  <xsl:template match="dc:source" mode="queens_memory">
    <xsl:element name="note" namespace="http://www.loc.gov/mods/v3">
       <xsl:attribute name="type">content</xsl:attribute>
        <xsl:value-of select="normalize-space(.)"/>
      </xsl:element>
  </xsl:template>
  
</xsl:stylesheet>
  
