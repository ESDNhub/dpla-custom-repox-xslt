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
    <xsl:output indent="yes"/>
    <xsl:strip-space elements="*"/>
    
    <xsl:template match="@*|node()">
        <xsl:copy>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
    </xsl:template>
    
    <xsl:template match="//oai-pmh:record">
        <xsl:copy>
          <xsl:attribute name="xsi:schemaLocation">http://www.loc.gov/mods/v3 http://www.loc.gov/standards/mods/v3/mods-3-4.xsd</xsl:attribute>
          <xsl:attribute name="version">3.4</xsl:attribute>
          <xsl:apply-templates select="@*|node()"/>
            
            <!-- hard code collection ownership note -->
            <xsl:call-template name="owner-note">
              <xsl:with-param name="owner">University of Rochester, River Campus Libraries</xsl:with-param>
            </xsl:call-template>    
            
            <xsl:element name="relatedItem" namespace="http://www.loc.gov/mods/v3">
                <xsl:attribute name="type">host</xsl:attribute>
                <xsl:attribute name="displayLabel">Collection</xsl:attribute>
                <xsl:element name="abstract" namespace="http://www.loc.gov/mods/v3">Kenneth B. Keating (1900-1975) was a lawyer, a congressman (Republican, 40th New York District) from 1947 to 1959, a senator from New York State from 1959 to 1965, an associate justice of the New York Court of Appeals from 1966 to 1969, an ambassador to India from 1969 to 1972, and an ambassador to Israel from 1973 to 1975. Included in this collection are recorded interviews and written transcripts from Keating's television programs, Let's Look at Congress and Senator Keating Reports where Keating interviewed noted political figures.</xsl:element>
            </xsl:element>         
        </xsl:copy>
    </xsl:template>
    
    <xsl:template match="//mods:digitalOrigin"/>
    <xsl:template match="//mods:subject[exists(./mods:cartographics)]"/>
    <xsl:template match="//mods:location"/>
    <xsl:template match="//mods:recordInfo"/>
    <xsl:template match="//mods:note"/>
    
    <!-- ignore dateIssued as getting duplicate dates in feed -->
    
    <xsl:template match="//mods:dateIssued"/>
    
    <xsl:template match="//mods:physicalDescription/internetMediaType">
        <xsl:copy>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
    </xsl:template>
    
    <xsl:template match="//mods:relatedItem[@type='series']">
        <xsl:copy>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
    </xsl:template>
    
    <xsl:template match="//mods:relatedItem[@type='host']">
        <xsl:element name="relatedItem" namespace="http://www.loc.gov/mods/v3">
            <xsl:attribute name="type">host</xsl:attribute>
            <xsl:attribute name="displayLabel">Collection</xsl:attribute>
            <xsl:element name="titleInfo" namespace="http://www.loc.gov/mods/v3">
                <xsl:element name="title" namespace="http://www.loc.gov/mods/v3">University of Rochester-Kenneth B. Keating Collection</xsl:element>
            </xsl:element>
        </xsl:element>
    </xsl:template>
  
    <xsl:template match="//mods:affiliation"/>
    
    <xsl:template match="//mods:roleTerm">
        <xsl:element name="roleTerm" namespace="http://www.loc.gov/mods/v3">
            <xsl:choose>
                <xsl:when test="normalize-space(lower-case(.))='interviewer'">creator</xsl:when>
                <xsl:otherwise>contributor</xsl:otherwise>
            </xsl:choose>
        </xsl:element>
    </xsl:template>
    
    <xsl:template match="//mods:dateCreated">
        <xsl:element name="dateCreated" namespace="http://www.loc.gov/mods/v3">
            <xsl:attribute name="keyDate">yes</xsl:attribute>
            <xsl:value-of select="normalize-space(.)"/>
        </xsl:element>
    </xsl:template>
    
    <xsl:template match="//mods:abstract">
        <xsl:element name="note" namespace="http://www.loc.gov/mods/v3">
            <xsl:attribute name="type">content</xsl:attribute>
            <xsl:value-of select="normalize-space(.)"/>
        </xsl:element>
    </xsl:template>
    
    <xsl:template match="//mods:note[@type='dateuncontrolled']">
        <xsl:call-template name="date-to-mods">
            <xsl:with-param name="dateval">
                <xsl:value-of select="normalize-space(.)"/>
            </xsl:with-param>
        </xsl:call-template>
    </xsl:template>
    
    <xsl:template match="//mods:genre">
        <xsl:copy>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
    </xsl:template>
    
    <xsl:template match="//mods:identifier">
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
    </xsl:template>
    
    <xsl:template match="//oai-pmh:identifier">
    </xsl:template>
    
    <xsl:template match="//mods:extent">
        <xsl:element name="extent" namespace="http://www.loc.gov/mods/v3">
            <xsl:value-of select="normalize-space(.)"/>
        </xsl:element>
    </xsl:template>
    
    <xsl:template match="//mods:typeOfResource">
        <xsl:copy>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
       </xsl:template>
    
    <xsl:template match="//mods:languageTerm">
        <xsl:copy>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
    </xsl:template>
    
    <!-- ESDN utility templates -->
    <xsl:include href="esdn_templates.xsl"/>
    <xsl:include href="iso639x.xsl"/>
</xsl:stylesheet>
