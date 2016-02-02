<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
  xmlns:oai_dc="http://www.openarchives.org/OAI/2.0/oai_dc/"
  xmlns:dc="http://purl.org/dc/elements/1.1/" version="2.0" xmlns="http://www.loc.gov/mods/v3">
  <xsl:output omit-xml-declaration="yes" indent="yes"/>

  <xsl:template match="text()|@*"/>
  <xsl:template match="//oai_dc:dc">
    <mods xmlns="http://www.loc.gov/mods/v3" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
      xsi:schemaLocation="http://www.loc.gov/mods/v3 http://www.loc.gov/standards/mods/v3/mods-3-4.xsd"
      version="3.4">
      
      <xsl:apply-templates select="dc:title"/>
      <xsl:apply-templates select="dc:rights"/>
      <xsl:apply-templates select="dc:creator" mode="moma"/>
      
      <xsl:if test="normalize-space(dc:date) != ''">
        <originInfo>
          <xsl:if test="lower-case(normalize-space(dc:date)) != 'unknown' or 'n.d.'">
            <xsl:apply-templates select="dc:date"/>
          </xsl:if>
        </originInfo>
      </xsl:if>
      
      <physicalDescription>
        <xsl:apply-templates select="dc:format" mode="moma"/>
      </physicalDescription>
      <xsl:apply-templates select="dc:subject"/>
      <xsl:apply-templates select="dc:source" mode="moma"/>
      <xsl:apply-templates select="dc:identifier" mode="moma"/>
      
      <!-- hard code ownership note -->
      <xsl:call-template name="owner-note">
        <xsl:with-param name="owner">MOMA-Museum of Modern Art</xsl:with-param>
      </xsl:call-template>
    </mods>
  </xsl:template>

  <!-- ESDN utility templates -->
  <xsl:include href="esdn_templates.xsl"/>

  <!-- dublin core field templates -->
  <xsl:include href="oaidctomods_cdmbase.xsl"/>

  <!-- reference URL, thumbnail URL -->
  <xsl:include href="oaidctomods_cdm6.5.xsl"/>
  
  <!-- Collection specific templates -->
  
  <xsl:template match="dc:source" mode="moma">
    <xsl:if test="normalize-space(.)!=''">
      <note type="content"><xsl:value-of select="normalize-space(.)"/></note> <!--description-->
    </xsl:if>
  </xsl:template>
  
  <xsl:template match="dc:creator" mode="moma">
    <xsl:variable name="creatorvalue" select="normalize-space(.)"/>
    <xsl:for-each select="tokenize($creatorvalue,',')">
      <xsl:if test="normalize-space(.)!='' and normalize-space(.) != '(?)'">
        <name>
          <namePart>
            <xsl:value-of select="normalize-space(.)"/> <!--creator-->
          </namePart>
          <role><roleTerm>creator</roleTerm></role>
        </name> 
      </xsl:if>
    </xsl:for-each>      
  </xsl:template>
  
  <xsl:template match="dc:format" mode="moma">
    <xsl:variable name="formatvalue" select="normalize-space(.)"/>
    <xsl:for-each select="tokenize($formatvalue,';')">
      <xsl:if test="normalize-space(.)!=''">
        <xsl:choose>
          <!-- check to see if there are any numbers in the format value -->
          <xsl:when test='matches(.,"\d+")'>
            <extent>
              <xsl:value-of select="normalize-space(.)"/>
            </extent>
            <!--extent-->
          </xsl:when>
          <!-- put it in <form> -->
          <xsl:otherwise>
            <form>
              <xsl:value-of select="normalize-space(.)"/>
            </form>
          </xsl:otherwise>
        </xsl:choose>
      </xsl:if>
    </xsl:for-each>
  </xsl:template>
  
  <xsl:template match="dc:identifier" mode="moma">
    <xsl:variable name="idvalue" select="normalize-space(.)"/>
    <xsl:if test="normalize-space(.)!='' and not(contains(.,'waystation'))">
     <xsl:choose>
      <xsl:when test="(contains(., 'moma'))">
        <xsl:element name="location" namespace="http://www.loc.gov/mods/v3">
          <xsl:element name="url" namespace="http://www.loc.gov/mods/v3">
            <xsl:attribute name="usage">primary display</xsl:attribute>
            <xsl:attribute name="access">object in context</xsl:attribute>
            <xsl:value-of select="normalize-space(.)"/>
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
