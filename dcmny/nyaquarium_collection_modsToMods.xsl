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
    
    <xsl:template match="@*|node()">
        <xsl:copy>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
    </xsl:template>
    
    <xsl:template match="mods:accessCondition/@type"/>
    <xsl:template match="mods:languageTerm/@type"/>
    <xsl:template match="mods:digitalOrigin"/>
    <xsl:template match="mods:physicalDescription/mods:note[@type='condition']"/>
    
    <!-- hard code collection info -->
    
    <xsl:template match="mods:relatedItem">
        <xsl:element name="relatedItem" namespace="http://www.loc.gov/mods/v3">
            <xsl:attribute name="type">host</xsl:attribute>
            <xsl:attribute name="displayLabel">Collection</xsl:attribute>
            <xsl:element name="titleInfo" namespace="http://www.loc.gov/mods/v3">
                <xsl:element name="title" namespace="http://www.loc.gov/mods/v3">WCS Library-New York Aquarium Postcards</xsl:element>
            </xsl:element>
        </xsl:element>
        <xsl:element name="relatedItem" namespace="http://www.loc.gov/mods/v3">
            <xsl:attribute name="type">host</xsl:attribute>
            <xsl:attribute name="displayLabel">Collection</xsl:attribute>
            <xsl:element name="abstract" namespace="http://www.loc.gov/mods/v3">The New York Aquarium is the oldest continually operating aquarium in the United States, having opened in Castle Garden in Battery Park, Manhattan in 1896. Since 1957, it has been located on the boardwalk in Coney Island, Brooklyn. The Aquarium has a long history as a beloved New York City attraction, and the 75 postcards on display here show off the sights that have dazzled its viewers over the years.</xsl:element>
        </xsl:element>
    </xsl:template>
    
    <!-- hard code ownership note -->
    
    <xsl:template match="mods:mods">
        <xsl:copy>
          <xsl:attribute name="xsi:schemaLocation">http://www.loc.gov/mods/v3 http://www.loc.gov/standards/mods/v3/mods-3-4.xsd</xsl:attribute>
          <xsl:attribute name="version">3.4</xsl:attribute>
          <xsl:apply-templates select="@*|node()"/>
            <xsl:call-template name="intermediate-provider"><xsl:with-param name="council">Metropolitan New York Library Council</xsl:with-param></xsl:call-template><xsl:call-template name="owner-note">
                <xsl:with-param name="owner">Wildlife Conservation Society</xsl:with-param>
            </xsl:call-template>    
        </xsl:copy>
    </xsl:template>
    
    <xsl:template match="mods:physicalDescription/internetMediaType">
        <xsl:copy>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
    </xsl:template>
    
    <xsl:template match="mods:originInfo">
        <xsl:copy>
            <xsl:apply-templates select="@*|node()"/>
            <xsl:for-each select="../mods:note[@type='dateuncontrolled']">
                <xsl:call-template name="date-to-mods">
                    <xsl:with-param name="dateval">
                        <xsl:value-of select="normalize-space(.)"/>
                    </xsl:with-param>
                </xsl:call-template>
            </xsl:for-each>            
        </xsl:copy>
    </xsl:template>
    
    <xsl:template match="mods:roleTerm">
        <xsl:copy>Contributor</xsl:copy>
    </xsl:template>
    
    <xsl:template match="mods:dateIssued">
        <xsl:call-template name="date-to-mods">
            <xsl:with-param name="dateval">
                <xsl:value-of select="normalize-space(.)"/>
            </xsl:with-param>
        </xsl:call-template>
    </xsl:template>
    
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
    
    <xsl:template match="mods:identifier[@type='local']">
        <xsl:element name="identifier" namespace="http://www.loc.gov/mods/v3">
            <xsl:value-of select="normalize-space(.)"/>
        </xsl:element>
    </xsl:template>
  
  <xsl:template match="mods:note[@type='dateuncontrolled']"/>
    <xsl:template match="mods:note">
        <xsl:if test="normalize-space(.)!=''">
            <xsl:element name="note" namespace="http://www.loc.gov/mods/v3">
                <xsl:attribute name="type">content</xsl:attribute>
                <xsl:value-of select="normalize-space(.)"/>
            </xsl:element>
        </xsl:if>
    </xsl:template>
    
    <xsl:template match="mods:abstract">
        <xsl:if test="normalize-space(.)!=''">
            <xsl:element name="note" namespace="http://www.loc.gov/mods/v3">
                <xsl:attribute name="type">content</xsl:attribute>
                <xsl:value-of select="normalize-space(.)"/>
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
    
    <xsl:template match="mods:languageTerm">
        <xsl:copy>
            <xsl:attribute name="type">code</xsl:attribute>
            <xsl:attribute name="authority">iso639-3</xsl:attribute>
            <xsl:call-template name="iso6393-codes">
                <xsl:with-param name="lval">
                    <xsl:value-of select="normalize-space(lower-case(.))"/>
                </xsl:with-param>
            </xsl:call-template>
        </xsl:copy>
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
    
    <!-- ESDN utility templates -->
    <xsl:include href="esdn_templates.xsl"/>
    <xsl:include href="iso639x.xsl"/>
    
</xsl:stylesheet>
