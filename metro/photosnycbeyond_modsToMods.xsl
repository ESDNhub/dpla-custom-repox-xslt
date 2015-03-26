<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:dc="http://purl.org/dc/elements/1.1/"
    xmlns:oai_dc="http://www.openarchives.org/OAI/2.0/oai_dc/"
    xmlns:oai-pmh="http://www.openarchives.org/OAI/2.0/"
    xmlns:mods="http://www.loc.gov/mods/v3"
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
            <xsl:apply-templates select="@*|node()"/>
            <xsl:call-template name="owner-note">
                <xsl:with-param name="owner">New-York Historical Society</xsl:with-param>
            </xsl:call-template>    
        </xsl:copy>
    </xsl:template>
    
    <xsl:template match="mods:accessCondition/@type"/>
    <xsl:template match="mods:relatedItem/@type" />
    <xsl:template match="mods:internetMediaType" />
    <xsl:template match="mods:digitalOrigin" />
    <xsl:template match="mods:location" />
    
    <xsl:template match="mods:roleTerm">
        <xsl:copy>
        <xsl:choose>
            <xsl:when test="normalize-space(lower-case(.))='photographer'">Creator</xsl:when>
            <xsl:when test="normalize-space(lower-case(.))='collector'">Contributor</xsl:when>
            <xsl:otherwise>
                <xsl:apply-templates select="@*|node()"/>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:copy>
   </xsl:template>
    
    <xsl:template match="mods:dateCreated">
        <xsl:copy>
            <xsl:attribute name="keyDate">yes</xsl:attribute>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
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
    
    <xsl:template match="mods:note/@displayLabel"/>
    <xsl:template match="mods:note">
        <xsl:element name="note" namespace="http://www.loc.gov/mods/v3">
            <xsl:attribute name="type">content</xsl:attribute>
            <xsl:value-of select="normalize-space(.)"/>
        </xsl:element>
    </xsl:template>
    
    <xsl:template match="mods:physicalDescription">
        <xsl:copy>
            <xsl:apply-templates select="@*|node()"/>
            <xsl:for-each select="../mods:genre">
                <xsl:element name="form" xmlns="http://www.loc.gov/mods/v3">
                    <xsl:apply-templates select="@*|node()"/>
                </xsl:element>
            </xsl:for-each>
        </xsl:copy>
    </xsl:template>
    
    <xsl:template match="mods:genre"/>

    <xsl:template match="mods:typeOfResource">
        <xsl:copy>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
        <xsl:call-template name="mods-genre">
            <xsl:with-param name="dc_type">
                <xsl:value-of select="normalize-space(.)"/>
            </xsl:with-param>
        </xsl:call-template>
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
