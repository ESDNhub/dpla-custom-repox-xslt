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

      <!-- HRVH uses 'unknown' for dc:creator when well, unknown. Ignore it if present.-->
      <xsl:if test="lower-case(normalize-space(dc:creator)) != 'unknown'">
        <xsl:apply-templates select="dc:creator"/>
      </xsl:if>

      <!-- HRVH uses 'unknown' for dc:creator when well, unknown. Ignore it if present.-->
      <xsl:if test="lower-case(normalize-space(dc:contributor)) != 'unknown'">
        <xsl:apply-templates select="dc:contributor"/>
      </xsl:if>

      <xsl:if test="normalize-space(dc:date) != '' or normalize-space(dc:publisher) != ''">
        <originInfo>
          <xsl:if test="lower-case(normalize-space(dc:date)) != 'unknown'">
            <xsl:apply-templates select="dc:date"/>
          </xsl:if>
          <xsl:if test="lower-case(normalize-space(dc:publisher)) != 'unknown'">
            <xsl:apply-templates select="dc:publisher"/>
          </xsl:if>
        </originInfo>
      </xsl:if>

      <xsl:apply-templates select="dc:description"/>
      <xsl:apply-templates select="dc:format" mode="hrvh"/>

      <!-- templates we override get a mode attribute with the setSpec of the collection -->
      <xsl:apply-templates select="dc:identifier" mode="esdn"/>

      <xsl:apply-templates select="dc:language"/>
      <xsl:apply-templates select="dc:rights"/>

      <xsl:apply-templates select="dc:subject" mode="hrvh"/>




      <xsl:apply-templates select="dc:coverage" mode="hhs"/>
      <xsl:apply-templates select="dc:type" mode="esdn"/>

      <xsl:call-template name="intermediate-provider">
        <xsl:with-param name="council">Southeastern New York Library Resources
          Council</xsl:with-param>
      </xsl:call-template>
      <xsl:call-template name="owner-note">
        <xsl:with-param name="owner">Historic Huguenot Street</xsl:with-param>
      </xsl:call-template>
      <xsl:apply-templates select="dc:relation"/>
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
