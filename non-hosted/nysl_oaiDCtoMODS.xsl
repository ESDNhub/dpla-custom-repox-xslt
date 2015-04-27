<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:oai-pmh="http://www.openarchives.org/OAI/2.0/" xmlns:oai_dc='http://www.openarchives.org/OAI/2.0/oai_dc/' xmlns:dc="http://purl.org/dc/elements/1.1/" version="2.0" xmlns="http://www.loc.gov/mods/v3">
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
      <xsl:if test="not(contains(lower-case(normalize-space(dc:contributor)),'unknown'))">
        <xsl:apply-templates select="dc:contributor" mode="nysl"/>
      </xsl:if>
      
      <xsl:if test="dc:publisher != ''">
        <originInfo>
           <xsl:if test="lower-case(normalize-space(dc:publisher)) != 'unknown'">
            <xsl:apply-templates select="dc:publisher"/>
          </xsl:if>
        </originInfo>
      </xsl:if>
      
      <xsl:apply-templates select="dc:description"/>
      <xsl:apply-templates select="dc:language" mode="nysl"/>
      
      <!-- templates we override get a mode attribute with the setSpec of the collection -->
      <xsl:apply-templates select="dc:identifier" mode="nysl"/>
      <xsl:element name="accessCondition">
        <xsl:text>
          This document or image is provided for education and research purposes. Rights may be reserved. Responsibility for securing permissions to distribute, publish, reproduce or use it in any way rests with the user. For additional information, see the New York State Library's Copyright and Use Statement, available at http://www.nysl.nysed.gov/scandocs/rights.htm.
        </xsl:text>
      </xsl:element>
      <xsl:apply-templates select="dc:subject"/>


      <xsl:apply-templates select="dc:coverage"/>
      <xsl:apply-templates select="dc:type" mode="esdn"/>
      
    <!-- hard code ownership note -->
      <xsl:call-template name="owner-note">
        <xsl:with-param name="owner">New York State Library</xsl:with-param>
      </xsl:call-template>

    </mods>
  </xsl:template>
  
  
  <!-- ESDN utility templates -->
  <xsl:include href="esdn_templates.xsl"/>
    
  <!-- dublin core field templates -->
  <xsl:include href="oaidctomods_base.xsl"/>
  
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
    
  <xsl:template match="dc:contributor" mode="nysl">
    <xsl:variable name="contriblist" select="tokenize(normalize-space(.), ';')"/>
    <xsl:if test="count($contriblist) > 0">
      <xsl:for-each select="$contriblist">
        <name>
          <namePart>
            <xsl:value-of select="normalize-space(.)"/> <!--contributor-->
          </namePart>
          <role><roleTerm>contributor</roleTerm></role>
        </name>            
      </xsl:for-each>
    </xsl:if>
  </xsl:template>
  
  <xsl:template match="dc:title" mode="nysl">
    <xsl:if test="normalize-space(.)!=''">
      <!-- strip out dc:alternative child -->
      <titleInfo><title><xsl:value-of select="normalize-space(./text())"/></title></titleInfo> <!--title-->
    </xsl:if>
  </xsl:template>
  
  <xsl:template match="dc:identifier" mode="nysl">
    <xsl:variable name="idvalue" select="normalize-space(.)"/>
    <xsl:choose>
      <xsl:when test="contains($idvalue, 'guest.jsp')">
        <xsl:element name="location">
          <xsl:element name="url">
            <xsl:attribute name="usage">primary display</xsl:attribute>
            <xsl:attribute name="access">object in context</xsl:attribute>
            <xsl:value-of select="$idvalue"/>
          </xsl:element>
        </xsl:element>
      </xsl:when>
      <xsl:when test="contains($idvalue, 'pdfopener')">
        <xsl:element name="location">
          <xsl:element name="url">
            <xsl:attribute name="access">preview</xsl:attribute>
            <xsl:value-of select="$idvalue"/>
          </xsl:element>
        </xsl:element>
      </xsl:when>
      <xsl:otherwise/>
    </xsl:choose>
  </xsl:template>

<xsl:template match="dc:language" mode="nysl">
  <xsl:variable name="langlist" select="tokenize(normalize-space(lower-case(.)), ';')"/>
  <xsl:if test="count($langlist) > 0">
    <xsl:element name="language">
      <xsl:for-each select="$langlist">
        <xsl:choose>
          <xsl:when test="normalize-space(lower-case(.))='english'">
            <xsl:element name="languageTerm">eng</xsl:element>
        </xsl:when>
        <xsl:otherwise>
          <xsl:value-of select="."/>
        </xsl:otherwise>
        </xsl:choose>
      </xsl:for-each>
    </xsl:element>
  </xsl:if>
</xsl:template>
</xsl:stylesheet>
