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
            <xsl:attribute name="version">3.4</xsl:attribute>
            <xsl:apply-templates select="@*|node()"/>
            
            <!-- hard code ownership note -->
            
            <xsl:element name="subject" namespace="http://www.loc.gov/mods/v3">
                <xsl:element name="topic" namespace="http://www.loc.gov/mods/v3">
                    <xsl:value-of select="normalize-space(./mods:subject/mods:name/mods:namePart/text())"/>
                </xsl:element>
            </xsl:element>
            
            <xsl:for-each select="./mods:originInfo/mods:place/mods:placeTerm">
                <xsl:element name="subject" namespace="http://www.loc.gov/mods/v3">
                    <xsl:element name="geographic" namespace="http://www.loc.gov/mods/v3">
                        <xsl:value-of select="normalize-space(./text())"/>
                    </xsl:element>
                </xsl:element>
                
            </xsl:for-each>

            <xsl:call-template name="parse_rights">
                <xsl:with-param name="rights_text">http://rightsstatements.org/vocab/InC/1.0/</xsl:with-param>
            </xsl:call-template>                
                       
            <xsl:call-template name="owner-note">
                <xsl:with-param name="owner">University of Rochester, River Campus Libraries</xsl:with-param>
            </xsl:call-template>
            <xsl:call-template name="intermediate-provider">
                <xsl:with-param name="council">Rochester Regional Library Council</xsl:with-param>
            </xsl:call-template>
        </xsl:copy>   
    </xsl:template>
    
    <xsl:template match="mods:name[./mods:role/mods:roleTerm='Addressee']"/>
    
    <xsl:template match="mods:roleTerm[./text()='Author']">
        <xsl:copy copy-namespaces="yes">creator</xsl:copy>
    </xsl:template>
    <xsl:template match="mods:recordInfo"/>
    <xsl:template match="mods:physicalDescription/mods:form/@authority"/>
    <xsl:template match="mods:genre/@authority"/>
    <xsl:template match="mods:roleTerm/@authority"/>
    <xsl:template match="mods:roleTerm/@type"/>
    <xsl:template match="mods:accessCondition[exists(./@type)]"/>
    <xsl:template match="mods:note"/>
    <xsl:template match="mods:location"/>
    <xsl:template match="mods:dateIssued"/>
    <xsl:template match="mods:hierarchicalGeographic"/>
    <xsl:template match="mods:cartographics"/>
    <xsl:template match="mods:classification"/>
    <xsl:template match="mods:tableOfContents"/>
    <xsl:template match="mods:languageOfCataloging"/>
    <xsl:template match="mods:copyrightDate"/>
    <xsl:template match="mods:issuance"/>
    <xsl:template match="mods:edition"/>
    <xsl:template match="mods:digitalOrigin"/>
    <xsl:template match="mods:abstract"/>
    <xsl:template match="mods:place"/>
    <xsl:template match="mods:accessCondition"/>
    <xsl:template match="mods:subject"/>
    <xsl:template match="mods:dateCreated/@encoding"/>
    <xsl:template match="mods:subTitle"/>
    <xsl:template match="mods:relatedItem"/>
    <xsl:template match="mods:dateCreated[2]"/>
    <xsl:template match="mods:dateCreated/@qualifier"/>
    <xsl:template match="mods:frequency"/>
    
    <xsl:template match="mods:physicalDescription/mods:internetMediaType"/>
    
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
    
    <xsl:template match="mods:genre">
        <xsl:copy>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
    </xsl:template>
    
    <!-- ESDN utility templates -->
    <xsl:include href="esdn_templates.xsl"/>
    <xsl:include href="iso639x.xsl"/>
    
</xsl:stylesheet>
