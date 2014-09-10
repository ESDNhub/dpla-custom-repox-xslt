<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:oai_dc='http://www.openarchives.org/OAI/2.0/oai_dc/' xmlns:dc="http://purl.org/dc/elements/1.1/" version="2.0" xmlns="http://www.loc.gov/mods/v3">
  <xsl:output omit-xml-declaration="yes" indent="yes"/>
  
  <xsl:template match="text()|@*"/>
  <xsl:template match="//oai_dc:dc">
    <mods xmlns="http://www.loc.gov/mods/v3" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.loc.gov/mods/v3 http://www.loc.gov/standards/mods/v3/mods-3-4.xsd" version="3.4">      
      <xsl:apply-templates select="dc:title"/>
      <xsl:apply-templates select="dc:contributor"/>
      
      <!-- HRVH uses 'unknown' for dc:creator when well, unknown. Ignore it if present.-->
      <xsl:if test="lower-case(normalize-space(dc:creator)) != 'unknown'">
        <xsl:apply-templates select="dc:creator"/>
      </xsl:if>
      
      <xsl:if test="normalize-space(dc:date) != '' or normalize-space(dc:publisher) != ''">
        <originInfo>
          <xsl:if test="lower-case(normalize-space(dc:date)) != 'unknown'">
            <xsl:apply-templates select="dc:date"/>
          </xsl:if>
          <xsl:apply-templates select="dc:publisher"/>
        </originInfo>
      </xsl:if>
      
      <xsl:apply-templates select="dc:description"/>
      <xsl:apply-templates select="dc:format" mode="eplm"/>
      
      <!-- templates we override get a mode attribute with the setSpec of the collection -->
      <xsl:apply-templates select="dc:identifier" mode="esdn"/>
      
      <xsl:apply-templates select="dc:language"/>
      <xsl:apply-templates select="dc:rights"/>
      
      <xsl:apply-templates select="dc:subject" mode="hrvh"/>
      <!-- hard code "New York" in subject/geographic -->
      
      <subject><geographic>New York</geographic></subject>
      
      <xsl:apply-templates select="dc:coverage"/>
      <xsl:apply-templates select="dc:type" mode="esdn"/>
      
      <!-- hard code ownership note -->
      <note type="ownership">Ellenville Public Library and Museum</note>
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
  <!-- HRVH are inconsistent wrt to number of delimited items in format string.
    Sometimes there are 1, sometimes 2, sometimes 3. Get token count and output
    based on that. -->
  <xsl:template match="dc:format" mode="eplm">
    <xsl:variable name="tokens" select="tokenize(., ';')"/>
    <xsl:variable name="tct" select="count($tokens)"/>
    <xsl:if test="$tct > 1">
      <physicalDescription>
        <xsl:choose>
          <xsl:when test="$tct = 3">
            <!-- put the delimiter back when constructing the value.
            concat nicely takes variable number of args, so no need to
            create hideous nested calls. -->
            <form><xsl:value-of select="concat(normalize-space($tokens[1]), '; ', normalize-space($tokens[2]))"></xsl:value-of></form>
            <extent><xsl:value-of select="normalize-space($tokens[3])"/></extent>
          </xsl:when>
          <xsl:when test="$tct = 2">
            <form><xsl:value-of select="normalize-space($tokens[1])"></xsl:value-of></form>
            <extent><xsl:value-of select="normalize-space($tokens[2])"/></extent>
          </xsl:when>
          <xsl:otherwise/>
        </xsl:choose>    
      </physicalDescription>
    </xsl:if>
  </xsl:template>
</xsl:stylesheet>
