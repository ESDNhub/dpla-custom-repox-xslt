<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
  xmlns:oai_dc="http://www.openarchives.org/OAI/2.0/oai_dc/"
  xmlns:xlink="http://www.w3.org/1999/xlink"
  xmlns:dc="http://purl.org/dc/elements/1.1/" version="2.0" xmlns="http://www.loc.gov/mods/v3">
  <xsl:output omit-xml-declaration="yes" indent="yes"/>

  <xsl:template match="text() | @*"/>
  <xsl:template match="//oai_dc:dc">
    <mods xmlns="http://www.loc.gov/mods/v3" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
      xsi:schemaLocation="http://www.loc.gov/mods/v3 http://www.loc.gov/standards/mods/v3/mods-3-4.xsd"
      version="3.4">
      <xsl:apply-templates select="dc:title"/>
      <xsl:apply-templates select="dc:description"/>
      
      <xsl:if test="exists(dc:language)">
        <xsl:element name="language" namespace="http://www.loc.gov/mods/v3">
          <xsl:for-each select="tokenize(dc:language, ';')">
            <xsl:element name="languageTerm" namespace="http://www.loc.gov/mods/v3">
              <xsl:attribute name="type">code</xsl:attribute>
              <xsl:attribute name="authority">iso639-3</xsl:attribute>
              <xsl:call-template name="iso6393-codes">
                <xsl:with-param name="lval">
                  <xsl:value-of select="lower-case(normalize-space(.))"/>
                </xsl:with-param>
              </xsl:call-template>
            </xsl:element>
          </xsl:for-each>
        </xsl:element>
      </xsl:if>
      
      <xsl:apply-templates select="dc:rights" mode="esdn"/>
      <xsl:apply-templates select="dc:creator"/>
      <xsl:apply-templates select="dc:contributor"/>
      <originInfo>
        <xsl:apply-templates select="dc:date" mode="esdn"/>
        <xsl:apply-templates select="dc:publisher"/>
      </originInfo>
      <physicalDescription>
        <xsl:apply-templates select="dc:format" mode="carnegie"/>
      </physicalDescription>
      <xsl:apply-templates select="dc:subject"/>
      <xsl:apply-templates select="dc:coverage" mode="esdn"/>
      <xsl:apply-templates select="dc:type" mode="esdn"/>
      <xsl:apply-templates select="dc:identifier" mode="carnegie"/>

      <!-- hard code collection and ownership note -->

      <xsl:element name="relatedItem" namespace="http://www.loc.gov/mods/v3">
        <xsl:attribute name="type">host</xsl:attribute>
        <xsl:attribute name="displayLabel">Collection</xsl:attribute>
        <xsl:element name="titleInfo" namespace="http://www.loc.gov/mods/v3">
          <xsl:element name="title" namespace="http://www.loc.gov/mods/v3">Carnegie Hall-Booking Collection</xsl:element>
        </xsl:element>
      </xsl:element>

      <xsl:call-template name="owner-note">
        <xsl:with-param name="owner">Carnegie Hall</xsl:with-param>
      </xsl:call-template>
      <xsl:call-template name="intermediate-provider">
        <xsl:with-param name="council">Metropolitan New York Library Council</xsl:with-param>
      </xsl:call-template>
    </mods>
  </xsl:template>

  <!-- Collection specific templates -->

  <xsl:template match="dc:format" mode="carnegie">
    <xsl:variable name="formatvalue" select="normalize-space(.)"/>
    <xsl:for-each select="tokenize($formatvalue, ';')">
      <xsl:if test="normalize-space(.) != ''">
        <xsl:choose>
          <!-- check to see if there are any numbers in the format value, put in extent -->
          <xsl:when test='matches(., "\d+")'>
            <extent>
              <xsl:value-of select="concat(normalize-space(.), ' pages')"/>
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
  
  <xsl:template match="dc:identifier" mode="carnegie">
    <xsl:variable name="idvalue" select="normalize-space(.)"/>
    <xsl:if test="normalize-space(.)!=''">
      <xsl:choose>
        <xsl:when test="contains(.,'aspx')"> 
          <xsl:element name="location" namespace="http://www.loc.gov/mods/v3">
            <xsl:element name="url">
              <xsl:attribute name="access">preview</xsl:attribute>
              <xsl:value-of
                select="."
              />
            </xsl:element>
          </xsl:element>
        </xsl:when>
        <xsl:when test="contains(., 'waystation')"/>
        <xsl:when test="contains(., 'html')">
          <xsl:element name="location" namespace="http://www.loc.gov/mods/v3">
            <xsl:element name="url">
              <xsl:attribute name="usage">primary display</xsl:attribute>
              <xsl:attribute name="access">object in context</xsl:attribute>
              <xsl:value-of select="$idvalue"/>
            </xsl:element>
          </xsl:element>
        </xsl:when>
        <xsl:otherwise>
          <xsl:element name="identifier" namespace="http://www.loc.gov/mods/v3">
            <xsl:value-of select="normalize-space(.)"/>
          </xsl:element>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:if>
  </xsl:template>

  <!-- ESDN utility templates -->
  <xsl:include href="esdn_templates.xsl"/>

  <!-- dublin core field templates -->
  <xsl:include href="oaidctomods_base.xsl"/>
  
  <!-- dublin core field templates -->
  <xsl:include href="iso639x.xsl"/>
  
</xsl:stylesheet>
