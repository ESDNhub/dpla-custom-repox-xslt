<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
  xmlns:oai_dc="http://www.openarchives.org/OAI/2.0/oai_dc/"
  xmlns:dc="http://purl.org/dc/elements/1.1/" version="2.0" xmlns="http://www.loc.gov/mods/v3">
  <xsl:output omit-xml-declaration="yes" indent="yes"/>

  <xsl:template match="text() | @*"/>
  <xsl:template match="//oai_dc:dc">
    <mods xmlns="http://www.loc.gov/mods/v3" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
      xsi:schemaLocation="http://www.loc.gov/mods/v3 http://www.loc.gov/standards/mods/v3/mods-3-4.xsd"
      version="3.4">
      <xsl:apply-templates select="dc:title"/>

      <xsl:apply-templates select="dc:creator[not(contains(lower-case(text()), 'unknown'))]"/>
      <xsl:apply-templates select="dc:contributor[not(contains(lower-case(text()), 'unknown'))]"/>

      <xsl:if test="normalize-space(dc:date) != '' or normalize-space(dc:publisher) != ''">
        <xsl:element name="originInfo" namespace="http://www.loc.gov/mods/v3">
          <xsl:apply-templates select="dc:date[not(contains(lower-case(text()), 'unknown'))]"/>
          <!-- Test for exact match here because one valid record starts with Unknown -->
          <xsl:if test="lower-case(normalize-space(dc:publisher)) != 'unknown'">
            <xsl:apply-templates select="dc:publisher"/>
          </xsl:if>
        </xsl:element>
      </xsl:if>

      <xsl:apply-templates select="dc:description"/>
      
      <xsl:apply-templates select="dc:format" mode="nyh"/>

      <!-- templates we override get a mode attribute with the setSpec of the collection -->
      <xsl:apply-templates select="dc:identifier" mode="nyh_nolocal"/>

      <xsl:apply-templates select="dc:language" mode="esdn"/>
      <xsl:apply-templates select="dc:rights" mode="nyh"/>

      <xsl:apply-templates select="dc:subject" mode="nyh"/>

      <xsl:apply-templates select="dc:coverage" mode="hhs"/>
      <xsl:apply-templates select="dc:type" mode="esdn"/>

      <!-- hard code collection and ownership note -->
      
      <xsl:element name="relatedItem" namespace="http://www.loc.gov/mods/v3">
        <xsl:attribute name="type">host</xsl:attribute>
        <xsl:attribute name="displayLabel">Collection</xsl:attribute>
        <xsl:element name="titleInfo" namespace="http://www.loc.gov/mods/v3">
          <xsl:element name="title" namespace="http://www.loc.gov/mods/v3">Historic Huguenot Street</xsl:element>
        </xsl:element>
      </xsl:element>
      
      <xsl:call-template name="intermediate-provider">
        <xsl:with-param name="council">Southeastern New York Library Resources Council</xsl:with-param>
      </xsl:call-template>
      <xsl:call-template name="owner-note">
        <xsl:with-param name="owner">Historic Huguenot Street</xsl:with-param>
      </xsl:call-template>
    </mods>
  </xsl:template>

  <!-- ESDN utility templates -->
  <xsl:include href="esdn_templates.xsl"/>

  <!-- HRVH utility templates -->
  <xsl:include href="nyh_templates.xsl"/>

  <!-- dublin core field templates -->
  <xsl:include href="oaidctomods_cdmbase.xsl"/>

  <!-- reference URL, thumbnail URL -->
  <xsl:include href="oaidctomods_cdm6.5.xsl"/>

  <!-- collection-specific templates start here -->
  
  <!-- deal with assorted values in dc:coverage -->
  
  <xsl:template match="dc:coverage" mode="hhs">
    <xsl:variable name="coveragevalue" select="normalize-space(.)"/>
    <xsl:for-each select="tokenize($coveragevalue, ';')">
      <xsl:if test="normalize-space(.) != ''">
        <xsl:choose>
          <!-- check to see if there are any time periods in this coverage value -->
          <xsl:when test='contains(lower-case(.), "period")'>
              <subject>
                  <temporal>
                    <xsl:value-of select="normalize-space(.)"/>
                  </temporal>
                </subject>
          </xsl:when>
          <xsl:when test='matches(., "\d+")'>
            <subject>
              <temporal>
                <xsl:value-of select="normalize-space(.)"/>
              </temporal>
            </subject>
          </xsl:when>
           <xsl:otherwise>
              <subject>
                  <geographic>
                    <xsl:value-of select="normalize-space(.)"/>
                  </geographic>
                </subject>
              </xsl:otherwise>
            </xsl:choose>
      </xsl:if>
    </xsl:for-each>
  </xsl:template>

</xsl:stylesheet>