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
          
          <!-- hard code ownership note -->
          
            <xsl:call-template name="intermediate-provider"><xsl:with-param name="council">Metropolitan New York Library Council</xsl:with-param></xsl:call-template><xsl:call-template name="owner-note">
              <xsl:with-param name="owner">Brooklyn Public Library</xsl:with-param>
            </xsl:call-template>    
        </xsl:copy>
    </xsl:template>
    
  <xsl:template match="mods:identifier[@type='local']"/>
  
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
        <xsl:element name="title" namespace="http://www.loc.gov/mods/v3">Brooklyn Public Library-Brooklyn Sheet Music Covers Collection</xsl:element>
      </xsl:element>
    </xsl:element>
    <xsl:element name="relatedItem" namespace="http://www.loc.gov/mods/v3">
      <xsl:attribute name="type">host</xsl:attribute>
      <xsl:attribute name="displayLabel">Collection</xsl:attribute>
      <xsl:element name="abstract" namespace="http://www.loc.gov/mods/v3">The Brooklyn Sheet Music Covers Collection consists of 102 pieces of sheet music from 1869 to 1987, primarily for voice and piano, all celebrating or emanating from the borough of Brooklyn. Contents include marches written in honor of a local person or business, pieces celebrating the whole or a part of the borough, songs from shows and movies set in or about Brooklyn, and pieces from Brooklyn's early 20th-century Yiddish-language theater.</xsl:element>
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

  <xsl:template match="mods:originInfo[not(exists(./mods:dateIssued))]">
    <xsl:copy>
      <xsl:apply-templates select="@*|node()"/>
      <xsl:apply-templates select="mods:note[@type='dateuncontrolled'][exists(./mods:originInfo)]"/>
    </xsl:copy>
  </xsl:template>
  
  <xsl:template match="mods:note[@type='dateuncontrolled'][exists(./mods:originInfo)]">
    <xsl:call-template name="date-to-mods">
      <xsl:with-param name="dateval">
        <xsl:value-of select="normalize-space(.)"/>
      </xsl:with-param>
    </xsl:call-template>
  </xsl:template>
  
  <xsl:template match="mods:note[@type='dateuncontrolled'][not(exists(./mods:originInfo))]">
    <xsl:element name="originInfo" namespace="http://www.loc.gov/mods/v3">
      <xsl:call-template name="date-to-mods">
        <xsl:with-param name="dateval">
          <xsl:value-of select="normalize-space(.)"/>
        </xsl:with-param>
      </xsl:call-template>
    </xsl:element>
  </xsl:template>
  
    <xsl:template match="mods:note[@type='condition']"/>
    
  <!-- Both templates are here due to Islandora's inconsistent addition of an empty namespace
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
  
  <xsl:template match="mods:identifier[@type='local']">
    <xsl:element name="identifier" namespace="http://www.loc.gov/mods/v3">
      <xsl:value-of select="normalize-space(.)"/>
    </xsl:element>
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
  
  <xsl:template match="mods:extent">
    <xsl:variable name="extents" select="tokenize(normalize-space(.), ';')"/>
      <xsl:element name="form" namespace="http://www.loc.gov/mods/v3">
        <xsl:value-of select="normalize-space($extents[1])"/>
      </xsl:element>
      <xsl:element name="extent" namespace="http://www.loc.gov/mods/v3">
        <xsl:value-of select="normalize-space($extents[2])"/>
      </xsl:element>
  </xsl:template>
  
    <xsl:template match="mods:typeOfResource">
      <xsl:copy>
        <xsl:apply-templates select="@*|node()"/>
      </xsl:copy>
    </xsl:template>
  
  <xsl:template match="mods:genre">
    <xsl:copy>
      <xsl:apply-templates select="@*|node()"/>
    </xsl:copy>
  </xsl:template>
  
  <xsl:template match="mods:subject">
    <xsl:if test="normalize-space(.)!=''">
      <xsl:choose>
        <xsl:when test="(contains(., 'New York'))">
          <xsl:element name="subject" namespace="http://www.loc.gov/mods/v3">
            <xsl:element name="geographic" namespace="http://www.loc.gov/mods/v3">
              <xsl:attribute name="authority">lcsh</xsl:attribute>
              <xsl:value-of select="normalize-space(.)"/>
        </xsl:element>
      </xsl:element>
        </xsl:when>
        <xsl:otherwise>
      <xsl:element name="subject" namespace="http://www.loc.gov/mods/v3">
        <xsl:element name="topic" namespace="http://www.loc.gov/mods/v3">
          <xsl:attribute name="authority">lcsh</xsl:attribute>
          <xsl:value-of select="normalize-space(.)"/>
        </xsl:element>
      </xsl:element>
      </xsl:otherwise>
      </xsl:choose>
    </xsl:if>
  </xsl:template>
    
    <!-- ESDN utility templates -->
    <xsl:include href="esdn_templates.xsl"/>
</xsl:stylesheet>
