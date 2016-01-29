<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
  xmlns:oai_dc='http://www.openarchives.org/OAI/2.0/oai_dc/'
  xmlns:dc="http://purl.org/dc/elements/1.1/"
  xmlns:xs="http://www.w3.org/2001/XMLSchema"
  xmlns:oai-pmh="http://www.openarchives.org/OAI/2.0/"
  xmlns:mods="http://www.loc.gov/mods/v3"
  xmlns:dcterms="http://purl.org/dc/terms/"
  xmlns:edm="http://www.europeana.eu/schemas/edm/"
  xsi:schemaLocation="http://worldcat.org/xmlschemas/qdc-1.0/
  http://purl.org/net/oclcterms
  http://worldcat.org/xmlschemas/oclcterms/1.4/oclcterms-1.4.xsd"
  exclude-result-prefixes="xs oai-pmh edm mods xsi dcterms"
  version="2.0"
  xmlns="http://www.loc.gov/mods/v3">
  <xsl:output omit-xml-declaration="yes" indent="yes"/>
  
  <xsl:template match="text()|@*"/>
  
  <!-- Filter out records not available on site based on value of edm:Preview -->
  
  <xsl:template match="oai_dc:dc">
    <xsl:if test="./edm:Preview[not(contains(., 'NotAvailable'))]">
      <mods xmlns="http://www.loc.gov/mods/v3" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.loc.gov/mods/v3 http://www.loc.gov/standards/mods/v3/mods-3-4.xsd" version="3.4">      
        <xsl:apply-templates select="dc:creator"/>
        <xsl:apply-templates select="dcterms:alternative"/>     
        <xsl:apply-templates select="dcterms:contributor"/>     
        <xsl:apply-templates select="dcterms:title"/>     
        
        <xsl:if test="normalize-space(dc:date) != ''">
          <originInfo>
            <xsl:apply-templates select="dc:date"/>
          </originInfo>
        </xsl:if>
        
        <xsl:apply-templates select="dc:description"/> 
        
        <xsl:element name="physicalDescription" namespace="http://www.loc.gov/mods/v3">
          <xsl:apply-templates select="dc:format"/>  
        </xsl:element>
        
        <xsl:apply-templates select="dc:genre"/>
        <xsl:apply-templates select="dc:rights"/>
        
        <xsl:for-each select="dcterms:subject">
          <xsl:apply-templates select="."/>
        </xsl:for-each>
        
        <xsl:apply-templates select="dcterms:temporal"/>
        <xsl:apply-templates select="dcterms:spatial"/>
        <xsl:apply-templates select="dcterms:type"/>
        <xsl:apply-templates select="dc:type"/>
        <xsl:apply-templates select="edm:isShownAt"/>
        <xsl:apply-templates select="edm:Preview"/>
        
        <!-- hard code collection note -->
        
        <xsl:element name="relatedItem" namespace="http://www.loc.gov/mods/v3">
          <xsl:attribute name="type">host</xsl:attribute>
          <xsl:attribute name="displayLabel">Collection</xsl:attribute>
          <xsl:element name="titleInfo" namespace="http://www.loc.gov/mods/v3">
            <xsl:element name="title" namespace="http://www.loc.gov/mods/v3">New York Philharmonic Music Scores Collection</xsl:element>
          </xsl:element>
        </xsl:element>
        
        <!-- ownership note -->
        
        <xsl:call-template name="owner-note">
          <xsl:with-param name="owner"><xsl:value-of select="normalize-space(edm:dataProvider)"/></xsl:with-param>
        </xsl:call-template>
       </mods>
    </xsl:if>
  </xsl:template>
  
  <!-- ESDN utility templates -->
  <xsl:include href="esdn_templates.xsl"/>
  
  <!-- dublin core field templates -->
  <xsl:include href="oaidctomods_cdmbase.xsl"/>
  
  <!-- reference URL, thumbnail URL --> 
  <xsl:include href="oaidctomods_cdm6.5.xsl"/>
  
  <!-- collection-specific templates start here --> 
  
  <xsl:template match="dcterms:alternative">
    <xsl:element name="titleInfo">
      <xsl:attribute name="type">alternative</xsl:attribute>
      <xsl:value-of select="normalize-space(.)"/>
    </xsl:element>
  </xsl:template>
  
  <xsl:template match="dcterms:contributor">
    <xsl:variable name="contributorvalue" select="normalize-space(.)"/>
    <xsl:for-each select="tokenize($contributorvalue,';')">
      <xsl:if test="normalize-space(.)!=''">
        <name>
          <namePart>
            <xsl:value-of select="normalize-space(.)"/> <!--contributor-->
          </namePart>
          <role><roleTerm>contributor</roleTerm></role>
        </name>
      </xsl:if>
    </xsl:for-each>      
  </xsl:template>

  <xsl:template match="dcterms:temporal">
    <xsl:if test="normalize-space(lower-case(.))!='unknown'">
      <xsl:element name="subject" namespace="http://www.loc.gov/mods/v3">
        <xsl:element name="temporal" namespace="http://www.loc.gov/mods/v3"><xsl:value-of select="normalize-space(.)"/></xsl:element>
      </xsl:element>
    </xsl:if>
  </xsl:template>
  
  <xsl:template match="dcterms:spatial">
    <xsl:for-each select="tokenize(., ';')">
      <xsl:if test="normalize-space(.)!=''">
        <xsl:element name="subject" namespace="http://www.loc.gov/mods/v3">
          <xsl:element name="geographic" namespace="http://www.loc.gov/mods/v3"><xsl:value-of select="normalize-space(.)"/></xsl:element>
        </xsl:element>
      </xsl:if>
    </xsl:for-each>
