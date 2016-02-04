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

    <xsl:template match="mods:mods">
        <xsl:copy>
            <xsl:attribute name="xsi:schemaLocation">http://www.loc.gov/mods/v3
                http://www.loc.gov/standards/mods/v3/mods-3-4.xsd</xsl:attribute>
            <xsl:attribute name="version">3.4</xsl:attribute>
            <xsl:apply-templates select="@*|node()"/>
            
            <!-- hard code collection and ownership note -->
            
            <xsl:call-template name="owner-note">
                <xsl:with-param name="owner">University of Rochester, River Campus Libraries</xsl:with-param>
            </xsl:call-template>
            
            <xsl:element name="relatedItem" namespace="http://www.loc.gov/mods/v3">
                <xsl:attribute name="type">host</xsl:attribute>
                <xsl:attribute name="displayLabel">Collection</xsl:attribute>
                <xsl:element name="abstract" namespace="http://www.loc.gov/mods/v3">The Hayes-Coleman Family Papers includes correspondence, documents, diaries, physician's "visiting books," household accounts, photographs, and memorabilia of various members of the Hayes-Coleman family of Canandaigua, New York. They are primarily concerned with the Canandaigua area, but they include, either in the original or in transcript, diaries and letters relating to Frederick Maryland, Brooklyn New York, ranch life in Colorado, and the life of an art student in Paris in 1890. The digitized volumes includes two diaries from Augustus Graham Coleman.</xsl:element>
            </xsl:element>
        </xsl:copy>
    </xsl:template>

    <xsl:template match="mods:recordInfo"/>
    <xsl:template match="mods:dateIssued"/>
    <xsl:template match="mods:form/@authority"/>
    <xsl:template match="mods:physicalDescription/mods:form[@authority='marcform']"/>
    <xsl:template match="mods:languageTerm/@type"/>
    <xsl:template match="mods:internetMediaType"/>
    <xsl:template match="mods:digitalOrigin"/>
    <xsl:template match="mods:location[exists(./mods:shelfLocator)]"/>
    <xsl:template match="mods:identifier[@type='job']"/>
    <xsl:template match="mods:dateCreated/@encoding"/>
    
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

    <xsl:template match="mods:roleTerm">
        <xsl:element name="roleTerm" namespace="http://www.loc.gov/mods/v3">
            <xsl:choose>
                <xsl:when test="normalize-space(lower-case(.))='author'">creator</xsl:when>
                <xsl:otherwise>contributor</xsl:otherwise>
            </xsl:choose>
        </xsl:element>
    </xsl:template>

    <xsl:template match="mods:originInfo[exists(mods:dateCreated[@point='start'])]">
        <xsl:element name="originInfo" namespace="http://www.loc.gov/mods/v3">
            <xsl:element name="dateCreated" namespace="http://www.loc.gov/mods/v3">
                <xsl:attribute name="point">start</xsl:attribute>
                <xsl:attribute name="keyDate">yes</xsl:attribute>
                <xsl:value-of select="./mods:dateCreated[@point='start']"/>
            </xsl:element>
            <xsl:element name="dateCreated" namespace="http://www.loc.gov/mods/v3">
                <xsl:attribute name="point">end</xsl:attribute>
                <!-- remember this pattern: take the value, but suppress the element -->
                <xsl:value-of
                    select="//mods:originInfo[exists(mods:dateCreated[@point='end'])]/mods:dateCreated"
                />
            </xsl:element>
        </xsl:element>
    </xsl:template>

    <!-- suppress the element whose value we use above -->
    
    <xsl:template match="mods:originInfo[exists(./mods:dateCreated[@point='end'])]"/>

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

    <xsl:template match="mods:identifier">
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
        <xsl:copy>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
    </xsl:template>
    
    <!-- add AAT for DPLA genre property -->
    
    <xsl:template match="mods:genre">
        <xsl:element name="genre" namespace="http://www.loc.gov/mods/v3">
            <xsl:attribute name="authority">aat</xsl:attribute>
            <xsl:value-of select="normalize-space(lower-case(.))"/>
        </xsl:element>
    </xsl:template>

    <xsl:template match="mods:originInfo[exists(./mods:place)]">
        <xsl:apply-templates select="./mods:place"/>
    </xsl:template>

    <!-- take from place/place term for DPLA Place property -->
    
    <xsl:template match="mods:place">
        <xsl:element name="subject" namespace="http://www.loc.gov/mods/v3">
            <xsl:element name="geographic" namespace="http://www.loc.gov/mods/v3">
                <xsl:value-of select="./mods:placeTerm"/>
            </xsl:element>
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
