<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:dc="http://purl.org/dc/elements/1.1/"
    xmlns:oai_dc="http://www.openarchives.org/OAI/2.0/oai_dc/"
    xmlns:oai-pmh="http://www.openarchives.org/OAI/2.0/"
    xmlns:mods="http://www.loc.gov/mods/v3"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    exclude-result-prefixes="xs"
    version="2.0">
  <xsl:output omit-xml-declaration="yes" indent="yes"/>
  <xsl:strip-space elements="*"/>

  <xsl:template match="@*|node()">
    <xsl:copy>
      <xsl:apply-templates select="@*|node()"/>
    </xsl:copy>
  </xsl:template>

  <xsl:template match="mods:mods">
    <xsl:copy>
      <xsl:attribute name="xsi:schemaLocation">http://www.loc.gov/mods/v3
        http://www.loc.gov/standards/mods/v3/mods-3-4.xsd</xsl:attribute>
      <xsl:attribute name="version">3.4</xsl:attribute>
      <xsl:apply-templates select="@*|node()"/>
      <xsl:call-template name="intermediate-provider">
        <xsl:with-param name="council">Metropolitan New York Library Council</xsl:with-param>
      </xsl:call-template>
    </xsl:copy>
  </xsl:template>

  <xsl:template match="mods:recordInfo" />
  <xsl:template match="mods:accessCondition/@displayLabel"/>
  <xsl:template match="mods:digitalOrigin" />
  <xsl:template match="mods:location" />
  <xsl:template match="mods:roleTerm/@authority"/>
  <xsl:template match="mods:roleTerm/@type"/>
  <xsl:template match="mods:dateCreated/@encoding"/>
  
  <xsl:template match="mods:identifier">
    <xsl:if test=".[@type='uri']">
      <xsl:element name="location" namespace="http://www.loc.gov/mods/v3">
        <xsl:element name="url" namespace="http://www.loc.gov/mods/v3">
          <xsl:attribute name="usage">primary display</xsl:attribute>
          <xsl:attribute name="access">object in context</xsl:attribute>
          <xsl:value-of select="normalize-space(.)"/>
        </xsl:element>
      </xsl:element>
      <xsl:element name="location" namespace="http://www.loc.gov/mods/v3">
        <xsl:element name="url" namespace="http://www.loc.gov/mods/v3">
          <xsl:attribute name="access">preview</xsl:attribute>
          <xsl:value-of select="concat(normalize-space(.), '/datastream/TN/view')"/>
        </xsl:element>
      </xsl:element>
    </xsl:if>
  </xsl:template>
  
  <xsl:template match="mods:identifier[@type='local']">
    <xsl:element name="identifier" namespace="http://www.loc.gov/mods/v3">
      <xsl:value-of select="normalize-space(.)"/>
    </xsl:element>
  </xsl:template>

  <xsl:template match="mods:genre">
    <xsl:copy>
      <xsl:apply-templates select="@*|node()"/>
    </xsl:copy>
  </xsl:template>
  
  <xsl:template match="mods:physicalDescription/mods:internetMediaType"/>
    
  <xsl:template match="mods:dateCreated">
    <xsl:variable name="date_range" select="tokenize(normalize-space(.), '-')"/>
    <xsl:choose>
      <xsl:when test="count($date_range)=2">
    <xsl:element name="dateCreated" namespace="http://www.loc.gov/mods/v3">
      <xsl:attribute name="keyDate">yes</xsl:attribute>
      <xsl:attribute name="point">start</xsl:attribute>
      <xsl:attribute name="qualifier">approximate</xsl:attribute>
      <xsl:value-of select="$date_range[1]"/>
    </xsl:element>
    <xsl:element name="dateCreated" namespace="http://www.loc.gov/mods/v3">
      <xsl:attribute name="point">end</xsl:attribute>
      <xsl:value-of select="$date_range[2]"/>
    </xsl:element>
      </xsl:when>
      <xsl:when test="count($date_range)=3">
        <xsl:element name="dateCreated" namespace="http://www.loc.gov/mods/v3">
          <xsl:attribute name="keyDate">yes</xsl:attribute>
          <xsl:value-of select="normalize-space(.)"/>
        </xsl:element>        
      </xsl:when>
      <xsl:otherwise/>
    </xsl:choose>
  </xsl:template>
  
  <xsl:template match="mods:geographic">
      <xsl:element name="topic" namespace="http://www.loc.gov/mods/v3">
        <xsl:value-of select="normalize-space(.)"/>
      </xsl:element>
  </xsl:template>
    
  <!-- ESDN utility templates -->
  <xsl:include href="esdn_templates.xsl"/>
  <xsl:include href="iso639x.xsl"/>
  <xsl:include href="utilities.xsl"/>

</xsl:stylesheet>
