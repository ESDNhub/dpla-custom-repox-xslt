<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:dc="http://purl.org/dc/elements/1.1/"
    xmlns:oai_dc="http://www.openarchives.org/OAI/2.0/oai_dc/"
    xmlns:oai-pmh="http://www.openarchives.org/OAI/2.0/" xmlns:mods="http://www.loc.gov/mods/v3"
    xmlns:xlink="http://www.w3.org/1999/xlink"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" exclude-result-prefixes="xs" version="2.0">
    <xsl:output indent="yes"/>
    <xsl:strip-space elements="*"/>
    
    <xsl:template match="@*|node()">
        <xsl:copy>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>     
    </xsl:template>
    
    <xsl:template match=
        "*[not(node())]
        |
        *[not(node()[2])
        and
        node()/self::text()
        and
        not(normalize-space())
        ]
        "/>

    <xsl:template match="mods:mods">
        <xsl:copy>
            <xsl:attribute name="xsi:schemaLocation">http://www.loc.gov/mods/v3
                http://www.loc.gov/standards/mods/v3/mods-3-4.xsd</xsl:attribute>
            <xsl:attribute name="version">3.4</xsl:attribute>
            <xsl:apply-templates select="@*|node()"/>
            
            <xsl:call-template name="parse_rights">
                <xsl:with-param name="rights_text">http://rightsstatements.org/vocab/NoC-US/1.0/</xsl:with-param>
            </xsl:call-template>
            
            <xsl:if test="exists(./mods:relatedItem[@type='isReferencedBy'])">
                <xsl:element name="relatedItem" namespace="http://www.loc.gov/mods/v3">
                    <xsl:element name="titleInfo" namespace="http://www.loc.gov/mods/v3">
                        <xsl:element name="title" namespace="http://www.loc.gov/mods/v3">
                            <xsl:value-of select="./mods:relatedItem[@type='isReferencedBy']/mods:titleInfo/mods:title/text()"/>
                        </xsl:element>
                    </xsl:element>
                </xsl:element>
            </xsl:if>
            
            <xsl:if test="exists(./mods:relatedItem/mods:originInfo/mods:publisher) or exists(./mods:relatedItem/mods:originInfo/mods:dateCreated)">
                <xsl:element name="originInfo" namespace="http://www.loc.gov/mods/v3">
                    <xsl:if test="./mods:relatedItem/mods:originInfo/mods:publisher/text()!=''">
                        <xsl:element name="publisher" namespace="http://www.loc.gov/mods/v3">
                            <xsl:value-of select="./mods:relatedItem/mods:originInfo/mods:publisher"/>
                        </xsl:element>
                    </xsl:if>
                    <xsl:if test="./mods:relatedItem/mods:originInfo/mods:dateCreated/text()!=''">
                        <xsl:call-template name="date-to-mods">
                            <xsl:with-param name="dateval">
                                <xsl:value-of select="./mods:relatedItem/mods:originInfo/mods:dateCreated"/>
                            </xsl:with-param>
                        </xsl:call-template>
                    </xsl:if>
                </xsl:element>
            </xsl:if>
            
            
                
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
    <xsl:template match="mods:genre"/>
    <xsl:template match="mods:note"/>
    <xsl:template match="mods:location"/>
    <xsl:template match="mods:dateIssued"/>
    <xsl:template match="mods:hierarchicalGeographic"/>
    <xsl:template match="mods:classification"/>
    <xsl:template match="mods:languageTerm[@type='text']"/>
    <xsl:template match="mods:place"/>
    <xsl:template match="mods:subject/@authority"/>
    <xsl:template match="mods:subject/@authorityURI"/>
    <xsl:template match="mods:geographic"/>
    <xsl:template match="mods:temporal"/>
    <xsl:template match="mods:cartographics"/>
    <xsl:template match="mods:relatedItem"/>
    <xsl:template match="mods:name"/>
    <xsl:template match="mods:originInfo"/>
    
    <xsl:template match="mods:nonSort"/>
    <xsl:template match="mods:publisher[./text()='']"/>
    <xsl:template match="mods:dateCreated[./text()='']"/>
    
    <xsl:template match="mods:accessCondition"/>
    
    <xsl:template match="mods:titleInfo">
        <xsl:choose>
            <xsl:when test="exists(./mods:nonSort)">
                <xsl:element name="titleInfo" namespace="http://www.loc.gov/mods/v3">
                    <xsl:element name="title" namespace="http://www.loc.gov/mods/v3">
                        <xsl:value-of select="concat(./mods:nonSort/text(), ./mods:title/text())"/>
                    </xsl:element>
                </xsl:element>
            </xsl:when>
            <xsl:otherwise>
                <xsl:copy-of select="."/>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
    
    <xsl:template match="mods:identifier[@type='local']"/>
    
    <xsl:template match="mods:identifier">
        <xsl:if test="starts-with(., 'http')">
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
        <xsl:element name="extent" namespace="http://www.loc.gov/mods/v3">
            <xsl:value-of select="normalize-space(.)"/>
        </xsl:element>
    </xsl:template>
    
    <!-- ESDN utility templates -->
    <xsl:include href="esdn_templates.xsl"/>
    <xsl:include href="iso639x.xsl"/>
    
</xsl:stylesheet>
