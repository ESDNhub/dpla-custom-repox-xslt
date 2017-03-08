<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
  xmlns:oai_dc="http://www.openarchives.org/OAI/2.0/oai_dc/"
  xmlns:dc="http://purl.org/dc/elements/1.1/" xmlns:xs="http://www.w3.org/2001/XMLSchema"
  xmlns:oai-pmh="http://www.openarchives.org/OAI/2.0/" xmlns:mods="http://www.loc.gov/mods/v3"
  xmlns:oai_qdc="http://worldcat.org/xmlschemas/qdc-1.0/" xmlns:dcterms="http://purl.org/dc/terms/"
  xsi:schemaLocation="http://worldcat.org/xmlschemas/qdc-1.0/
  http://worldcat.org/xmlschemas/qdc/1.0/qdc-1.0.xsd
  http://purl.org/net/oclcterms
  http://worldcat.org/xmlschemas/oclcterms/1.4/oclcterms-1.4.xsd"
  exclude-result-prefixes="xs" version="2.0" xmlns="http://www.loc.gov/mods/v3">
  <xsl:output omit-xml-declaration="yes" indent="yes"/>

  <!-- This stylesheet processes standard qualified Dublin Core fields from standard oai_qdc OAI feeds. -->

  <xsl:output omit-xml-declaration="yes" indent="yes"/>
  
  <xsl:template match="dcterms:contributor">
    <xsl:variable name="contributorvalue" select="normalize-space(.)"/>
    <xsl:for-each select="tokenize($contributorvalue,';')">
      <xsl:if test="normalize-space(.)!=''">
        <name>
          <namePart>
            <xsl:value-of select="normalize-space(.)"/> <!--contributor-->
          </namePart>
          <role><roleTerm>Contributor</roleTerm></role>
        </name>
      </xsl:if>
    </xsl:for-each>      
  </xsl:template>
  
  <xsl:template match="dcterms:creator">
    <xsl:variable name="contributorvalue" select="normalize-space(.)"/>
    <xsl:for-each select="tokenize($contributorvalue,';')">
      <xsl:if test="normalize-space(.)!=''">
        <name>
          <namePart>
            <xsl:value-of select="normalize-space(.)"/> <!--contributor-->
          </namePart>
          <role><roleTerm>Creator</roleTerm></role>
        </name>
      </xsl:if>
    </xsl:for-each>      
  </xsl:template>

  <xsl:template match="dcterms:created">
    <xsl:variable name="datevalue" select="normalize-space(.)"/>
    <xsl:if test="normalize-space(.)!=''">
      <dateCreated keyDate="yes"><xsl:value-of select="normalize-space(.)"/></dateCreated> <!--date-->
    </xsl:if>
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

  <xsl:template match="dcterms:alternative">
    <xsl:element name="titleInfo" namespace="http://www.loc.gov/mods/v3"
      exclude-result-prefixes="#all">
      <xsl:attribute name="type">alternative</xsl:attribute>
      <xsl:element name="title" namespace="http://www.loc.gov/mods/v3"
        exclude-result-prefixes="#all">
        <xsl:value-of select="normalize-space(.)"/>
      </xsl:element>
    </xsl:element>
  </xsl:template>

  <xsl:template match="dcterms:extent">
    <extent>
      <xsl:value-of select="normalize-space(.)"/>
    </extent>
  </xsl:template>
  
  <xsl:template match="dcterms:type">
    <xsl:if test="normalize-space(.)!=''">
        <xsl:element name="typeOfResource" namespace="http://www.loc.gov/mods/v3">
          <xsl:value-of select="normalize-space(.)"/>
        </xsl:element>  
    </xsl:if>
  </xsl:template>
  
  <xsl:template match="dcterms:abstract">
    <note type="content"><xsl:value-of select="normalize-space(.)"/></note>
  </xsl:template>

  <xsl:template match="dcterms:tableOfContents">
    <xsl:element name="note" namespace="http://www.loc.gov/mods/v3">
      <xsl:attribute name="type">content</xsl:attribute>
      <xsl:value-of select="normalize-space(.)"/>
    </xsl:element>
  </xsl:template>
  
  <xsl:template match="dcterms:isPartOf">
    <xsl:variable name="relationvalue" select="normalize-space(.)"/>
    <xsl:for-each select="tokenize($relationvalue, ';')">
      <xsl:if test="normalize-space(.) != ''">
        <xsl:choose>
          <xsl:when test="contains(., 'http')">
            <relatedItem type="host" displayLabel="Collection">
              <location>
                <url>
                  <xsl:value-of select="normalize-space(.)"/>
                </url>
              </location>
            </relatedItem>
            <!--relation-->
          </xsl:when>
          <xsl:otherwise>
            <relatedItem type="host" displayLabel="Collection">
              <titleInfo>
                <title>
                  <xsl:value-of select="normalize-space(.)"/>
                </title>
              </titleInfo>
            </relatedItem>
            <!--collection info-->
          </xsl:otherwise>
        </xsl:choose>
      </xsl:if>
    </xsl:for-each>
  </xsl:template>
  
  <xsl:template match="dcterms:isFormatOf">
    <xsl:variable name="relationvalue" select="normalize-space(.)"/>
    <xsl:for-each select="tokenize($relationvalue, ';')">
      <xsl:if test="normalize-space(.) != ''">
        <xsl:choose>
          <xsl:when test="contains(., 'http')">
            <relatedItem>
              <location>
                <url>
                  <xsl:value-of select="normalize-space(.)"/>
                </url>
              </location>
            </relatedItem>
          </xsl:when>
          <xsl:otherwise>
            <relatedItem>
              <titleInfo>
                <title>
                  <xsl:value-of select="normalize-space(.)"/>
                </title>
              </titleInfo>
            </relatedItem>
          </xsl:otherwise>
        </xsl:choose>
      </xsl:if>
    </xsl:for-each>
  </xsl:template>
  
  <xsl:template match="dcterms:temporal">
    <xsl:for-each select="tokenize(., ';')">
      <xsl:if test="normalize-space(.) != ''">
        <xsl:element name="subject">
          <xsl:element name="temporal">
            <xsl:value-of select="normalize-space(.)"/>
          </xsl:element>
        </xsl:element>
      </xsl:if>
    </xsl:for-each>
  </xsl:template>

  <xsl:template match="dcterms:spatial">
    <xsl:for-each select="tokenize(., ';')">
      <xsl:if test="normalize-space(.) != ''">
        <xsl:if test="normalize-space(lower-case(.)) != 'unknown'">
          <xsl:element name="subject">
            <xsl:element name="geographic">
              <xsl:value-of select="normalize-space(.)"/>
            </xsl:element>
          </xsl:element>
        </xsl:if>
      </xsl:if>
    </xsl:for-each>
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

</xsl:stylesheet>
