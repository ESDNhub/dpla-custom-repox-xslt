<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
  xmlns:oai_dc='http://www.openarchives.org/OAI/2.0/oai_dc/'
  xmlns:dc="http://purl.org/dc/elements/1.1/"
  xmlns:xs="http://www.w3.org/2001/XMLSchema"
  xmlns:oai-pmh="http://www.openarchives.org/OAI/2.0/"
  xmlns:mods="http://www.loc.gov/mods/v3"
  xmlns:oai_qdc="http://worldcat.org/xmlschemas/qdc-1.0/"
  xmlns:dcterms="http://purl.org/dc/terms/"
  xsi:schemaLocation="http://worldcat.org/xmlschemas/qdc-1.0/
  http://worldcat.org/xmlschemas/qdc/1.0/qdc-1.0.xsd
  http://purl.org/net/oclcterms
  http://worldcat.org/xmlschemas/oclcterms/1.4/oclcterms-1.4.xsd"
  exclude-result-prefixes="xs dcterms oai_qdc mods"
  version="2.0"
  xmlns="http://www.loc.gov/mods/v3">
  <xsl:output omit-xml-declaration="yes" indent="yes"/>
  <xsl:template match="text() | @*"/>
  <xsl:template match="//oai_dc:dc">
    <mods xmlns="http://www.loc.gov/mods/v3" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.loc.gov/mods/v3 http://www.loc.gov/standards/mods/v3/mods-3-4.xsd" version="3.4">      
      
      <xsl:choose>
        <xsl:when test="count(./dc:title) > 1">
          <xsl:call-template name="build_title"/>
        </xsl:when>
        <xsl:otherwise>
          <xsl:apply-templates select="dc:title"/>
        </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="dc:contributor"/>
      
      <xsl:if test="dc:date != ''">
           <xsl:apply-templates select="dc:date[text()!='unknown']" mode="wnyc"/>
      </xsl:if>
      
      <xsl:apply-templates select="dc:identifier" mode="wnyc"/>
      <xsl:if test="normalize-space(dc:language/text())!=''">
        <xsl:element name="language" namespace="http://www.loc.gov/mods/v3">
          <xsl:element name="languageTerm" namespace="http://www.loc.gov/mods/v3">
            <xsl:attribute name="type">code</xsl:attribute>
            <xsl:attribute name="authority">iso639-3</xsl:attribute>
            <xsl:call-template name="iso6393-codes">
              <xsl:with-param name="lval">
                <xsl:value-of select="dc:language"/>
              </xsl:with-param>
            </xsl:call-template>
          </xsl:element>
        </xsl:element>
      </xsl:if>
      <xsl:apply-templates select="dc:relation" mode="wnyc"/>
      <xsl:call-template name="build_local_rights"/>
      <xsl:apply-templates select="dc:rights[starts-with(./text(), 'http://')]" mode="esdn"/>
      <xsl:apply-templates select="dc:subject" mode="wnyc"/>
      <xsl:apply-templates select="dc:type" mode="esdn"/>
      <xsl:apply-templates select="dc:format" mode="wnyc"/>
      <xsl:if test="exists(./dc:description[./text() != 'xx'])">
        <xsl:call-template name="build_desc"/>        
      </xsl:if>
      
      <!-- hard code ownership note -->
      
        <xsl:call-template name="owner-note">
          <xsl:with-param name="owner">New York Public Radio</xsl:with-param>
        </xsl:call-template>

      <xsl:call-template name="intermediate-provider">
        <xsl:with-param name="council">Metropolitan New York Library Council</xsl:with-param>
      </xsl:call-template>
      
     </mods>
    
  </xsl:template>
  
  <!-- ESDN utility templates --> 
  <xsl:include href="esdn_templates.xsl"/>
  
  <!-- dublin core field templates -->
  <xsl:include href="oaidctomods_cdmbase.xsl"/>
  <xsl:include href="iso639x.xsl"/>

  <!-- collection-specific templates start here --> 

  <xsl:template match="dc:identifier" mode="wnyc">
    <xsl:variable name="idvalue" select="normalize-space(.)"/>
    <xsl:choose>
      <xsl:when test="starts-with($idvalue, 'http')">
        <xsl:choose>
          <xsl:when test="ends-with($idvalue, '.png')"/>
          <xsl:when test="contains($idvalue, '/items/show/')"></xsl:when>
          <xsl:otherwise>
            <location>
              <url usage="primary display" access="object in context">
                <xsl:value-of select="$idvalue"/>
              </url>
            </location>
            <!-- ref url-->
          </xsl:otherwise>
        </xsl:choose>
      </xsl:when>
      <xsl:when test="starts-with($idvalue, 'www.wnyc.org')">
            <location>
              <url usage="primary display" access="object in context">
                <xsl:value-of select="concat('http://', $idvalue)"/>
              </url>
            </location>
          </xsl:when>
          <xsl:otherwise/>
    </xsl:choose>
  </xsl:template>
  
  <xsl:template match="dc:date" mode="wnyc">
    <xsl:element name="originInfo" namespace="http://www.loc.gov/mods/v3">
      <xsl:element name="dateCreated" namespace="http://www.loc.gov/mods/v3">
        <xsl:attribute name="keyDate">yes</xsl:attribute>
        <xsl:value-of select="normalize-space(substring-before(normalize-space(.), '0:00:00'))"/>
      </xsl:element>
    </xsl:element>
  </xsl:template>

  <xsl:template match="dc:subject" mode="wnyc">
    <xsl:variable name="subjectvalue" select="normalize-space(.)"/>
    <xsl:for-each select="tokenize($subjectvalue,';')">
      <xsl:if test="normalize-space(.)!=''">
        <subject>
          <topic>
            <xsl:choose>
              <xsl:when test="ends-with(., '...')">
                <xsl:value-of select="normalize-space(substring-before(., '...'))"/>
              </xsl:when>
              <xsl:when test="ends-with(., ' ,')">
                <xsl:value-of select="normalize-space(substring-before(., ' ,'))"/>
              </xsl:when>
              <xsl:otherwise>
                <xsl:value-of select="normalize-space(.)"/>
              </xsl:otherwise>
            </xsl:choose>
          </topic>
        </subject> <!--subject-->
      </xsl:if>
    </xsl:for-each>
  </xsl:template>
  
  <xsl:template name="build_desc">
    <xsl:variable name="desc_aggregate">
      <xsl:value-of select=".//dc:description/text()"/>
    </xsl:variable>
    <xsl:variable name="desc_trim">700</xsl:variable>
    <xsl:element name="note" namespace="http://www.loc.gov/mods/v3">
      <xsl:attribute name="type">content</xsl:attribute>
      <xsl:choose>
        <xsl:when test="string-length($desc_aggregate) &gt; $desc_trim">
          <xsl:value-of select="concat(substring($desc_aggregate, 1, $desc_trim), '...')"/>
        </xsl:when>
        <xsl:otherwise>
          <xsl:value-of select="$desc_aggregate"/>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:element>
  </xsl:template>
  
  <xsl:template name="build_local_rights">
    <xsl:variable name="desc_aggregate">
      <xsl:value-of select="string-join(.//dc:rights[not(starts-with(./text(), 'http://'))], '; ')"/>
    </xsl:variable>
    <xsl:element name="accessCondition" namespace="http://www.loc.gov/mods/v3">
      <xsl:attribute name="type">local rights statements</xsl:attribute>
       <xsl:value-of select="$desc_aggregate"/>
    </xsl:element>
  </xsl:template>
  
  <xsl:template match="dc:format" mode="wnyc">
    <xsl:choose>
      <xsl:when test="matches(normalize-space(.), '^[0-9]+$')">
        <xsl:element name="physicalDescription" namespace="http://www.loc.gov/mods/v3">
          <xsl:element name="extent" namespace="http://www.loc.gov/mods/v3">
            <xsl:value-of select="concat(normalize-space(.), ' seconds')"/>
          </xsl:element>
        </xsl:element>
      </xsl:when>
      <xsl:otherwise>
        <xsl:element name="genre" namespace="http://www.loc.gov/mods/v3">
          <xsl:value-of select="normalize-space(.)"/>
        </xsl:element>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>
  
  <xsl:template match="dc:relation" mode="wnyc">
    <xsl:variable name="relationvalue" select="normalize-space(.)"/>
    <xsl:for-each select="tokenize($relationvalue,';')">
      <xsl:if test="normalize-space(.)!=''">
        <relatedItem type="host" displayLabel="collection"><titleInfo><title><xsl:value-of select="normalize-space(.)"/></title></titleInfo></relatedItem> <!--relation-->
      </xsl:if>
    </xsl:for-each>
  </xsl:template>
  
  <xsl:template name="build_title">
    <xsl:variable name="title_aggregate" select="string-join(.//dc:title/text(), '; ')"/>
    <xsl:element name="titleInfo" namespace="http://www.loc.gov/mods/v3">
      <xsl:element name="title" namespace="http://www.loc.gov/mods/v3">
        <xsl:value-of select="$title_aggregate"/>
      </xsl:element>
    </xsl:element>
  </xsl:template>
  
</xsl:stylesheet>
