<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:oai-pmh="http://www.openarchives.org/OAI/2.0/" xmlns:oai_dc='http://www.openarchives.org/OAI/2.0/oai_dc/' xmlns:dc="http://purl.org/dc/elements/1.1/" version="2.0" xmlns="http://www.loc.gov/mods/v3">
  <xsl:output omit-xml-declaration="yes" indent="yes"/>
  <xsl:template match="text()|@*"/>
  <xsl:template match="//oai_dc:dc">
    <mods xmlns="http://www.loc.gov/mods/v3" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.loc.gov/mods/v3 http://www.loc.gov/standards/mods/v3/mods-3-4.xsd" version="3.4">      
      <xsl:apply-templates select="dc:title"/>
      
      <xsl:if test="dc:publisher != '' or dc:date != ''">
        <originInfo>
          <xsl:apply-templates select="dc:date[1][lower-case(./text())!='unknown']" mode="esdn"/>
          <xsl:apply-templates select="dc:publisher[lower-case(./text())!='unknown']"/>
        </originInfo>
      </xsl:if>
      <xsl:apply-templates select="dc:description"/>
     
      <xsl:if test="dc:format != ''">
        <xsl:element name="physicalDescription">
          <xsl:apply-templates select="dc:format"/>
        </xsl:element>
      </xsl:if>
      
      <!-- preview and link back in separate dc:identifier elements -->
      
      <xsl:element name="location" namespace="http://www.loc.gov/mods/v3">
        <xsl:element name="url">
          <xsl:attribute name="usage">primary display</xsl:attribute>
          <xsl:attribute name="access">object in context</xsl:attribute>
          <xsl:value-of select="normalize-space(dc:identifier[1])"/>
        </xsl:element>
      </xsl:element>
      <xsl:element name="location" namespace="http://www.loc.gov/mods/v3">
         <xsl:element name="url">
         <xsl:attribute name="access">preview</xsl:attribute>
         <xsl:value-of select="normalize-space(dc:identifier[2])"/>
         </xsl:element>
      </xsl:element>
      
      <xsl:apply-templates select="dc:rights"/>
      <xsl:apply-templates select="dc:creator"/>
      <xsl:apply-templates select="dc:contributor"/>
      <xsl:apply-templates select="dc:subject"/>
      <xsl:apply-templates select="dc:type" mode="esdn"/>
      <xsl:apply-templates select="dc:language" mode="harrison"/>
      
      <!-- hard code collection and ownership note -->
      
      <xsl:element name="relatedItem" namespace="http://www.loc.gov/mods/v3">
        <xsl:attribute name="type">host</xsl:attribute>
        <xsl:attribute name="displayLabel">Collection</xsl:attribute>
        <xsl:element name="titleInfo" namespace="http://www.loc.gov/mods/v3">
          <xsl:element name="title" namespace="http://www.loc.gov/mods/v3">Harrison Public Library-Harrison Remembers Digital Collection</xsl:element>
        </xsl:element>
      </xsl:element>

      <xsl:call-template name="owner-note">
        <xsl:with-param name="owner">Harrison Public Library</xsl:with-param>
      </xsl:call-template>
      <xsl:call-template name="intermediate-provider">
        <xsl:with-param name="council">Metropolitan New York Library Council</xsl:with-param>
      </xsl:call-template>
    </mods>
  </xsl:template>
  
  <!-- Collection-specific templates -->
  
  <xsl:template match="dc:language" mode="harrison">
    <xsl:element name="language" namespace="http://www.loc.gov/mods/v3">
      <xsl:element name="languageTerm">
      <xsl:choose>
        <xsl:when test="normalize-space(lower-case(.))='en-us'">eng</xsl:when>
        <xsl:otherwise><xsl:value-of select="normalize-space(.)"/></xsl:otherwise>
      </xsl:choose>
      </xsl:element>
    </xsl:element>
  </xsl:template>
  
  <!-- dc:relation to Description -->
  
  <xsl:template match="dc:relation" mode="harrison">
    <xsl:if test="normalize-space(.)!=''">
      <note type="content"><xsl:value-of select="normalize-space(.)"/></note> 
    </xsl:if>
  </xsl:template>
  
  <xsl:template match="dc:source" mode="harrison">
    <xsl:variable name="relationvalue" select="normalize-space(.)"/>
    <xsl:if test="normalize-space(.)!=''">
      <xsl:choose>
        <xsl:when test="contains(.,'http')"> 
          <relatedItem><location><url><xsl:value-of select="normalize-space(.)"/></url></location></relatedItem> <!--dc:source to relatedItem/location/url when value contains link-->
        </xsl:when>
        <xsl:otherwise>
          <relatedItem><titleInfo><title><xsl:value-of select="normalize-space(.)"/></title></titleInfo></relatedItem> <!--dc:source to relatedItem/titleInfo/title-->
        </xsl:otherwise>
      </xsl:choose>
    </xsl:if>  
  </xsl:template>

  <!-- ESDN utility templates -->
  <xsl:include href="esdn_templates.xsl"/>
    
  <!-- dublin core field templates -->
  <xsl:include href="oaidctomods_base.xsl"/>
  
</xsl:stylesheet>

