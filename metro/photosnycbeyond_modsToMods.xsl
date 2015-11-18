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
          <xsl:attribute name="xsi:schemaLocation">http://www.loc.gov/mods/v3 http://www.loc.gov/standards/mods/v3/mods-3-4.xsd</xsl:attribute>
          <xsl:attribute name="version">3.4</xsl:attribute>
          <xsl:apply-templates select="@*|node()"/>
            <xsl:call-template name="intermediate-provider"><xsl:with-param name="council">Metropolitan New York Library Council</xsl:with-param></xsl:call-template><xsl:call-template name="owner-note">
                <xsl:with-param name="owner">New-York Historical Society</xsl:with-param>
            </xsl:call-template>    
        </xsl:copy>
    </xsl:template>
    
    <xsl:template match="mods:accessCondition/@type"/>
    <xsl:template match="mods:relatedItem/@type" />
    <xsl:template match="mods:internetMediaType" />
    <xsl:template match="mods:digitalOrigin" />
    <xsl:template match="mods:location" />
    <xsl:template match="mods:physicalDescription/mods:note[@type='condition']"/>
    
    <xsl:template match="mods:relatedItem">
        <xsl:element name="relatedItem" namespace="http://www.loc.gov/mods/v3">
            <xsl:attribute name="type">host</xsl:attribute>
            <xsl:attribute name="displayLabel">Collection</xsl:attribute>
            <xsl:element name="titleInfo" namespace="http://www.loc.gov/mods/v3">
                <xsl:element name="title" namespace="http://www.loc.gov/mods/v3">New-York Historical Society-Photographs of New York City and Beyond</xsl:element>
            </xsl:element>
        </xsl:element>
    </xsl:template>
    
    <xsl:template match="mods:roleTerm">
        <xsl:element name="roleTerm" namespace="http://www.loc.gov/mods/v3">
            <xsl:choose>
                <xsl:when test="normalize-space(lower-case(.))='photographer'">creator</xsl:when>
                <xsl:when test="normalize-space(lower-case(.))='collector'">contributor</xsl:when>
                <xsl:otherwise>
                    <xsl:value-of select="normalize-space(lower-case(.))"/>
                </xsl:otherwise>
            </xsl:choose>
        </xsl:element>
   </xsl:template>
    
    <xsl:template match="mods:dateCreated">
        <xsl:call-template name="date-to-mods">
            <xsl:with-param name="dateval"><xsl:value-of select="normalize-space(.)"></xsl:value-of></xsl:with-param>
        </xsl:call-template>
    </xsl:template>
    
  <xsl:template match="identifier">
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
        <xsl:copy>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
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
  
  <xsl:template match="mods:note/@displayLabel"/>
    <xsl:template match="mods:note[@displayLabel='Photographer Note']" />
    <xsl:template match="mods:note">
        <xsl:element name="note" namespace="http://www.loc.gov/mods/v3">
            <xsl:attribute name="type">content</xsl:attribute>
            <xsl:value-of select="normalize-space(.)"/>
        </xsl:element>
    </xsl:template>
    
    <xsl:template match="mods:typeOfResource">
        <xsl:copy>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
    </xsl:template>
    
    <xsl:template match="mods:genre">
        <xsl:element name="genre" namespace="http://www.loc.gov/mods/v3">
            <xsl:attribute name="authority">aat</xsl:attribute>
            <xsl:choose>
                <xsl:when test="normalize-space(lower-case(.))='negatives (photographic)'">negatives (photographs)</xsl:when>
                <xsl:when test="normalize-space(lower-case(.))='glass negatives'">clichés-verre (negatives)</xsl:when>
                <xsl:otherwise>
                    <xsl:value-of select="normalize-space(lower-case(.))"/>
                </xsl:otherwise>
            </xsl:choose>
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
        
    <!-- ESDN utility templates -->
    <xsl:include href="esdn_templates.xsl"/>
    <xsl:include href="iso639x.xsl"/>
    
</xsl:stylesheet>
