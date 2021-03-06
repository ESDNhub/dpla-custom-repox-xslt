<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:oai_dc='http://www.openarchives.org/OAI/2.0/oai_dc/' xmlns:dc="http://purl.org/dc/elements/1.1/" version="2.0" xmlns="http://www.loc.gov/mods/v3" xmlns:xlink="http://www.w3.org/1999/xlink">
  <xsl:output omit-xml-declaration="yes" indent="yes"/>
  
<!-- Use the identity template, then we need to remove records
     without a dc:coverage element. We do this to remove errant
     page-level records in the collection. We only want to pass
     object-level records, which have fuller metadata than the
     page-level records. We also want to keep deleted records, so we
     also look for records that have no status element in the header.
-->
  <xsl:template match="text()|@*"/>
  <xsl:template match="//record[./header[not(exists(./@status))]][not(exists(.//dc:coverage))]"/>
  <!-- Now process the remaining oai_dc:dc elements, which have dc:coverage, i.e. object-level records. -->
  <xsl:template match="//record//oai_dc:dc[exists(dc:coverage)]">
    <xsl:apply-templates select="./oai_dc:dc"/>
  </xsl:template>
  
  <xsl:template match="//oai_dc:dc">
  <mods xmlns="http://www.loc.gov/mods/v3" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xlink="http://www.w3.org/1999/xlink" xsi:schemaLocation="http://www.loc.gov/mods/v3 http://www.loc.gov/standards/mods/v3/mods-3-4.xsd" version="3.4">      
      <xsl:apply-templates select="dc:title"/>
      
      <xsl:if test="lower-case(normalize-space(dc:creator)) != 'unknown'">
        <xsl:apply-templates select="dc:creator"/>
      </xsl:if>
      
      <xsl:if test="normalize-space(dc:date[1]) != '' or normalize-space(dc:publisher) != ''">
        <originInfo>
          <xsl:if test="lower-case(normalize-space(dc:date[1])) != 'unknown'">
            <xsl:apply-templates select="dc:date[1]" mode="esdn"/>
          </xsl:if>
          <xsl:if test="lower-case(normalize-space(dc:publisher)) != 'unknown'">
            <xsl:apply-templates select="dc:publisher"/>
          </xsl:if>
        </originInfo>
      </xsl:if>
      
      <xsl:apply-templates select="dc:description"/>

      <!-- templates we override get a mode attribute with the setSpec of the collection -->
      <xsl:apply-templates select="dc:identifier" mode="esdn"/>
      <xsl:apply-templates select="dc:rights" mode="nyh"/>
      <xsl:apply-templates select="dc:subject" mode="nyh"/>
      <xsl:apply-templates select="dc:language" mode="sllboces"/>

      <xsl:apply-templates select="dc:coverage" mode="nyh"/>

      <xsl:if test="normalize-space(dc:type) !=''">
        <xsl:apply-templates select="dc:type" mode="sllboces"/>
      </xsl:if>
      
      <!-- hard code collection and ownership note -->
      
      <xsl:element name="relatedItem" namespace="http://www.loc.gov/mods/v3">
        <xsl:attribute name="type">host</xsl:attribute>
        <xsl:attribute name="displayLabel">Collection</xsl:attribute>
        <xsl:element name="titleInfo" namespace="http://www.loc.gov/mods/v3">
          <xsl:element name="title" namespace="http://www.loc.gov/mods/v3">St. Lawrence-Lewis School Library System Collection</xsl:element>
        </xsl:element>
      </xsl:element>
      
      <xsl:call-template name="intermediate-provider"><xsl:with-param name="council">Northern New York Library Network</xsl:with-param></xsl:call-template><xsl:call-template name="owner-note">
        <xsl:with-param name="owner">St. Lawrence-Lewis School Library System</xsl:with-param>
      </xsl:call-template>
    <xsl:apply-templates select="dc:relation" mode="esdn"/>
    </mods>
  </xsl:template>
  
  <!-- ESDN utility templates -->
  <xsl:include href="nyh_templates.xsl"/>
<xsl:include href="esdn_templates.xsl"/>
  
  <!-- dublin core field templates -->
  <xsl:include href="oaidctomods_cdmbase.xsl"/>
  
  <!-- reference URL, thumbnail URL --> 
  <xsl:include href="oaidctomods_cdm6.5.xsl"/>
  
  <!-- collection-specific templates start here -->
  
  <xsl:template match="dc:type" mode="sllboces">
    <xsl:element name="typeOfResource">
      <xsl:text>text</xsl:text>
    </xsl:element>
  </xsl:template>
  
  <xsl:template match="dc:language" mode="sllboces">
    <xsl:choose>
      <xsl:when test="contains(normalize-space(lower-case(.)), 'english')">
        <xsl:element name="language">
          <xsl:element name="languageTerm">
            <xsl:text>eng</xsl:text>
          </xsl:element>
        </xsl:element>
      </xsl:when>
      <xsl:otherwise>
        <xsl:apply-templates select="."/>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>
  
</xsl:stylesheet>

