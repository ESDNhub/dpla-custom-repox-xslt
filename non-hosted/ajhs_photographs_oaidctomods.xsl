<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
  xmlns:oai-pmh="http://www.openarchives.org/OAI/2.0/"
  xmlns:oai_dc='http://www.openarchives.org/OAI/2.0/oai_dc/'
  xmlns:dc="http://purl.org/dc/elements/1.1/" version="2.0"
  xmlns:xlink="http://www.w3.org/1999/xlink"
  xmlns="http://www.loc.gov/mods/v3">
  <xsl:output omit-xml-declaration="yes" indent="yes"/>
  <xsl:template match="text()|@*"/>
  <xsl:template match="//oai_dc:dc">
    <mods xmlns="http://www.loc.gov/mods/v3" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.loc.gov/mods/v3 http://www.loc.gov/standards/mods/v3/mods-3-4.xsd" version="3.4">      
      <xsl:apply-templates select="dc:title"/>
      
      <xsl:if test="dc:date != 'undated'">
        <originInfo>
          <xsl:apply-templates select="dc:date" mode="ajhs"/>
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
      
      <xsl:apply-templates select="dc:creator" mode="ajhs"/>
      <xsl:apply-templates select="dc:contributor" mode="ajhs"/>
      <xsl:apply-templates select="dc:subject"/>
      <xsl:apply-templates select="dc:coverage[1]"/>
      <xsl:apply-templates select="dc:type" mode="ajhs"/>
      <xsl:apply-templates select="dc:relation"/>
      
      <xsl:element name="accessCondition" namespace="http://www.loc.gov/mods/v3">
        <xsl:attribute name="type">use and reproduction</xsl:attribute>
        <xsl:attribute name="xlink:href">http://rightsstatements.org/vocab/NKC/1.0/</xsl:attribute>
        <xsl:text>No Known Copyright</xsl:text>
      </xsl:element>
      
      <!-- hard code collection and ownership note -->
      
      <xsl:element name="relatedItem" namespace="http://www.loc.gov/mods/v3">
        <xsl:attribute name="type">host</xsl:attribute>
        <xsl:attribute name="displayLabel">Collection</xsl:attribute>
        <xsl:element name="titleInfo" namespace="http://www.loc.gov/mods/v3">
          <xsl:element name="title" namespace="http://www.loc.gov/mods/v3">American Jewish Historical Society - Photographs</xsl:element>
        </xsl:element>
      </xsl:element>

      <xsl:call-template name="owner-note">
        <xsl:with-param name="owner">American Jewish Historical Society</xsl:with-param>
      </xsl:call-template>
      <xsl:call-template name="intermediate-provider">
        <xsl:with-param name="council">Metropolitan New York Library Council</xsl:with-param>
      </xsl:call-template>
    </mods>
  </xsl:template>
  
  <!-- Collection-specific templates -->
  
  <xsl:template match="dc:date" mode="ajhs">
    <xsl:variable name="date_str" select="normalize-space(.)"/>
    <xsl:choose>
      <xsl:when test="matches($date_str, '^\d{4}')">
        <xsl:call-template name="date-to-mods">
          <xsl:with-param name="dateval">
            <xsl:value-of select="substring($date_str, 1, 4)"/>
          </xsl:with-param>
        </xsl:call-template>
      </xsl:when>
      <xsl:when test="not(matches($date_str, '^circa')) and matches($date_str, '\d{4}$')">
        <xsl:call-template name="date-to-mods">
          <xsl:with-param name="dateval">
            <xsl:value-of select="substring($date_str, string-length($date_str) - 3, 4)"/>
          </xsl:with-param>
        </xsl:call-template>
      </xsl:when>
      <xsl:otherwise>
        <xsl:call-template name="date-to-mods">
          <xsl:with-param name="dateval">
            <xsl:value-of select="$date_str"/>
          </xsl:with-param>
        </xsl:call-template>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

  <xsl:template match="dc:type" mode="ajhs">
    <xsl:choose>
      <xsl:when test="position()=2">
        <xsl:element name="genre" namespace="http://www.loc.gov/mods/v3">
          <xsl:value-of select="normalize-space(.)"/>
        </xsl:element>
        <xsl:if test="lower-case(normalize-space(.))!='photographs'">
          <xsl:element name="genre" namespace="http://www.loc.gov/mods/v3">Photographs</xsl:element>
        </xsl:if>        
      </xsl:when>
    </xsl:choose>
  </xsl:template>
  
  <xsl:template match="dc:creator" mode="ajhs">
    <name>
      <namePart>
        <xsl:choose>
          <xsl:when test="contains(lower-case(.), ',photographer.')">
            <xsl:value-of select="substring-before(normalize-space(.), ',photographer.')"/> <!--creator-->
          </xsl:when>
          <xsl:when test="contains(lower-case(.), 'photographer')">
            <xsl:value-of select="substring-before(normalize-space(.), 'photographer')"/> <!--creator-->
          </xsl:when>
          <xsl:when test="contains(lower-case(.), 'sponsor')">
            <xsl:value-of select="substring-before(normalize-space(.), 'sponsor')"/> <!--creator-->
          </xsl:when>
          <xsl:when test="contains(lower-case(.), 'publisher')">
            <xsl:value-of select="substring-before(normalize-space(.), 'publisher')"/> <!--creator-->
          </xsl:when>
          <xsl:otherwise>
            <xsl:value-of select="normalize-space(.)"/>
          </xsl:otherwise>
        </xsl:choose>
      </namePart>
      <role><roleTerm>creator</roleTerm></role>
    </name> 
    
  </xsl:template>
  
  <xsl:template match="dc:contributor" mode="ajhs">
    <xsl:choose>
      <xsl:when test="contains(., 'digitization')"/>
      <xsl:when test="contains(., 'photographers')">
        <xsl:variable name="names" select="substring-after(., 'Additional photographers, ')"/>
        <xsl:for-each select="tokenize($names, ',')">
          <name>
            <namePart>
              <xsl:value-of select="replace(normalize-space(.), '\.$', '')"/> <!--contributor-->
            </namePart>
            <role><roleTerm>contributor</roleTerm></role>
          </name>            
        </xsl:for-each>
      </xsl:when>
      <xsl:otherwise/>
    </xsl:choose>
  </xsl:template>
  
  <!-- ESDN utility templates -->
  <xsl:include href="esdn_templates.xsl"/>
    
  <!-- dublin core field templates -->
  <xsl:include href="oaidctomods_base.xsl"/>
  
</xsl:stylesheet>

