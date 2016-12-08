<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
  xmlns:oai_dc="http://www.openarchives.org/OAI/2.0/oai_dc/"
  xmlns:dc="http://purl.org/dc/elements/1.1/" xmlns:xs="http://www.w3.org/2001/XMLSchema"
  xmlns:oai-pmh="http://www.openarchives.org/OAI/2.0/" xmlns:mods="http://www.loc.gov/mods/v3"
  xmlns:dcterms="http://purl.org/dc/terms/" xmlns:edm="http://www.europeana.eu/schemas/edm/"
  xmlns:oai_qdc="http://worldcat.org/xmlschemas/qdc-1.0/"
  xsi:schemaLocation="http://worldcat.org/xmlschemas/qdc-1.0/
  http://purl.org/net/oclcterms
  http://worldcat.org/xmlschemas/oclcterms/1.4/oclcterms-1.4.xsd"
  exclude-result-prefixes="xs oai_qdc oai-pmh edm mods xsi dcterms" version="2.0"
  xmlns="http://www.loc.gov/mods/v3">
  <xsl:output indent="yes"/>
  
  <xsl:template match="text() | @*"/>
  
  <!-- filter out Target records based on title value -->
  
  <xsl:template match="/">
    <xsl:apply-templates
      select="//oai_qdc:qualifieddc[not(ends-with(lower-case(dc:title), 'target'))]"/>
  </xsl:template>
  
  <xsl:template match="oai_qdc:qualifieddc">
    <mods xmlns="http://www.loc.gov/mods/v3" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
      xsi:schemaLocation="http://www.loc.gov/mods/v3 http://www.loc.gov/standards/mods/v3/mods-3-4.xsd"
      version="3.4">
      <xsl:apply-templates select="dc:title"/>
      <xsl:apply-templates select="dc:contributor" mode="fordham"/>
      <xsl:apply-templates select="dc:creator" mode="fordham"/>
      <xsl:if test="exists(dc:date) or exists(dc:publisher)">
        <xsl:element name="originInfo">
          <xsl:apply-templates select="dc:date"/>
          <xsl:apply-templates select="dc:publisher"/>
        </xsl:element>
      </xsl:if>
      <xsl:apply-templates select="dc:description"/>
      
      <xsl:element name="physicalDescription" namespace="http://www.loc.gov/mods/v3">
        <xsl:apply-templates select="dcterms:extent"/>
      </xsl:element>
      
      <xsl:apply-templates select="dc:identifier" mode="fordham"/>
      <xsl:apply-templates select="dcterms:alternative" mode="esdn"/>
      <xsl:apply-templates select="dc:subject"/>
      <xsl:apply-templates select="dcterms:spatial" mode="fordham"/>
      <xsl:apply-templates select="dc:type[2]" mode="fordham"/>
      <xsl:apply-templates select="dc:rights"/>
      <xsl:apply-templates select="dc:language" mode="esdn"/>
      
      <!-- hard code collection and ownership note -->
      
      <xsl:element name="relatedItem" namespace="http://www.loc.gov/mods/v3">
        <xsl:attribute name="type">host</xsl:attribute>
        <xsl:attribute name="displayLabel">Collection</xsl:attribute>
        <xsl:element name="titleInfo" namespace="http://www.loc.gov/mods/v3">
          <xsl:element name="title" namespace="http://www.loc.gov/mods/v3">Fordham University-TV Oral History Project</xsl:element>
        </xsl:element>
      </xsl:element>
      
      <xsl:call-template name="owner-note">
        <xsl:with-param name="owner">Fordham University</xsl:with-param>
      </xsl:call-template>
      <xsl:call-template name="intermediate-provider">
        <xsl:with-param name="council">Metropolitan New York Library Council</xsl:with-param>
      </xsl:call-template>
    </mods>
    
  </xsl:template>
  
  <!-- ESDN utility templates -->
  <xsl:include href="esdn_templates.xsl"/>
  <xsl:include href="iso639x.xsl"/>
  
  <!-- dublin core field templates -->
  <xsl:include href="oaidctomods_cdmbase.xsl"/>
  <xsl:include href="oaidctomods_cdm6.5.xsl"/>
  
  <!-- collection-specific templates start here -->
  
  <xsl:template match="dcterms:spatial" mode="fordham">
    <xsl:for-each select="tokenize(., ';')">
      <xsl:if test="normalize-space(.) != '' and not(contains(., 'unknown'))">
        <xsl:choose>
          <xsl:when test="(contains(., '--'))">
            <xsl:element name="subject">
              <xsl:element name="topic"><xsl:value-of select="normalize-space(.)"/></xsl:element>
            </xsl:element>
          </xsl:when>
          <xsl:otherwise>
            <xsl:element name="subject">
              <xsl:element name="geographic"><xsl:value-of select="normalize-space(.)"/></xsl:element>
            </xsl:element>
          </xsl:otherwise>          
        </xsl:choose>
      </xsl:if>
    </xsl:for-each>
  </xsl:template>
  
  <!-- Cleanup contributor values -->
  
  <xsl:template match="dc:contributor" mode="fordham">
    <xsl:variable name="contributorvalue" select="normalize-space(.)"/>
    <xsl:for-each select="tokenize($contributorvalue, ';')">
      <xsl:if test="normalize-space(.) != ''">
        <name>
          <namePart>
            <xsl:choose>
              <xsl:when test="contains(., '--')">
                <xsl:value-of select="normalize-space(substring-before(., '--'))"/>
              </xsl:when>
              <xsl:otherwise>
                <xsl:value-of select="normalize-space(.)"/>
              </xsl:otherwise>
            </xsl:choose>
            <!--contributor-->
          </namePart>
          <role>
            <roleTerm>Contributor</roleTerm>
          </role>
        </name>
      </xsl:if>
    </xsl:for-each>
  </xsl:template>
  
  <!-- Cleanup creator values -->
  
  <xsl:template match="dc:creator" mode="fordham">
    <xsl:variable name="creatorvalue" select="normalize-space(.)"/>
    <xsl:for-each select="tokenize($creatorvalue, ';')">
      <xsl:if test="normalize-space(.) != ''">
        <name>
          <namePart>
            <xsl:choose>
              <xsl:when test="contains(., '--')">
                <xsl:value-of select="normalize-space(substring-before(., '--'))"/>
              </xsl:when>
              <xsl:otherwise>
                <xsl:value-of select="normalize-space(.)"/>
              </xsl:otherwise>
            </xsl:choose>
            <!--creator-->
          </namePart>
          <role>
            <roleTerm>Creator</roleTerm>
          </role>
        </name>
      </xsl:if>
    </xsl:for-each>
  </xsl:template>
  
  <xsl:template match="dcterms:extent">
    <xsl:element name="extent" namespace="http://www.loc.gov/mods/v3">
      <xsl:value-of select="normalize-space(.)"/>
    </xsl:element>
  </xsl:template>
  
  <xsl:template match="dc:type" mode="fordham">
    <xsl:element name="typeOfResource" namespace="http://www.loc.gov/mods/v3">
      <xsl:value-of select="normalize-space(.)"/>
    </xsl:element>
  </xsl:template>
  
  <xsl:template match="dc:identifier" mode="fordham">
    <xsl:variable name="idvalue" select="normalize-space(.)"/>
    <xsl:if test="normalize-space(.)!=''">
      <xsl:choose>
        <xsl:when test="contains(.,'cdm')"> 
          <!-- CONTENTdm puts the URI in an <identifier> field in the OAI record -->
          <xsl:element name="location" namespace="http://www.loc.gov/mods/v3">
            <xsl:element name="url">
              <xsl:attribute name="usage">primary display</xsl:attribute>
              <xsl:attribute name="access">object in context</xsl:attribute>
              <xsl:value-of select="$idvalue"/>
            </xsl:element>
          </xsl:element>
          <!-- ref url-->
          <!-- process identifier into CONTENTdm 6.5 thumbnail urls -->
          <xsl:variable name="contentdmroot" select="substring-before($idvalue, '/cdm/ref/')"/>
          <xsl:variable name="recordinfo"
            select="substring-after($idvalue, '/cdm/ref/collection/')"/>
          <xsl:variable name="alias" select="substring-before($recordinfo, '/id/')"/>
          <xsl:variable name="pointer" select="substring-after($recordinfo, '/id/')"/>
          <xsl:element name="location" namespace="http://www.loc.gov/mods/v3">
            <xsl:element name="url">
              <xsl:attribute name="access">preview</xsl:attribute>
              <xsl:value-of
                select="concat($contentdmroot, '/utils/getthumbnail/collection/', $alias, '/id/', $pointer)"
              />
            </xsl:element>
          </xsl:element>
        </xsl:when>
        <xsl:otherwise>
          <identifier><xsl:value-of select="normalize-space(.)"/></identifier>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:if>  
  </xsl:template>
  
</xsl:stylesheet>
