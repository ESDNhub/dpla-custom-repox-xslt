<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:oai_dc='http://www.openarchives.org/OAI/2.0/oai_dc/' xmlns:dc="http://purl.org/dc/elements/1.1/" version="2.0" xmlns="http://www.loc.gov/mods/v3">
  <xsl:output omit-xml-declaration="yes" indent="yes"/>
  
  <xsl:template match="text()|@*"/>
  <xsl:template match="//oai_dc:dc">
    <mods xmlns="http://www.loc.gov/mods/v3" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.loc.gov/mods/v3 http://www.loc.gov/standards/mods/v3/mods-3-4.xsd" version="3.4">      
      <xsl:apply-templates select="dc:title"/>
      
      <!-- Check dc:creator for 'unknown'. Ignore it if present.-->
      <xsl:for-each select="dc:creator">
        <xsl:if test="lower-case(normalize-space(.)) != 'unknown'">
          <xsl:apply-templates select="."/>
        </xsl:if>
      </xsl:for-each>
      
      <!-- Check dc:publisher for library name. Ignore it if present.-->
      <xsl:if test="count(not(contains(lower-case(dc:publisher/text()), 'freeport memorial library'))) > 1">
        <originInfo>
          <xsl:for-each select="dc:publisher">
            <xsl:if test="lower-case(normalize-space(.)) != 'unknown'">
              <xsl:if test="not(contains(lower-case(.), 'freeport memorial library'))">
                <xsl:apply-templates select="."/>
              </xsl:if>
            </xsl:if>
          </xsl:for-each>
        </originInfo>
      </xsl:if>
      
      
      <!-- templates we override get a mode attribute with the setSpec of the collection -->
      <xsl:apply-templates select="dc:identifier" mode="esdn"/>
      <xsl:apply-templates select="dc:rights"/>
      <xsl:apply-templates select="dc:language" mode="freepboard"/>

      <xsl:apply-templates select="dc:coverage" mode="esdn"/>
      <!-- hard code ownership note -->
      <xsl:call-template name="intermediate-provider"><xsl:with-param name="council">Long Island Library Resources Council</xsl:with-param></xsl:call-template><xsl:call-template name="owner-note"><xsl:with-param name="owner">Freeport Memorial Library</xsl:with-param></xsl:call-template>
     <xsl:apply-templates select="dc:relation" mode="esdn"/></mods>
  </xsl:template>
  
  <!-- ESDN utility templates -->
  <xsl:include href="esdn_templates.xsl"/>
  
  <!-- dublin core field templates -->
  <xsl:include href="oaidctomods_cdmbase.xsl"/>
  
  <!-- reference URL, thumbnail URL --> 
  <xsl:include href="oaidctomods_cdm6.5.xsl"/>
  
  <!-- collection-specific templates start here --> 
  <xsl:template match="dc:language" mode="freepboard">
    <xsl:variable name="languagevalue" select="normalize-space(.)"/>
    <xsl:for-each select="tokenize($languagevalue,';')">
      <xsl:if test="normalize-space(.)!=''">
        <xsl:choose>
          <xsl:when test=".='English'">
            <language><languageTerm><xsl:text>eng</xsl:text></languageTerm></language>
          </xsl:when>
          <xsl:otherwise>
            <language><languageTerm><xsl:value-of select="normalize-space(.)"/></languageTerm></language><!--language-->
          </xsl:otherwise>
        </xsl:choose>
      </xsl:if>
    </xsl:for-each>
  </xsl:template>
  
</xsl:stylesheet>

