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
  
  <xsl:template match="mods:mods">
      <xsl:copy>
        <xsl:attribute name="xsi:schemaLocation">http://www.loc.gov/mods/v3 http://www.loc.gov/standards/mods/v3/mods-3-4.xsd</xsl:attribute>
        <xsl:attribute name="version">3.4</xsl:attribute>
        <xsl:apply-templates select="@*|node()"/>
          
          <!-- hard code collection description and ownership note -->
          
        <xsl:call-template name="owner-note">
            <xsl:with-param name="owner">Hamilton College</xsl:with-param>
          </xsl:call-template>
          <xsl:call-template name="intermediate-provider">
              <xsl:with-param name="council">Central New York Library Resources Council</xsl:with-param>
          </xsl:call-template>
          <xsl:element name="relatedItem" namespace="http://www.loc.gov/mods/v3">
              <xsl:attribute name="type">host</xsl:attribute>
              <xsl:attribute name="displayLabel">Collection</xsl:attribute>
              <xsl:element name="titleInfo" namespace="http://www.loc.gov/mods/v3">
                  <xsl:element name="title" namespace="http://www.loc.gov/mods/v3">Hamilton College-Kerista Commune Ephemera</xsl:element>
              </xsl:element>
          </xsl:element>
          
          <!-- For DPLA, combine for display  -->
          
          <xsl:element name="accessCondition" namespace="http://www.loc.gov/mods/v3">
              <xsl:value-of select="mods:accessCondition[@type='use and reproduction'][1]/text()"/><xsl:text> </xsl:text><xsl:value-of select="mods:accessCondition[@type='use and reproduction'][2]/text()"/>
          </xsl:element>
          
          <!-- For DPLA, pass all geographic headings in one element for display/geocoding -->
          
          <xsl:for-each select="mods:subject[@authority='tgn']/mods:hierarchicalGeographic">
              <xsl:if test="normalize-space(.)!=''">
                  <xsl:element name="subject" namespace="http://www.loc.gov/mods/v3">
                      <xsl:attribute name="authority">tgn</xsl:attribute>
                      <xsl:element name="geographic" namespace="http://www.loc.gov/mods/v3">
                          <xsl:value-of select="mods:country/text()"/>--<xsl:value-of select="mods:state/text()"/>--<xsl:value-of select="mods:state/text()"/>--<xsl:value-of select="mods:city/text()"/>
                      </xsl:element>
                  </xsl:element>
              </xsl:if>
          </xsl:for-each>
          
          <xsl:for-each select="mods:subject[@authority='lcsh']/mods:topic">
              <xsl:if test="normalize-space(.)!=''">
                  <xsl:element name="subject" namespace="http://www.loc.gov/mods/v3">
                      <xsl:attribute name="authority">lcsh</xsl:attribute>
                      <xsl:element name="topic" namespace="http://www.loc.gov/mods/v3">
                          <xsl:value-of select="normalize-space(.)"/>
                      </xsl:element>
                  </xsl:element>
              </xsl:if>
          </xsl:for-each>
          
          <!-- Pass subject heading through that is not duplicated in LCSH headings -->
          
          <xsl:for-each select="mods:subject[not(@authority='lcsh')]/mods:topic">
              <xsl:if test="normalize-space(.) = 'communal societies'">
                  <xsl:element name="subject" namespace="http://www.loc.gov/mods/v3">
                      <xsl:element name="topic" namespace="http://www.loc.gov/mods/v3"><xsl:text>Communal societies</xsl:text></xsl:element>
                  </xsl:element>        
              </xsl:if>
          </xsl:for-each>
          
      </xsl:copy>
  </xsl:template>
    
  <xsl:template match="mods:recordInfo"/>
  <xsl:template match="mods:physicalDescription/mods:form[@authority='gmd']"/>
  <xsl:template match="mods:physicalDescription/mods:form[@authority='RDA carrier terms']"/>
  <xsl:template match="mods:language/mods:languageTerm[@type='text']"/>
  <xsl:template match="mods:digitalOrigin"/>
  <xsl:template match="mods:location"/>
  <xsl:template match="mods:originInfo/mods:place/mods:placeTerm[@type='text']"/>
  <xsl:template match="mods:originInfo/mods:place/mods:placeTerm"/>
  <xsl:template match="mods:originInfo/mods:publisher"/>
  <xsl:template match="mods:accessCondition[@type='restriction on access']"/>
  <xsl:template match="mods:accessCondition[@type='use and reproduction'][1]"/>
  <xsl:template match="mods:accessCondition[@type='use and reproduction'][2]"/>
  <xsl:template match="mods:subject[not(@authority='lcsh')]/mods:topic"/>
  <xsl:template match="mods:subject[@authority='lcsh']/mods:topic"/>
  <xsl:template match="mods:subject[@authority='tgn']"/>
  <xsl:template match="mods:titleInfo/mods:nonSort"/>
  <xsl:template match="mods:titleInfo/mods:titleSort"/>
    
    <xsl:template match="mods:physicalDescription/internetMediaType">
        <xsl:copy>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
    </xsl:template>
    
    <xsl:template match="mods:relatedItem">
        <xsl:element name="relatedItem" namespace="http://www.loc.gov/mods/v3">
            <xsl:attribute name="type">host</xsl:attribute>
            <xsl:attribute name="displayLabel">Collection</xsl:attribute>
            <xsl:element name="titleInfo" namespace="http://www.loc.gov/mods/v3">
                <xsl:element name="title" namespace="http://www.loc.gov/mods/v3">
                    <xsl:value-of select="normalize-space(.)"/>
                </xsl:element>
            </xsl:element>
        </xsl:element>
    </xsl:template>

  <xsl:template match="mods:name/mods:namePart">
        <xsl:element name="namePart" namespace="http://www.loc.gov/mods/v3"><xsl:value-of select="normalize-space(.)"/></xsl:element>
        <xsl:element name="role" namespace="http://www.loc.gov/mods/v3"> 
            <xsl:element name="roleTerm" namespace="http://www.loc.gov/mods/v3">Contributor</xsl:element>
        </xsl:element>    
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
    
    <xsl:template match="mods:identifier[@type='local']">
        <xsl:copy>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
    </xsl:template>

  <xsl:template match="mods:identifier[not(@type='local')]">
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
  
  <xsl:template match="mods:extent">
      <xsl:element name="extent" namespace="http://www.loc.gov/mods/v3">
          <xsl:value-of select="normalize-space(.)"/>
      </xsl:element>
  </xsl:template>

  <xsl:template match="mods:typeOfResource">
      <xsl:element name="typeOfResource" namespace="http://www.loc.gov/mods/v3">
          <xsl:value-of select="normalize-space(.)"/>
      </xsl:element>
  </xsl:template>
    
    <xsl:template match="mods:genre">
        <xsl:copy>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
    </xsl:template>
    
    <xsl:template match="mods:physicalDescription/mods:form[@authority='marccategory']">
        <xsl:copy>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
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
    
  <!-- ESDN utility templates -->
  <xsl:include href="esdn_templates.xsl"/>
  <xsl:include href="iso639x.xsl"/>
</xsl:stylesheet>
