<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:dc="http://purl.org/dc/elements/1.1/"
    xmlns:oai_dc="http://www.openarchives.org/OAI/2.0/oai_dc/"
    xmlns:oai-pmh="http://www.openarchives.org/OAI/2.0/"
    xmlns:mods="http://www.loc.gov/mods/v3"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    xmlns:xlink="http://www.w3.org/1999/xlink"
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
          <xsl:attribute name="xsi:schemaLocation">http://www.loc.gov/mods/v3 http://www.loc.gov/standards/mods/v3/mods-3-4.xsd</xsl:attribute>
          <xsl:attribute name="version">3.4</xsl:attribute>
          <xsl:apply-templates select="@*|node()"/>  
        </xsl:copy>
    </xsl:template>
    
  <!-- get correct ownership note -->
  
  <xsl:template match="mods:note[not(@*) or @displayLabel='Content Note']">
    <xsl:if test="normalize-space(.)!=''">
      <xsl:variable name="owner">
        <xsl:choose>
          <xsl:when test="starts-with(., 'Digitized by') and contains(., 'Manhattanville College')">Manhattanville College</xsl:when>
          <xsl:when test="starts-with(., 'Digitized by') and contains(., 'College of New Rochelle')">College of New Rochelle</xsl:when>
          <xsl:otherwise/>
        </xsl:choose>
      </xsl:variable>
      <xsl:if test="$owner!=''">
        <xsl:call-template name="owner-note">
          <xsl:with-param name="owner"><xsl:value-of select="$owner"></xsl:value-of></xsl:with-param>
        </xsl:call-template>   
      </xsl:if>
      <xsl:element name="note" namespace="http://www.loc.gov/mods/v3">
        <xsl:attribute name="type">content</xsl:attribute>
        <xsl:value-of select="normalize-space(.)"/>
      </xsl:element>
    </xsl:if>
    <xsl:call-template name="intermediate-provider">
      <xsl:with-param name="council">Metropolitan New York Library Council</xsl:with-param>
    </xsl:call-template>    
  </xsl:template>
  
  <xsl:template match="mods:identifier[@type='local']">
    <xsl:element name="identifier" namespace="http://www.loc.gov/mods/v3">
      <xsl:value-of select="normalize-space(.)"/>
    </xsl:element>
  </xsl:template>
  
    <xsl:template match="mods:accessCondition/@type"/>
    <xsl:template match="mods:relatedItem[exists(./@xlink:href)]"/>
    <xsl:template match="mods:relatedItem[exists(@displayLabel)]"/>
    <xsl:template match="mods:digitalOrigin"/>
    <xsl:template match="mods:place"/>
    <xsl:template match="mods:location"/>
  
  <!-- hard code collection info -->
  
  <xsl:template match="mods:relatedItem">
    <xsl:element name="relatedItem" namespace="http://www.loc.gov/mods/v3">
      <xsl:attribute name="type">host</xsl:attribute>
      <xsl:attribute name="displayLabel">Collection</xsl:attribute>
      <xsl:element name="titleInfo" namespace="http://www.loc.gov/mods/v3">
        <xsl:element name="title" namespace="http://www.loc.gov/mods/v3">Manhattanville College/College of New Rochelle-Social Action and the NFCCS</xsl:element>
      </xsl:element>
    </xsl:element>
    <xsl:element name="relatedItem" namespace="http://www.loc.gov/mods/v3">
      <xsl:attribute name="type">host</xsl:attribute>
      <xsl:attribute name="displayLabel">Collection</xsl:attribute>
      <xsl:element name="abstract" namespace="http://www.loc.gov/mods/v3">This collaborative collection of 250 objects brings together archival materials from Manhattanville College and The College of New Rochelle documenting the history of the National Federation of Catholic College Students (NFCCS).</xsl:element>
    </xsl:element>
  </xsl:template>
  
  <xsl:template match="mods:language">
    <xsl:element name="language" namespace="http://www.loc.gov/mods/v3">
      <xsl:element name="languageTerm" namespace="http://www.loc.gov/mods/v3">
        <xsl:choose>
          <xsl:when test="normalize-space(lower-case(.))='english'">eng</xsl:when>
          <xsl:otherwise>
            <xsl:value-of select="normalize-space(.)"/>
          </xsl:otherwise>
        </xsl:choose>
      </xsl:element>
    </xsl:element>
  </xsl:template>
  
    <xsl:template match="mods:dateIssued">
        <xsl:call-template name="date-to-mods">
            <xsl:with-param name="dateval">
                <xsl:value-of select="normalize-space(.)"/>
            </xsl:with-param>
        </xsl:call-template>
    </xsl:template>
    
    <xsl:template match="mods:abstract">
        <xsl:element name="note" namespace="http://www.loc.gov/mods/v3">
            <xsl:attribute name="type">content</xsl:attribute>
            <xsl:value-of select="normalize-space(.)"/>
        </xsl:element>
    </xsl:template>
  
  <xsl:template match="mods:physicalDescription/internetMediaType">
    <xsl:copy>
      <xsl:apply-templates select="@*|node()"/>
    </xsl:copy>
  </xsl:template>
    
    <xsl:template match="mods:note">
        <xsl:element name="note" namespace="http://www.loc.gov/mods/v3">
            <xsl:attribute name="type">content</xsl:attribute>
            <xsl:value-of select="normalize-space(.)"/>
        </xsl:element>
    </xsl:template>
  
    <xsl:template match="mods:note[@type='condition']"/>
    
  <!-- Both templates are here due to Islandora's current inconsistent addition of an empty namespace
    attribute to the identifier element. -->
    <xsl:template match="mods:identifier">
      <xsl:if test=".[@type='uri']">
      <!-- we do this to workaround Islandora's assigning the default namesapce to
                this element by adding an empty @xmlns in the original. -->
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
  
  <xsl:template match="identifier">
    <xsl:if test=".[@type='uri']">
      <!-- we do this to workaround Islandora's assigning the default namesapce to
                this element by adding an empty @xmlns in the original. -->
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
  
  <xsl:template match="mods:physicalDescription/extent">
    <xsl:copy>
      <xsl:apply-templates select="@*|node()"/>
    </xsl:copy>
  </xsl:template>
  
  <xsl:template match="mods:typeOfResource">
    <xsl:copy>
      <xsl:apply-templates select="@*|node()"/>
    </xsl:copy>
  </xsl:template>
  
  <xsl:template match="mods:subject">
    <xsl:copy>
      <xsl:apply-templates select="@*|node()"/>
    </xsl:copy>
  </xsl:template>
  
    <!-- ESDN utility templates -->
    <xsl:include href="esdn_templates.xsl"/>
</xsl:stylesheet>
