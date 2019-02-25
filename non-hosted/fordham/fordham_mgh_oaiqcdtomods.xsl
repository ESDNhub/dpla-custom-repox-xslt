<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
  xmlns:oai_dc="http://www.openarchives.org/OAI/2.0/oai_dc/"
  xmlns:dc="http://purl.org/dc/elements/1.1/" xmlns:xs="http://www.w3.org/2001/XMLSchema"
  xmlns:oai-pmh="http://www.openarchives.org/OAI/2.0/" xmlns:mods="http://www.loc.gov/mods/v3"
  xmlns:dcterms="http://purl.org/dc/terms/" xmlns:edm="http://www.europeana.eu/schemas/edm/"
  xmlns:oai_qdc="http://worldcat.org/xmlschemas/qdc-1.0/"
  xmlns:xlink="http://www.w3.org/1999/xlink"
  xsi:schemaLocation="http://worldcat.org/xmlschemas/qdc-1.0/
  http://purl.org/net/oclcterms
  http://worldcat.org/xmlschemas/oclcterms/1.4/oclcterms-1.4.xsd"
  exclude-result-prefixes="xs oai_qdc oai-pmh edm mods xsi dcterms" version="2.0"
  xmlns="http://www.loc.gov/mods/v3">
  <xsl:output indent="yes"/>

  <xsl:template match="text() | @*"/>

  <xsl:template match="/">
    <xsl:apply-templates/>
  </xsl:template>

  <xsl:template match="oai_qdc:qualifieddc">
    <mods xmlns="http://www.loc.gov/mods/v3" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
      xsi:schemaLocation="http://www.loc.gov/mods/v3 http://www.loc.gov/standards/mods/v3/mods-3-4.xsd"
      version="3.4">
      
      <xsl:apply-templates select="dc:title"/>
      <xsl:apply-templates select="dc:contributor"/>
      <xsl:apply-templates select="dc:creator"/>
      
      <xsl:if test="exists(dc:date) or exists(dc:publisher)">
        <xsl:element name="originInfo">
          <xsl:apply-templates select="dc:date[1]"/>
          <xsl:apply-templates select="dc:publisher"/>
        </xsl:element>
      </xsl:if>
      
      <xsl:apply-templates select="dc:description"/>
 
      <xsl:element name="physicalDescription" namespace="http://www.loc.gov/mods/v3">
        <xsl:apply-templates select="dcterms:extent"/>
        <xsl:apply-templates select="dcterms:medium"/>
      </xsl:element>

      <xsl:apply-templates select="dc:identifier" mode="fordham"/>
      <xsl:apply-templates select="dcterms:alternative" mode="esdn"/>
      <xsl:apply-templates select="dcterms:spatial" mode="fordham"/>
      <xsl:apply-templates select="dc:subject"/>
      <xsl:apply-templates select="dc:type" mode="fordham"/>
      <xsl:apply-templates select="dc:rights" mode="fordham"/>
      <xsl:apply-templates select="dcterms:temporal"/>

      <!-- hard code collection and ownership note -->
      <xsl:element name="relatedItem" namespace="http://www.loc.gov/mods/v3">
        <xsl:attribute name="type">host</xsl:attribute>
        <xsl:attribute name="displayLabel">Collection</xsl:attribute>
        <xsl:element name="titleInfo" namespace="http://www.loc.gov/mods/v3">
          <xsl:element name="title" namespace="http://www.loc.gov/mods/v3">Fordham University-Fordham Museum of Greek, Etruscan, and Roman Art</xsl:element>
        </xsl:element>
      </xsl:element>
      
      <xsl:call-template name="owner-note">
        <xsl:with-param name="owner">Fordham University. Libraries</xsl:with-param>
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
  
  <xsl:template match="dc:type" mode="fordham">
    <xsl:choose>
      <xsl:when test="position() = 1">
        <xsl:element name="typeOfResource" namespace="http://www.loc.gov/mods/v3">
          <xsl:value-of select="normalize-space(.)"/>
        </xsl:element>
      </xsl:when>
      <xsl:otherwise>
        <xsl:element name="genre" namespace="http://www.loc.gov/mods/v3">
          <xsl:value-of select="normalize-space(.)"/>
        </xsl:element>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

  <xsl:template match="dcterms:extent">
    <xsl:variable name="extent_list" select="tokenize(normalize-space(.), ';')"/>
    <xsl:for-each select="$extent_list">
      <xsl:element name="extent" namespace="http://www.loc.gov/mods/v3">
        <xsl:value-of select="normalize-space(.)"/>
      </xsl:element>     
    </xsl:for-each>
 </xsl:template>
  
  <xsl:template match="dcterms:medium">
    <xsl:variable name="form_list" select="tokenize(normalize-space(.), ';')"/>
    <xsl:for-each select="$form_list">
      <xsl:element name="form" namespace="http://www.loc.gov/mods/v3">
        <xsl:value-of select="normalize-space(.)"/>
      </xsl:element>     
    </xsl:for-each>
    
  </xsl:template>

  <xsl:template match="dcterms:temporal">
    <xsl:call-template name="subject_element">
      <xsl:with-param name="subj_val">
        <xsl:value-of select="."/>
      </xsl:with-param>
    </xsl:call-template>
  </xsl:template>

  <xsl:template name="subject_element">
    <xsl:param name="subj_val"/>
    <xsl:variable name="subj_list" select="tokenize($subj_val, ';')"/>
    <xsl:for-each select="$subj_list">
      <xsl:element name="subject">
        <xsl:element name="temporal">
          <xsl:value-of select="normalize-space(.)"/>
        </xsl:element>
      </xsl:element>
    </xsl:for-each>
  </xsl:template>
  
  <xsl:template match="dcterms:spatial" mode="fordham">
     <xsl:element name="subject">
        <xsl:element name="geographic"><xsl:value-of select="normalize-space(.)"/></xsl:element>
      </xsl:element>
  </xsl:template>
  
  <xsl:template match="dc:identifier" mode="fordham">
    <xsl:variable name="idvalue" select="normalize-space(.)"/>
    <xsl:if test="normalize-space(.)!=''">
      <xsl:choose>
        <xsl:when test="contains(.,'cdm')">
          <xsl:choose>
            <xsl:when test="count(../dc:identifier)=3 and position()=2"/>
            <xsl:otherwise>
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
            </xsl:otherwise>
          </xsl:choose>
        </xsl:when>
        <xsl:otherwise>
          <identifier><xsl:value-of select="normalize-space(.)"/></identifier>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:if>  
  </xsl:template>
  
  <xsl:template match="dc:rights" mode="fordham">
    <xsl:variable name="page_string" select="replace(., '/page', '/vocab')"/>
    <xsl:call-template name="parse_rights">
      <xsl:with-param name="rights_text">
        <xsl:value-of select="normalize-space($page_string)"/>
      </xsl:with-param>
    </xsl:call-template>
  </xsl:template>
</xsl:stylesheet>
