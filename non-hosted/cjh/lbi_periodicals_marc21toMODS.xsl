<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns="http://www.loc.gov/mods/v3"
    xmlns:marc="http://www.loc.gov/MARC21/slim"
    xmlns:xlink="http://www.w3.org/1999/xlink"
    exclude-result-prefixes="xs xlink marc"
    version="2.0">
    <xsl:output omit-xml-declaration="yes" indent="yes"/>
    <xsl:strip-space elements="*"/>
    <!-- TODO: Add conditionals for indicators -->
    <xsl:template match="/">
        <xsl:for-each select="//marc:record">
            <mods xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" version="3.4"
                xsi:schemaLocation="http://www.loc.gov/mods/v3 http://www.loc.gov/standards/mods/v3/mods-3-4.xsd">
                
                <xsl:for-each select="marc:datafield[@tag='700'][not(marc:subfield[@code='t'])]">
                    <name>
                        <namePart><xsl:value-of select="normalize-space(./marc:subfield[@code='a'])"/></namePart>
                        <role>
                            <roleTerm>contributor</roleTerm>
                        </role>
                    </name>
                </xsl:for-each>
                
                <xsl:for-each select="marc:datafield[@tag='710']">
                    <name>
                        <namePart><xsl:value-of select="normalize-space(./marc:subfield[@code='a'])"/></namePart>
                        <role>
                            <roleTerm>contributor</roleTerm>
                        </role>
                    </name>
                </xsl:for-each>
                
                <xsl:for-each select="marc:datafield[@tag='110']">
                    <name>
                        <namePart><xsl:value-of select="./marc:subfield[@code='a']"/></namePart>
                        <role>
                            <roleTerm>creator</roleTerm>
                        </role>
                    </name>
                </xsl:for-each>
                
                <xsl:if test="count(marc:datafield[@tag='260'][marc:subfield[@code='c']]) > 0 or
                    count(marc:datafield[@tag='260'][marc:subfield[@code='b']]) > 0">
                    <originInfo>
                        <xsl:for-each select="marc:datafield[@tag='260'][marc:subfield[@code='c']]">
                            <xsl:variable name="thedate" select="./marc:subfield[@code='c']"/>
                            <xsl:call-template name="date-to-mods">
                                <xsl:with-param name="dateval"><xsl:value-of select="$thedate"/></xsl:with-param>
                            </xsl:call-template>
                        </xsl:for-each>
                        <xsl:for-each select="marc:datafield[@tag='260'][marc:subfield[@code='b']]">
                            <xsl:for-each select="./marc:subfield[@code='b']">
                                <xsl:element name="publisher">
                                    <xsl:value-of select="normalize-space(.)"/>
                                </xsl:element>
                            </xsl:for-each>
                        </xsl:for-each>
                    </originInfo>
                </xsl:if>
                
                <xsl:for-each select="marc:datafield[@tag='520'][marc:subfield[@code='a']]">
                    <xsl:element name="note">
                        <xsl:attribute name="type">content</xsl:attribute>
                        <xsl:value-of select="normalize-space(./marc:subfield[@code='a'])"/>
                    </xsl:element>
                </xsl:for-each>
                
                <xsl:for-each select="marc:datafield[@tag='010'][marc:subfield[@code='a']]">
                    <xsl:element name="identifier">
                        <xsl:attribute name="type">content</xsl:attribute>
                        <xsl:value-of select="normalize-space(./marc:subfield[@code='a'])"/>
                    </xsl:element>
                </xsl:for-each>
                
                <xsl:choose>
                    <xsl:when test="count(marc:datafield[@tag='041'][marc:subfield[@code='a']])>0">
                        <xsl:element name="language">
                            <xsl:for-each select="marc:datafield[@tag='041']/marc:subfield[@code='a']">
                                <xsl:element name="languageTerm"><xsl:value-of select="normalize-space(.)"/></xsl:element>
                            </xsl:for-each>
                        </xsl:element>                        
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:for-each select="marc:datafield[@tag='546']/marc:subfield[@code='a']">
                            <xsl:element name="languageTerm">
                                <xsl:call-template name="iso6393-codes">
                                    <xsl:with-param name="lval"><xsl:value-of select="normalize-space(.)"/></xsl:with-param>
                                </xsl:call-template>
                            </xsl:element>
                        </xsl:for-each>
                    </xsl:otherwise>
                </xsl:choose>
                
                <xsl:for-each select="marc:datafield[@tag='651'][marc:subfield[@code='a']]">
                    <xsl:element name="subject">
                        <xsl:element name="geographic">
                            <xsl:value-of select="normalize-space(./marc:subfield[@code='a'])"/>
                        </xsl:element>
                    </xsl:element>
                </xsl:for-each>
            
                <xsl:for-each-group select="marc:datafield[@tag='650']" group-by="./marc:subfield">
                    <xsl:element name="subject">
                        <xsl:element name="topic">
                            <xsl:value-of select="current-grouping-key()"/>
                        </xsl:element>
                    </xsl:element>
                </xsl:for-each-group>

                <xsl:element name="titleInfo">
                    <xsl:choose>
                        <xsl:when test="count(marc:datafield[@tag='130'][marc:subfield[@code='a']])>0">
                            <xsl:for-each select="marc:datafield[@tag='130'][marc:subfield[@code='a']]">
                                <xsl:element name="title"><xsl:value-of select="normalize-space(./marc:subfield[@code='a'])"></xsl:value-of>
                                </xsl:element>
                            </xsl:for-each>
                        </xsl:when>
                        <xsl:otherwise>
                            <xsl:for-each select="marc:datafield[@tag='245'][marc:subfield[@code='a']]">
                                <xsl:element name="title"><xsl:value-of select="normalize-space(./marc:subfield[@code='a'])"></xsl:value-of>
                                </xsl:element>
                            </xsl:for-each>                    
                        </xsl:otherwise>
                    </xsl:choose>
                </xsl:element>
                
                <xsl:for-each select="marc:datafield[@tag='336'][marc:subfield[@code='a']]">
                    <xsl:element name="typeOfResource">
                        <xsl:value-of select="normalize-space(./marc:subfield[@code='a'])">
                    </xsl:value-of></xsl:element>
                </xsl:for-each>
                
                <xsl:call-template name="owner-note">
                    <xsl:with-param name="owner">
                        <xsl:value-of select="concat(marc:datafield[@tag='852']/marc:subfield[@code='a'], '. ', marc:datafield[@tag='852']/marc:subfield[@code='b'], '.')"/>
                    </xsl:with-param>
                </xsl:call-template>
                
                <xsl:element name="location">
                    <xsl:element name="url">
                        <xsl:attribute name="usage">primary display</xsl:attribute>
                        <xsl:attribute name="access">object in context</xsl:attribute>
                        <xsl:value-of select="normalize-space(marc:datafield[@tag='856']/marc:subfield[@code='u'])"/>
                    </xsl:element>
                </xsl:element>
                
                <xsl:element name="location">
                    <xsl:for-each select="marc:datafield[@tag='856'][marc:subfield[@code='x']]">
                        <xsl:element name="url">
                            <xsl:attribute name="access">preview</xsl:attribute>
                            <xsl:value-of select="normalize-space(./marc:subfield[@code='x'])"/>
                        </xsl:element>
                    </xsl:for-each>
                </xsl:element>
            </mods>
        </xsl:for-each>
        
                
    </xsl:template>
    <xsl:include href="iso639x.xsl"/>
    <xsl:include href="esdn_templates.xsl"/>
</xsl:stylesheet>