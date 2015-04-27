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
  exclude-result-prefixes="xs"
  version="2.0"
  xmlns="http://www.loc.gov/mods/v3">
  <xsl:output omit-xml-declaration="yes" indent="yes"/>
  
  <xsl:template match="text()|@*"/>
  <xsl:template match="//oai_qdc:qualifieddc">
    <mods xmlns="http://www.loc.gov/mods/v3" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.loc.gov/mods/v3 http://www.loc.gov/standards/mods/v3/mods-3-4.xsd" version="3.4">      
      <xsl:apply-templates select="dc:title"/>     
      <xsl:if test="normalize-space(dcterms:created) != ''">
        <originInfo>
          <xsl:if test="normalize-space(lower-case(dcterms:created)) != 'unknown'">
            <xsl:apply-templates select="dcterms:created" mode="culinary"/>
          </xsl:if>
        </originInfo>
      </xsl:if>
      
      <xsl:apply-templates select="dc:description"/>   
      <xsl:apply-templates select="dc:identifier" mode="esdn"/>
      <xsl:apply-templates select="dc:language" mode="esdn"/>
      <xsl:apply-templates select="dc:rights"/>
      <xsl:apply-templates select="dcterms:extent" mode="culinary"/>
      <xsl:for-each select="dc:subject">
        <xsl:if test="normalize-space(lower-case(.))!='unknown'">
          <xsl:apply-templates select="."/>
        </xsl:if>
      </xsl:for-each>
      <xsl:apply-templates select="dcterms:temporal" mode="culinary"/>
      <xsl:apply-templates select="dcterms:spatial" mode="culinary"/>
      <xsl:apply-templates select="dcterms:isPartOf" mode="culinary"/>
      <xsl:apply-templates select="dc:coverage" mode="esdn"/>
      <xsl:apply-templates select="dc:type" mode="esdn"/>
      <!-- hard code ownership note -->
      <xsl:call-template name="owner-note"><xsl:with-param name="owner">The Culinary Institute of America</xsl:with-param></xsl:call-template>
     </mods>
  </xsl:template>
  
  <!-- ESDN utility templates -->
  <xsl:include href="esdn_templates.xsl"/>
  
  <!-- dublin core field templates -->
  <xsl:include href="oaidctomods_cdmbase.xsl"/>
  
  <!-- reference URL, thumbnail URL --> 
  <xsl:include href="oaidctomods_cdm6.5.xsl"/>
  
  <!-- collection-specific templates start here --> 
  <xsl:template match="dcterms:created" mode="culinary">
    <xsl:call-template name="date-to-mods">
      <xsl:with-param name="dateval">
        <xsl:value-of select="normalize-space(.)"/>                    
      </xsl:with-param>
    </xsl:call-template>
  </xsl:template>
  
  <xsl:template match="dcterms:extent" mode="culinary">
    <xsl:element name="physicalDescription">
      <xsl:element name="extent"><xsl:value-of select="normalize-space(.)"/></xsl:element>
    </xsl:element>
  </xsl:template>

  <xsl:template match="dcterms:isPartOf" mode="culinary">
    <xsl:variable name="relationvalue" select="normalize-space(.)"/>
    <xsl:for-each select="tokenize($relationvalue,';')">
      <xsl:if test="normalize-space(.)!=''">
        <xsl:choose>
          <xsl:when test="contains(.,'http')"> 
            <relatedItem><location><url><xsl:value-of select="normalize-space(.)"/></url></location></relatedItem> <!--relation-->
          </xsl:when>
          <xsl:otherwise>
            <relatedItem><titleInfo><title><xsl:value-of select="normalize-space(.)"/></title></titleInfo></relatedItem> <!--relation-->
          </xsl:otherwise>
        </xsl:choose>
      </xsl:if>
    </xsl:for-each>
  </xsl:template>
  
  <xsl:template match="dcterms:temporal" mode="culinary">
    <xsl:if test="normalize-space(lower-case(.))!='unknown'">
      <xsl:element name="subject">
        <xsl:element name="temporal"><xsl:value-of select="normalize-space(.)"/></xsl:element>
      </xsl:element>
    </xsl:if>
  </xsl:template>
  
  <xsl:template match="dcterms:spatial" mode="culinary">
    <xsl:for-each select="tokenize(., ';')">
      <xsl:if test="normalize-space(.)!=''">
        <xsl:element name="subject">
          <xsl:element name="geographic"><xsl:value-of select="normalize-space(.)"/></xsl:element>
        </xsl:element>
      </xsl:if>
    </xsl:for-each>
</xsl:template>
  
</xsl:stylesheet>
