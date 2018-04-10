<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:dc="http://purl.org/dc/elements/1.1/"
    xmlns:oai_dc="http://www.openarchives.org/OAI/2.0/oai_dc/"
    xmlns:oai-pmh="http://www.openarchives.org/OAI/2.0/" xmlns:mods="http://www.loc.gov/mods/v3"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" exclude-result-prefixes="xs" version="2.0">
    <xsl:output indent="yes"/>
    <xsl:strip-space elements="*"/>
       
    <xsl:template match="@*|node()">
        <xsl:copy>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>     
    </xsl:template>

    <xsl:template match="/">
        <xsl:apply-templates select="//mods:mods[normalize-space(./mods:titleInfo/mods:title) != 'May Bragdon']"/>
    </xsl:template>
    
    <xsl:template match="mods:mods">
        <xsl:copy>
            <xsl:attribute name="xsi:schemaLocation">http://www.loc.gov/mods/v3
                http://www.loc.gov/standards/mods/v3/mods-3-4.xsd</xsl:attribute>
            <xsl:attribute name="version">3.4</xsl:attribute>
            <xsl:apply-templates select="@*|node()"/>
        
            <!-- hard code ownership note -->
            
            <xsl:call-template name="owner-note">
                <xsl:with-param name="owner">University of Rochester, River Campus Libraries</xsl:with-param>
            </xsl:call-template>
            <xsl:call-template name="intermediate-provider">
                <xsl:with-param name="council">Rochester Regional Library Council</xsl:with-param>
            </xsl:call-template>            
        </xsl:copy>   
    </xsl:template>

    <xsl:template match="mods:recordInfo"/>
    <xsl:template match="mods:physicalDescription/mods:form[@authority='marcform']"/>
    <xsl:template match="mods:digitalOrigin"/>
    <xsl:template match="mods:location"/>
    <xsl:template match="mods:language/mods:languageTerm[@type='text']"/>
    <xsl:template match="mods:typeOfResource[@collection='yes']"/>
    
    <xsl:template match="mods:physicalDescription/internetMediaType">
        <xsl:copy>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
    </xsl:template>
       
    <!-- collection info -->
    
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
    
    <xsl:template match="mods:abstract">
        <xsl:element name="note" namespace="http://www.loc.gov/mods/v3">
            <xsl:attribute name="type">content</xsl:attribute>
            <xsl:value-of select="normalize-space(.)"/>       
         </xsl:element>
    </xsl:template>

    <xsl:template match="mods:roleTerm">
        <xsl:copy>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
    </xsl:template>

    <xsl:template match="mods:originInfo/mods:dateCreated[@point='start']">
        <xsl:element name="dateCreated" namespace="http://www.loc.gov/mods/v3">
            <xsl:attribute name="keyDate">yes</xsl:attribute>
            <xsl:attribute name="point">start</xsl:attribute>
                <xsl:value-of select="normalize-space(.)"/>
        </xsl:element>
    </xsl:template>
    
    <xsl:template match="mods:originInfo/mods:dateCreated[@point='end']">
        <xsl:element name="dateCreated" namespace="http://www.loc.gov/mods/v3">
            <xsl:attribute name="point">end</xsl:attribute>
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
        <xsl:element name="identifier" namespace="http://www.loc.gov/mods/v3">
            <xsl:value-of select="normalize-space(.)"/>
        </xsl:element>
    </xsl:template>
    
    <xsl:template match="mods:identifier">
        <xsl:if test="starts-with(., 'http')">
            <xsl:element name="location" namespace="http://www.loc.gov/mods/v3">
                <xsl:element name="url" namespace="http://www.loc.gov/mods/v3">
                    <xsl:attribute name="usage">primary display</xsl:attribute>
                    <xsl:attribute name="access">object in context</xsl:attribute>
                    <xsl:value-of select="normalize-space(.)"/>
                </xsl:element>
            </xsl:element>
            <xsl:choose>
                <xsl:when test="starts-with(lower-case(../mods:typeOfResource[1]), 'sound recording')"/>
                <xsl:otherwise>
                    <xsl:element name="location" namespace="http://www.loc.gov/mods/v3">
                        <xsl:element name="url" namespace="http://www.loc.gov/mods/v3">
                            <xsl:attribute name="access">preview</xsl:attribute>
                            <xsl:value-of select="concat(normalize-space(.), '/datastream/TN/view')"/>
                        </xsl:element>
                    </xsl:element>                    
                </xsl:otherwise>
            </xsl:choose>
        </xsl:if>
    </xsl:template>

    <xsl:template match="mods:extent">
        <xsl:element name="extent" namespace="http://www.loc.gov/mods/v3">
            <xsl:value-of select="normalize-space(.)"/>
        </xsl:element>
    </xsl:template>
    
    <xsl:template match="mods:genre">
        <xsl:copy>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
    </xsl:template>

    <xsl:template match="mods:languageTerm">
        <xsl:copy>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
    </xsl:template>
    
    <xsl:template match="mods:accessCondition">
        <xsl:variable name="rs_rights" select="substring-after(., substring-before(., 'http://'))"/>
        <xsl:call-template name="parse_rights">
            <xsl:with-param name="rights_text"><xsl:value-of select="$rs_rights"/></xsl:with-param>
        </xsl:call-template>
    </xsl:template>
    
    <xsl:template match="mods:typeOfResource">
        <xsl:choose>
            <xsl:when test="starts-with(lower-case(.), 'sound recording')">
                <xsl:element name="typeOfResource" namespace="http://www.loc.gov/mods/v3">sound recording</xsl:element>
            </xsl:when>
            <xsl:otherwise>
                <xsl:copy-of select="."/>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
    
    <!-- ESDN utility templates -->
    <xsl:include href="esdn_templates.xsl"/>
    <xsl:include href="iso639x.xsl"/>

</xsl:stylesheet>
