<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:oai_dc='http://www.openarchives.org/OAI/2.0/oai_dc/' xmlns:dc="http://purl.org/dc/elements/1.1/" version="2.0" xmlns="http://www.loc.gov/mods/v3">
  <xsl:output omit-xml-declaration="yes" indent="yes"/>
  
  <xsl:template match="text()|@*"/>
  <xsl:template match="//oai_dc:dc">
    <mods xmlns="http://www.loc.gov/mods/v3" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.loc.gov/mods/v3 http://www.loc.gov/standards/mods/v3/mods-3-4.xsd" version="3.4">      
      <xsl:apply-templates select="dc:title" mode="nysl"/>
      
      <!-- Check for 'unknown' in dc:creator when well, unknown. Ignore it if present.-->
      <xsl:if test="lower-case(normalize-space(dc:creator)) != 'unknown'">
        <xsl:apply-templates select="dc:creator" mode="nysl"/>
      </xsl:if>
      
      <!-- Check for 'unknown' in dc:contributor when well, unknown. Ignore it if present.-->
      <xsl:if test="lower-case(normalize-space(dc:contributor)) != 'unknown'">
        <xsl:apply-templates select="dc:contributor"/>
      </xsl:if>
      
      <xsl:if test="dc:publisher != ''">
        <originInfo>
           <xsl:if test="lower-case(normalize-space(dc:publisher)) != 'unknown'">
            <xsl:apply-templates select="dc:publisher"/>
          </xsl:if>
        </originInfo>
      </xsl:if>
      
      <xsl:apply-templates select="dc:description"/>
      <xsl:apply-templates select="dc:language"/>
      
      <!-- templates we override get a mode attribute with the setSpec of the collection -->
      <xsl:apply-templates select="dc:identifier" mode="nysl"/>
      <xsl:apply-templates select="dc:rights"/>
      <xsl:apply-templates select="dc:subject"/>


      <xsl:apply-templates select="dc:coverage"/>
      <xsl:apply-templates select="dc:type" mode="esdn"/>
      <!-- hard code ownership note -->
      <note type="ownership">New York State Library</note>
     </mods>
  </xsl:template>
  
  <!-- ESDN utility templates -->
  <xsl:include href="esdn_templates.xsl"/>
  
  <!-- dublin core field templates -->
  <xsl:include href="oaidctomods_cdmbase.xsl"/>
  
  <!-- reference URL, thumbnail URL --> 
  <xsl:include href="oaidctomods_cdm6.5.xsl"/>
  
  <!-- collection-specific templates start here --> 
  <xsl:template match="dc:creator" mode="nysl">
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
    
  <xsl:template match="dc:title" mode="nysl">
    <xsl:if test="normalize-space(.)!=''">
      <!-- strip out dc:alternative child -->
      <titleInfo><title><xsl:value-of select="normalize-space(./text())"/></title></titleInfo> <!--title-->
    </xsl:if>
  </xsl:template>
  
  <xsl:template match="dc:identifier" mode="nysl">
    <xsl:variable name="idvalue" select="normalize-space(.)"/>
    <xsl:if test="starts-with($idvalue,'http')">
      <!-- add URL wrapped in simple identifier wrapper. We override the other template to add this one item. -->
      <identifier><xsl:value-of select="$idvalue"/></identifier>
    </xsl:if>
  </xsl:template>
</xsl:stylesheet>

