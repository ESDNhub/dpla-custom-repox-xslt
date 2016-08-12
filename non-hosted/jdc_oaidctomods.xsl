<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
  xmlns:oai_dc="http://www.openarchives.org/OAI/2.0/oai_dc/"
  xmlns:dc="http://purl.org/dc/elements/1.1/" version="2.0" xmlns="http://www.loc.gov/mods/v3">
  <xsl:output omit-xml-declaration="yes" indent="yes"/>

  <xsl:template match="text()|@*"/>
  <xsl:template match="//oai_dc:dc">
    <mods xmlns="http://www.loc.gov/mods/v3" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
      xsi:schemaLocation="http://www.loc.gov/mods/v3 http://www.loc.gov/standards/mods/v3/mods-3-4.xsd"
      version="3.4">
      <xsl:apply-templates select="dc:title"/>
      <xsl:apply-templates select="dc:description"/>
      <xsl:apply-templates select="dc:language"/>
      <xsl:apply-templates select="dc:rights"/>
      <xsl:apply-templates select="dc:creator"/>
      <xsl:apply-templates select="dc:contributor"/>
      <originInfo>
        <xsl:apply-templates select="dc:date"/>
        <xsl:apply-templates select="dc:publisher"/>
      </originInfo>
      <physicalDescription>
        <xsl:apply-templates select="dc:format" mode="jdc"/>
      </physicalDescription>
      <xsl:apply-templates select="dc:subject"/>
      <xsl:apply-templates select="dc:coverage" mode="esdn"/>
      <xsl:apply-templates select="dc:type" mode="esdn"/>
      <xsl:apply-templates select="dc:identifier" mode="jdc"/>
      
      <!-- hard code collection and ownership note -->
      
      <xsl:element name="relatedItem" namespace="http://www.loc.gov/mods/v3">
        <xsl:attribute name="type">host</xsl:attribute>
        <xsl:attribute name="displayLabel">Collection</xsl:attribute>
        <xsl:element name="titleInfo" namespace="http://www.loc.gov/mods/v3">
          <xsl:element name="title" namespace="http://www.loc.gov/mods/v3">American Jewish Joint Distribution Committee Archives</xsl:element>
        </xsl:element>
      </xsl:element>

      <xsl:call-template name="owner-note">
        <xsl:with-param name="owner">American Jewish Joint Distribution Committee Archives</xsl:with-param>
      </xsl:call-template>
    </mods>
  </xsl:template>

  <!-- Collection specific templates -->

  <xsl:template match="dc:format" mode="jdc">
    <xsl:variable name="formatvalue" select="normalize-space(.)"/>
    <xsl:for-each select="tokenize($formatvalue,';')">
      <xsl:if test="normalize-space(.)!=''">
        <xsl:choose>
          <!-- check to see if there are any numbers in the format value, put in extent -->
          <xsl:when test='matches(.,"\d+")'>
            <extent>
              <xsl:value-of select="normalize-space(.)"/>
            </extent>
          </xsl:when>
          <!-- otherwise, put it in form -->
          <xsl:otherwise>
            <form>
              <xsl:value-of select="normalize-space(.)"/>
            </form>
          </xsl:otherwise>
        </xsl:choose>
      </xsl:if>
    </xsl:for-each>
  </xsl:template>
  
  <!-- Thumbnail preview, link back to record on JDC Archives site -->
  
  <xsl:template match="dc:identifier" mode="jdc">
    <xsl:if test="(contains(., 'jdc'))">
      <xsl:choose>
        <xsl:when test="(contains(., '.jpg'))">
          <xsl:element name="location" namespace="http://www.loc.gov/mods/v3">
            <xsl:element name="url" namespace="http://www.loc.gov/mods/v3">
              <xsl:attribute name="access">preview</xsl:attribute>
              <xsl:value-of select="normalize-space(.)"/>
            </xsl:element>
          </xsl:element>
        </xsl:when>
        <xsl:otherwise>
          <xsl:element name="location" namespace="http://www.loc.gov/mods/v3">
            <xsl:element name="url" namespace="http://www.loc.gov/mods/v3">
              <xsl:attribute name="usage">primary display</xsl:attribute>
              <xsl:attribute name="access">object in context</xsl:attribute>
              <xsl:value-of select="normalize-space(.)"/>
            </xsl:element>
          </xsl:element>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:if>
  </xsl:template>

  <!-- ESDN utility templates -->
  <xsl:include href="esdn_templates.xsl"/>

  <!-- dublin core field templates -->
  <xsl:include href="oaidctomods_base.xsl"/>

</xsl:stylesheet>
