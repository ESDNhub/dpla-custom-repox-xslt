<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:oai_dc='http://www.openarchives.org/OAI/2.0/oai_dc/' xmlns:dc="http://purl.org/dc/elements/1.1/" version="2.0" xmlns="http://www.loc.gov/mods/v3">
  <xsl:output omit-xml-declaration="yes" indent="yes"/>
  
  <xsl:template match="text()|@*"/>
  <xsl:template match="//oai_dc:dc">
    <mods xmlns="http://www.loc.gov/mods/v3" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.loc.gov/mods/v3 http://www.loc.gov/standards/mods/v3/mods-3-4.xsd" version="3.4">      

      <xsl:apply-templates select="dc:title"/>
      
      <!-- HRVH uses 'unknown' for dc:creator when well, unknown. Ignore it if present.-->
      <xsl:apply-templates select="dc:creator[not(contains(lower-case(text()), 'unknown'))]"/>
      
      <xsl:if test="dc:publisher != '' or dc:date != ''">
        <originInfo>
          <xsl:apply-templates select="dc:date[not(contains(lower-case(text()), 'unknown'))]" mode="esdn"/>
          <xsl:apply-templates select="dc:publisher[not(contains(lower-case(text()), 'unknown'))]"/>
        </originInfo>
      </xsl:if>
      
      <xsl:apply-templates select="dc:description"/>
      <xsl:apply-templates select="dc:identifier" mode="nyh_nolocal"/>
      <xsl:apply-templates select="dc:rights" mode="nyh"/>
      <xsl:apply-templates select="dc:subject" mode="libertyhs"/>
      
      <xsl:element name="physicalDescription" namespace="http://www.loc.gov/mods/v3">
        <xsl:apply-templates select="dc:source" mode="libertyhs"/>
      </xsl:element>
      <xsl:apply-templates select="dc:format" mode="nyh"/> 
      
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
  <xsl:include href="nyh_templates.xsl"/>
  
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
              <xsl:element name="namePart"><xsl:value-of select="normalize-space(.)"/></xsl:element>
            </xsl:element>
          </xsl:element>
        </xsl:for-each>
      </xsl:when>
      <xsl:otherwise/>
    </xsl:choose>
  </xsl:template>
  
  <xsl:template match="dc:source" mode="libertyhs">
    <xsl:variable name="elm_list" select="tokenize(normalize-space(.), ';')"/>
    <xsl:element name="form" namespace="http://www.loc.gov/mods/v3"><xsl:value-of select="normalize-space($elm_list[1])"/></xsl:element>
    <xsl:element name="extent" namespace="http://www.loc.gov/mods/v3"><xsl:value-of select="normalize-space(concat($elm_list[2], ';', $elm_list[3]))"/></xsl:element>
  </xsl:template>
  
</xsl:stylesheet>
