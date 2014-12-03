<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:oai_dc='http://www.openarchives.org/OAI/2.0/oai_dc/' xmlns:dc="http://purl.org/dc/elements/1.1/" version="2.0" xmlns="http://www.loc.gov/mods/v3">
  <xsl:output omit-xml-declaration="yes" indent="yes"/>
  
  <xsl:template match="text()|@*"/>
  <xsl:template match="//oai_dc:dc">
    <mods xmlns="http://www.loc.gov/mods/v3" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.loc.gov/mods/v3 http://www.loc.gov/standards/mods/v3/mods-3-4.xsd" version="3.4">      
      <xsl:apply-templates select="dc:title"/>
      
      <!-- Geneva uses 'unknown' for dc:creator when well, unknown. Ignore it if present.-->
      <xsl:if test="lower-case(normalize-space(dc:creator)) != 'unknown'">
        <xsl:apply-templates select="dc:creator" mode="livpub01"/>
      </xsl:if>
      
      <xsl:if test="normalize-space(dc:date) != '' or normalize-space(dc:publisher) != ''">
        <originInfo>
          <xsl:apply-templates select="dc:date" mode="livpub01"/>
          <xsl:if test="lower-case(normalize-space(dc:publisher)) != 'unknown'">
            <xsl:apply-templates select="dc:publisher"/>
          </xsl:if>
        </originInfo>
      </xsl:if>
      
      <xsl:apply-templates select="dc:description"/>
      
      <!-- Liverpool dumps what should  be in dc:format in dc:source, so get it
        from there -->
      <!-- Any time we're wrapping at this level, check for a value, so that we don't
        output empty elements -->
      <xsl:if test="normalize-space(dc:source) != ''">
        <physicalDescription>
          <xsl:apply-templates select="dc:source" mode="livpub01"/>
        </physicalDescription>
      </xsl:if>
      
      <!-- templates we override get a mode attribute with the setSpec of the collection -->
      <xsl:apply-templates select="dc:identifier" mode="esdn"/>
      <xsl:apply-templates select="dc:language"/>
      <xsl:apply-templates select="dc:rights"/>
      <xsl:apply-templates select="dc:subject"/>


      <xsl:apply-templates select="dc:coverage"/>
      <xsl:apply-templates select="dc:type" mode="esdn"/>
      <!-- hard code ownership note -->
      <note type="ownership">Liverpool Public Library</note>
     </mods>
  </xsl:template>
  
  <!-- ESDN utility templates -->
  <xsl:include href="esdn_templates.xsl"/>
  
  <!-- dublin core field templates -->
  <xsl:include href="oaidctomods_cdmbase.xsl"/>
  
  <!-- reference URL, thumbnail URL --> 
  <xsl:include href="oaidctomods_cdm6.5.xsl"/>
  
  <!-- collection-specific templates start here --> 
  
  <xsl:template match="dc:creator" mode="livpub01">
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
  
  <xsl:template match="dc:date" mode="livpub01">
    <xsl:variable name="date_list" select="tokenize(., ';')"/>
    <xsl:variable name="list_length" select="count($date_list)"/>
    <xsl:choose>
      <xsl:when test="$list_length > 1">
        <dateCreated keyDate="yes" point="start">
          <xsl:if test="contains($date_list[1], '?')">
            <xsl:attribute name="qualifier">questionable</xsl:attribute>
          </xsl:if>
          <xsl:value-of select="normalize-space($date_list[1])"/>
        </dateCreated>
        
        <dateCreated point="end">
          <xsl:if test="contains($date_list[$list_length], '?')">
            <xsl:attribute name="qualifier">questionable</xsl:attribute>
          </xsl:if>
          <xsl:value-of select="normalize-space($date_list[$list_length])"/>
        </dateCreated>
      </xsl:when>
      <xsl:otherwise>
        <xsl:apply-templates select="." mode="esdn"/>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>
  
  <xsl:template match="dc:source" mode="livpub01">
    <xsl:for-each select=".">
      <xsl:variable name="sourcevalue" select="."/>
      <xsl:if test="normalize-space($sourcevalue) != ''">
        <xsl:for-each select="tokenize($sourcevalue, ';')">
          <form><xsl:value-of select="normalize-space(.)"/></form>
        </xsl:for-each>
    </xsl:if>
    </xsl:for-each>
  </xsl:template>

</xsl:stylesheet>
