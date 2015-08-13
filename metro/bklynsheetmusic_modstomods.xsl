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
            <xsl:call-template name="owner-note">
              <xsl:with-param name="owner">Brooklyn Public Library</xsl:with-param>
            </xsl:call-template>    
        </xsl:copy>
    </xsl:template>
    
    <xsl:template match="mods:identifier[@type='local']"/>
    <xsl:template match="mods:accessCondition/@type"/>
    <xsl:template match="mods:relatedItem/@type"/>
    <xsl:template match="mods:relatedItem/@xlink:href"/>
    <xsl:template match="mods:internetMediaType"/>
    <xsl:template match="mods:relatedItem[exists(@displayLabel)]"/>
    <xsl:template match="mods:digitalOrigin"/>
    <xsl:template match="mods:place"/>
    <xsl:template match="mods:location"/>
  
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
    
    <xsl:template match="mods:note">
        <xsl:element name="note" namespace="http://www.loc.gov/mods/v3">
            <xsl:attribute name="type">content</xsl:attribute>
            <xsl:value-of select="normalize-space(.)"/>
        </xsl:element>
    </xsl:template>

  <xsl:template match="mods:originInfo[not(exists(./mods:dateIssued))]">
    <xsl:copy>
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
    
    <!-- ESDN utility templates -->
    <xsl:include href="esdn_templates.xsl"/>
</xsl:stylesheet>
