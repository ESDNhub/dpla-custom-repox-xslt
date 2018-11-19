<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:dc="http://purl.org/dc/elements/1.1/"
    xmlns:oai_dc="http://www.openarchives.org/OAI/2.0/oai_dc/"
    xmlns:xlink="http://www.w3.org/1999/xlink"
    xmlns:oai-pmh="http://www.openarchives.org/OAI/2.0/" xmlns:mods="http://www.loc.gov/mods/v3"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" exclude-result-prefixes="xs" version="2.0">
    <xsl:output indent="yes"/>
    <xsl:strip-space elements="*"/>

    <xsl:template match="/">
        <xsl:apply-templates select="//mods:mods"/>
    </xsl:template>

    <xsl:template match="mods:mods">
        <xsl:copy>
            <xsl:apply-templates/>
            <xsl:call-template name="build_title"/>
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
                    <xsl:element name="title" namespace="http://www.loc.gov/mods/v3">Hamilton College - Charles and Charlotte Wilbour Papers</xsl:element>
                </xsl:element>
            </xsl:element>
        </xsl:copy>
    </xsl:template>

    <xsl:template match="mods:accessCondition[@type = 'restriction on access']"/>
    <xsl:template match="mods:recordInfo"/>
    <xsl:template match="mods:location"/>
    <xsl:template match="mods:relatedItem"/>
    <xsl:template match="mods:titleInfo"/>
    
    <xsl:template name="build_title">
        <xsl:element name="titleInfo" namespace="http://www.loc.gov/mods/v3">
            <xsl:element name="title" namespace="http://www.loc.gov/mods/v3">
                <xsl:value-of select="string-join(./mods:titleInfo[not(exists(./@type))]/mods:title/text(), ' ')"/>
            </xsl:element>
        </xsl:element>
    </xsl:template>
    
    <xsl:template match="mods:dateCreated">
        <xsl:element name="originInfo" namespace="http://www.loc.gov/mods/v3">
            <xsl:element name="dateCreated" namespace="http://www.loc.gov/mods/v3">
                <xsl:attribute name="keyDate">yes</xsl:attribute>
                <xsl:value-of select="normalize-space(.)"/>
            </xsl:element>
        </xsl:element>               
    </xsl:template>
    
    <xsl:template match="mods:dateOther">
        <xsl:if test="not(exists(../mods:dateCreated))">
        <xsl:element name="originInfo" namespace="http://www.loc.gov/mods/v3">
            <xsl:element name="dateCreated" namespace="http://www.loc.gov/mods/v3">
                <xsl:attribute name="keyDate">yes</xsl:attribute>
                <xsl:value-of select="normalize-space(.)"/>
            </xsl:element>
        </xsl:element>
        </xsl:if>
    </xsl:template>

    <xsl:template name="build_date">
        <xsl:param name="date_val"/>
        <xsl:element name="originInfo" namespace="http://www.loc.gov/mods/v3">
            <xsl:element name="dateCreated" namespace="http://www.loc.gov/mods/v3">
                <xsl:attribute name="keyDate">yes</xsl:attribute>
                <xsl:value-of select="normalize-space($date_val)"/>
            </xsl:element>
        </xsl:element>       
    </xsl:template>

    
    <xsl:template match="mods:name">
        <xsl:element name="name" namespace="http://www.loc.gov/mods/v3">
            <xsl:attribute name="type">personal</xsl:attribute>
            <xsl:element name="namePart" namespace="http://www.loc.gov/mods/v3">
                <xsl:value-of select="./mods:namePart"/>
            </xsl:element>
            <xsl:element name="role" namespace="http://www.loc.gov/mods/v3">
                <xsl:element name="roleTerm" namespace="http://www.loc.gov/mods/v3">Contributor</xsl:element>
            </xsl:element>
        </xsl:element>
    </xsl:template>

    <xsl:template match="mods:identifier[@type = 'local']">
        <xsl:element name="identifier" namespace="http://www.loc.gov/mods/v3">
            <xsl:value-of select="normalize-space(.)"/>
        </xsl:element>
    </xsl:template>

    <xsl:template match="mods:identifier[not(@type = 'local')]">
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
    
    <xsl:template match="mods:physicalDescription">
        <xsl:element name="physicalDescription" namespace="http://www.loc.gov/mods/v3">
            <xsl:apply-templates select="mods:extent"/>
            <xsl:for-each select="../mods:genre">
                <xsl:element name="form" namespace="http://www.loc.gov/mods/v3">
                    <xsl:value-of select="."/>
                </xsl:element>                
            </xsl:for-each>
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
    
    <xsl:template match="mods:genre"/>

    <xsl:template match="mods:languageTerm[@type='text']">
        <xsl:copy-of select="." exclude-result-prefixes="#all"/>
    </xsl:template>
    
    <xsl:template match="mods:accessCondition[@type = 'use and reproduction']">
        <xsl:call-template name="parse_rights">
            <xsl:with-param name="rights_text"><xsl:value-of select="concat('http://', substring-after(., 'http://'))"/></xsl:with-param>
        </xsl:call-template>
    </xsl:template>
    
    <xsl:template match="mods:subject">
        <xsl:element name="subject" namespace="http://www.loc.gov/mods/v3">
            <xsl:element name="name" namespace="http://www.loc.gov/mods/v3">
                <xsl:element name="namePart" namespace="http://www.loc.gov/mods/v3">
                    <xsl:value-of select="mods:name/mods:namePart"/>
                </xsl:element>
            </xsl:element>
        </xsl:element>
    </xsl:template>

    <!-- ESDN utility templates -->
    <xsl:include href="esdn_templates.xsl"/>
</xsl:stylesheet>