</xsl:template>
  
  <xsl:template match="dcterms:title">
    <xsl:if test="normalize-space(.)!=''">
      <xsl:element name="titleInfo" namespace="http://www.loc.gov/mods/v3">
        <xsl:element name="title" namespace="http://www.loc.gov/mods/v3">
          <xsl:value-of select="normalize-space(.)"/>
        </xsl:element>
      </xsl:element>
    </xsl:if>
  </xsl:template>
  
  <xsl:template match="dcterms:type">
    <xsl:if test="normalize-space(.)!=''">
      <xsl:if test="lower-case(normalize-space(.))!='program'">
        <xsl:element name="typeOfResource" namespace="http://www.loc.gov/mods/v3">
          <xsl:value-of select="normalize-space(.)"/>
        </xsl:element>
      </xsl:if>
    </xsl:if>
  </xsl:template>
  
  <xsl:template match="dc:identifier">
    <xsl:if test="normalize-space(.)!=''">
      <xsl:element name="identifier"><xsl:value-of select="normalize-space(.)"/></xsl:element>
    </xsl:if>
  </xsl:template>
  
  <xsl:template match="dc:genre">
    <xsl:if test="normalize-space(.)!=''">
      <xsl:element name="genre" namespace="http://www.loc.gov/mods/v3">
        <xsl:value-of select="normalize-space(.)"/>
      </xsl:element>
    </xsl:if>
  </xsl:template>
  
  <xsl:template match="dcterms:subject">
    <xsl:variable name="subjectvalue" select="normalize-space(.)"/>
    <xsl:for-each select="tokenize($subjectvalue,';')">
      <xsl:if test="normalize-space(.)!=''">
        <xsl:element name="subject" namespace="http://www.loc.gov/mods/v3">
          <xsl:element name="topic" namespace="http://www.loc.gov/mods/v3">
            <xsl:value-of select="normalize-space(.)"/>
          </xsl:element>
        </xsl:element>
      </xsl:if>
    </xsl:for-each>
  </xsl:template>
  
  <xsl:template match="edm:isShownAt">
    <xsl:if test="normalize-space(.)!=''">
      <xsl:element name="location" namespace="http://www.loc.gov/mods/v3">
        <xsl:element name="url" namespace="http://www.loc.gov/mods/v3">
          <xsl:attribute name="usage">primary display</xsl:attribute>
          <xsl:attribute name="access">object in context</xsl:attribute>
          <xsl:value-of select="normalize-space(.)"/>
        </xsl:element>
      </xsl:element>
    </xsl:if>
  </xsl:template>
  
  <xsl:template match="edm:Preview">
    <xsl:if test="normalize-space(.)!=''">
      <xsl:element name="location" namespace="http://www.loc.gov/mods/v3">
        <xsl:element name="url" namespace="http://www.loc.gov/mods/v3">
          <xsl:attribute name="access">preview</xsl:attribute>
          <xsl:value-of select="normalize-space(.)"/>
        </xsl:element>
      </xsl:element>
    </xsl:if>
  </xsl:template>
  
</xsl:stylesheet>

