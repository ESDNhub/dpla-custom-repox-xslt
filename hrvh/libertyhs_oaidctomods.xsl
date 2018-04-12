<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:oai_dc='http://www.openarchives.org/OAI/2.0/oai_dc/' xmlns:dc="http://purl.org/dc/elements/1.1/" version="2.0" xmlns="http://www.loc.gov/mods/v3">
  <xsl:output omit-xml-declaration="yes" indent="yes"/>
  
  <xsl:template match="text()|@*"/>
  <xsl:template match="//oai_dc:dc">
    <mods xmlns="http://www.loc.gov/mods/v3" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.loc.gov/mods/v3 http://www.loc.gov/standards/mods/v3/mods-3-4.xsd" version="3.4">      

      <xsl:apply-templates select="dc:title"/>
      
      <!-- HRVH uses 'unknown' for dc:creator when well, unknown. Ignore it if present.-->
      <xsl:if test="lower-case(normalize-space(dc:creator)) != 'unknown'">
        <xsl:apply-templates select="dc:creator"/>
      </xsl:if>
      
      <xsl:if test="dc:publisher != '' or dc:date != ''">
        <originInfo>
          <xsl:apply-templates select="dc:date[lower-case(./text())!='unknown']" mode="esdn"/>
          <xsl:apply-templates select="dc:publisher[lower-case(./text())!='unknown']"/>
        </originInfo>
      </xsl:if>
      
      <xsl:apply-templates select="dc:description"/>
      <xsl:apply-templates select="dc:identifier" mode="esdn"/>
      <xsl:apply-templates select="dc:rights" mode="hrvh"/>
      <xsl:apply-templates select="dc:subject" mode="libertyhs"/>
      
      <physicalDescription>
      <xsl:apply-templates select="dc:format" mode="libertyhs"/>  
      </physicalDescription>
      
      <xsl:call-template name="add_genre">
        <xsl:with-param name="format_elm">
          <xsl:value-of select="./dc:format[position()=1]"/>
        </xsl:with-param>
      </xsl:call-template>
      
      <xsl:apply-templates select="dc:coverage"/>
      <xsl:apply-templates select="dc:type" mode="esdn"/>
      <xsl:apply-templates select="dc:language" mode="esdn"/>
     
      <!-- hard code collection and ownership note -->
            <xsl:call-template name="intermediate-provider"><xsl:with-param name="council">Southeastern New York Library Resources Council</xsl:with-param></xsl:call-template><xsl:call-template name="owner-note">
        <xsl:with-param name="owner">Liberty High School</xsl:with-param>
      </xsl:call-template>
      
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
  <xsl:include href="iso639x.xsl"/>
  
  <!-- collection-specific templates start here -->
  <xsl:template match="dc:subject" mode="libertyhs">
    <xsl:choose>
      <xsl:when test="position()=1">
        <xsl:for-each select="tokenize(., ';')">
          <xsl:element name="subject">
            <xsl:element name="topic">
              <xsl:attribute name="authority">lctgm</xsl:attribute>
              <xsl:value-of select="normalize-space(.)"/>
            </xsl:element>
          </xsl:element>
        </xsl:for-each>
      </xsl:when>
      <xsl:when test="position()=2">
        <xsl:for-each select="tokenize(., ';')">
          <xsl:element name="subject">
            <xsl:element name="name">
              <xsl:attribute name="type">corporate</xsl:attribute>
              <xsl:value-of select="normalize-space(.)"/>
            </xsl:element>
          </xsl:element>
        </xsl:for-each>
      </xsl:when>
      <xsl:otherwise/>
    </xsl:choose>
  </xsl:template>
  
  <xsl:template match="dc:format" mode="libertyhs">
    <xsl:choose>
      <xsl:when test="position()=1"/>
      <xsl:when test="position()=2">
        <xsl:variable name="elms" select="tokenize(., ';')"/>
        <xsl:element name="form" namespace="http://www.loc.gov/mods/v3">
          <xsl:value-of select="normalize-space($elms[1])"/>
        </xsl:element>
        <xsl:element name="extent" namespace="http://www.loc.gov/mods/v3">
          <xsl:value-of select="concat(normalize-space($elms[2]), '; ', $elms[3])"/>
        </xsl:element>
      </xsl:when>
      <xsl:otherwise/>
    </xsl:choose>
    
  </xsl:template>
  
  <xsl:template name="add_genre">
    <xsl:param name="format_elm"/>
    <xsl:variable name="format_text" select="$format_elm/text()"/>
    <xsl:element name="genre" namespace="http://www.loc.gov/mods/v3">
      <xsl:attribute name="authority">aat</xsl:attribute>
      <xsl:choose>
        <xsl:when test="lower-case($format_text)='school yearbooks'">yearbooks</xsl:when>
        <xsl:otherwise>
          <xsl:value-of select="normalize-space($format_text)"/>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:element>
    
  </xsl:template>
  
</xsl:stylesheet>
