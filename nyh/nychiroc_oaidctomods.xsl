<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:oai_dc='http://www.openarchives.org/OAI/2.0/oai_dc/' xmlns:dc="http://purl.org/dc/elements/1.1/" version="2.0" xmlns="http://www.loc.gov/mods/v3">
  <xsl:output omit-xml-declaration="yes" indent="yes"/>
  <xsl:template match="text()|@*"/>
  <xsl:template match="//oai_dc:dc">
    
    <mods xmlns="http://www.loc.gov/mods/v3" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.loc.gov/mods/v3 http://www.loc.gov/standards/mods/v3/mods-3-4.xsd" version="3.4">      
      
      <xsl:apply-templates select="dc:title"/>
      
      <xsl:apply-templates select="dc:contributor"/>
      
      <xsl:apply-templates select="dc:creator"/>
      
      <xsl:element name="originInfo" namespace="http://www.loc.gov/mods/v3">
        <xsl:apply-templates select="dc:date" mode="esdn"/>
        <xsl:apply-templates select="dc:publisher"/>
      </xsl:element>
      
      <xsl:apply-templates select="dc:description"/>
      
      <!-- Any time we're wrapping at this level, check for a value, so that we don't
        output empty elements -->      
      <xsl:if test="normalize-space(dc:source) != ''">
        <xsl:apply-templates select="dc:source" mode="nychiroc"/>
      </xsl:if>
      <xsl:apply-templates select="dc:format[1]" mode="nychiroc"/>
      <xsl:apply-templates select="dc:identifier" mode="nychiroc"/>
      <xsl:apply-templates select="dc:language"/>
      <xsl:apply-templates select="dc:rights" mode="nyh"/>    
      <xsl:apply-templates select="dc:subject" mode="nyh"/>
      <xsl:apply-templates select="dc:type" mode="esdn"/>
      <xsl:apply-templates select="dc:coverage" mode="esdn"/>
      <xsl:call-template name="intermediate-provider"><xsl:with-param name="council">South Central Regional Library Council</xsl:with-param></xsl:call-template>
      <xsl:call-template name="owner-note"><xsl:with-param name="owner">New York Chiropractic College</xsl:with-param></xsl:call-template> <!-- owning institution -->
   
    </mods>
  </xsl:template>
  
  <!-- ESDN utility templates --> 
  <xsl:include href="nyh_templates.xsl"/>
<xsl:include href="esdn_templates.xsl"/>
  
  <!-- dublin core field templates -->
  <xsl:include href="oaidctomods_cdmbase.xsl"/>
  
  <!-- reference URL, thumbnail URL --> 
  <xsl:include href="oaidctomods_cdm6.5.xsl"/>
  
  <!-- institution-specific templates -->
  <xsl:template match="dc:source" mode="nychiroc">
    <xsl:variable name="source_list" select="tokenize(., ';')"/>
    <xsl:element name="physicalDescription" namespace="http://www.loc.gov/mods/v3">
      <xsl:element name="form" namespace="http://www.loc.gov/mods/v3"><xsl:value-of select="normalize-space(concat($source_list[1], '; ', $source_list[2]))"/></xsl:element>
      <xsl:element name="extent" namespace="http://www.loc.gov/mods/v3"><xsl:value-of select="normalize-space($source_list[3])"/></xsl:element>
    </xsl:element>
  </xsl:template>
  
  <xsl:template match="dc:format" mode="nychiroc">
    <xsl:variable name="formatvalue" select="normalize-space(.)"/>
    <xsl:for-each select="tokenize($formatvalue,';')">
      <xsl:if test="normalize-space(.)!=''">
        <xsl:element name="genre" namespace="http://www.loc.gov/mods/v3"><xsl:value-of select="normalize-space(.)"/></xsl:element> <!--format-->
      </xsl:if>
    </xsl:for-each>
  </xsl:template>
  
  
  <xsl:template match="dc:identifier" mode="nychiroc">
    <xsl:for-each select="tokenize(., ';')">
      <xsl:if test="normalize-space(.)!=''">
        <xsl:variable name="idvalue" select="normalize-space(.)"/>
        <xsl:choose>
          <xsl:when test="starts-with($idvalue, 'http')">
            <!-- CONTENTdm puts the URI in an <identifier> field in the OAI record -->
            <xsl:element name="location" namespace="http://www.loc.gov/mods/v3">
              <xsl:element name="url">
                <xsl:attribute name="usage">primary display</xsl:attribute>
                <xsl:attribute name="access">object in context</xsl:attribute>
                <xsl:value-of select="$idvalue"/>
              </xsl:element>
            </xsl:element>
            <!-- ref url-->
            <!-- process identifier into CONTENTdm 6.5 thumbnail urls -->
            <xsl:variable name="contentdmroot" select="substring-before($idvalue, '/cdm/ref/')"/>
            <xsl:variable name="recordinfo"
              select="substring-after($idvalue, '/cdm/ref/collection/')"/>
            <xsl:variable name="alias" select="substring-before($recordinfo, '/id/')"/>
            <xsl:variable name="pointer" select="substring-after($recordinfo, '/id/')"/>
            <xsl:element name="location" namespace="http://www.loc.gov/mods/v3">
              <xsl:element name="url">
                <xsl:attribute name="access">preview</xsl:attribute>
                <xsl:value-of
                  select="concat($contentdmroot, '/utils/getthumbnail/collection/', $alias, '/id/', $pointer)"
                />
              </xsl:element>
            </xsl:element>
            <!-- end CONTENTdm thumbnail url processing -->
          </xsl:when>
          <xsl:otherwise>
            <xsl:element name="identifier"><xsl:value-of select="$idvalue"/></xsl:element>
          </xsl:otherwise>
        </xsl:choose>
      </xsl:if>
    </xsl:for-each>
  </xsl:template>
  
</xsl:stylesheet>
