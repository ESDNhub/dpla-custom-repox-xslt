<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:oai_dc="http://www.openarchives.org/OAI/2.0/oai_dc/"
    xmlns:dc="http://purl.org/dc/elements/1.1/" xmlns="http://www.loc.gov/mods/v3"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xlink="http://www.w3.org/1999/xlink"
    exclude-result-prefixes="xs xlink" version="2.0">

    <xsl:template match="dc:subject" mode="hrvh">
        <!-- HRVH has a number of cross-collection local topics they want ignored -->
        <xsl:variable name="ignored_topics">
            <topic>african americans</topic>
            <topic>agriculture</topic>
            <topic>architecture</topic>
            <topic>arts &amp; entertainment</topic>
            <topic>business &amp; industry</topic>
            <topic>civil liberties</topic>
            <topic>climate &amp; weather</topic>
            <topic>community &amp; events</topic>
            <topic>daily life</topic>
            <topic>education</topic>
            <topic>environment &amp; conservation</topic>
            <topic>geography &amp; natural resources</topic>
            <topic>government</topic>
            <topic>immigration &amp; ethnic heritage</topic>
            <topic>health &amp; medicine </topic>
            <topic>landscape &amp; nature</topic>
            <topic>literary tradition</topic>
            <topic>military</topic>
            <topic>native americans</topic>
            <topic>people</topic>
            <topic>presidents &amp; politicians</topic>
            <topic>recreation</topic>
            <topic>religion</topic>
            <topic>science &amp; technology</topic>
            <topic>sports</topic>
            <topic>transportation</topic>
            <topic>women</topic>
            <topic>work &amp; labor</topic>
        </xsl:variable>
        <xsl:for-each select="tokenize(., ';')">
            <xsl:if test="not(contains($ignored_topics, lower-case(normalize-space(.))))">
                <subject>
                    <topic>
                        <xsl:value-of select="normalize-space(.)"/>
                    </topic>
                </subject>
            </xsl:if>
        </xsl:for-each>
    </xsl:template>

    <!-- Update general Form/IMT mapping  -->

    <xsl:template match="dc:format" mode="hrvh">
        <xsl:choose>
            <xsl:when
                test="contains(., 'image/') or contains(., 'video/') or contains(., 'audio/') or contains(., 'application/')">
                <xsl:element name="internetMediaType" namespace="http://www.loc.gov/mods/v3">
                    <xsl:value-of select="normalize-space(lower-case(.))"/>
                </xsl:element>
            </xsl:when>
            <xsl:when test="contains(., ';')">
                <xsl:variable name="elmlist" select="tokenize(., ';')"/>
                <xsl:element name="form">
                    <xsl:value-of select="normalize-space($elmlist[1])"/>
                </xsl:element>
                <xsl:element name="extent">
                    <xsl:value-of select="normalize-space($elmlist[2])"/>
                </xsl:element>
            </xsl:when>
            <xsl:otherwise>
                <xsl:element name="form" namespace="http://www.loc.gov/mods/v3">
                    <xsl:value-of select="normalize-space(lower-case(.))"/>
                </xsl:element>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
    
    <xsl:template match="dc:rights" mode="hrvh">
        <xsl:if test="normalize-space(.)!=''">
            <xsl:choose>
                <xsl:when test="contains(., 'In Copyright') and contains(., 'http://rightsstatements.org/vocab/InC/1.0/')">
                    <xsl:element name="accessCondition" namespace="http://www.loc.gov/mods/v3">
                        <xsl:attribute name="type">use and reproduction</xsl:attribute>
                        <xsl:attribute name="xlink:href">http://rightsstatements.org/vocab/InC/1.0/</xsl:attribute>
                        <xsl:text>In Copyright</xsl:text>
                    </xsl:element>
                </xsl:when>
                <xsl:when test="contains(., 'Educational Use Permitted') or contains(., 'http://rightsstatements.org/vocab/InC-EDU/1.0/')">
                    <xsl:element name="accessCondition" namespace="http://www.loc.gov/mods/v3">
                        <xsl:attribute name="type">use and reproduction</xsl:attribute>
                        <xsl:attribute name="xlink:href">http://rightsstatements.org/vocab/InC-EDU/1.0/</xsl:attribute>
                        <xsl:text>In Copyright - Educational Use Permitted</xsl:text>
                    </xsl:element>
                </xsl:when>
                <xsl:when test="contains(., 'Non-Commercial Use Permitted') or contains(., 'http://rightsstatements.org/vocab/InC-NC/1.0/')">
                    <xsl:element name="accessCondition" namespace="http://www.loc.gov/mods/v3">
                        <xsl:attribute name="type">use and reproduction</xsl:attribute>
                        <xsl:attribute name="xlink:href">http://rightsstatements.org/vocab/InC-NC/1.0/</xsl:attribute>
                        <xsl:text>In Copyright - Non-Commercial Use Permitted</xsl:text>
                    </xsl:element>
                </xsl:when>
                <xsl:when test="contains(., 'Rights-Holder(s) Unlocatable or Unidentifiable') or contains(., 'http://rightsstatements.org/vocab/InC-RUU/1.0/')">
                    <xsl:element name="accessCondition" namespace="http://www.loc.gov/mods/v3">
                        <xsl:attribute name="type">use and reproduction</xsl:attribute>
                        <xsl:attribute name="xlink:href">http://rightsstatements.org/vocab/InC-RUU/1.0/</xsl:attribute>
                        <xsl:text>In Copyright - Rights-Holder(s) Unlocatable or Unidentifiable</xsl:text>
                    </xsl:element>
                </xsl:when>
                <xsl:when test="contains(., 'Other Known Legal Restrictions') or contains(., 'http://rightsstatements.org/vocab/NoC-OKLR/1.0/')">
                    <xsl:element name="accessCondition" namespace="http://www.loc.gov/mods/v3">
                        <xsl:attribute name="type">use and reproduction</xsl:attribute>
                        <xsl:attribute name="xlink:href">http://rightsstatements.org/vocab/NoC-OKLR/1.0/</xsl:attribute>
                        <xsl:text>No Copyright - Other Known Legal Restrictions</xsl:text>
                    </xsl:element>
                </xsl:when>
                <xsl:when test="contains(., 'No Copyright - United States') or contains(., 'http://rightsstatements.org/vocab/NoC-US/1.0/')">
                    <xsl:element name="accessCondition" namespace="http://www.loc.gov/mods/v3">
                        <xsl:attribute name="type">use and reproduction</xsl:attribute>
                        <xsl:attribute name="xlink:href">http://rightsstatements.org/vocab/NoC-US/1.0/</xsl:attribute>
                        <xsl:text>No Copyright - United States</xsl:text>
                    </xsl:element>
                </xsl:when>
                <xsl:when test="contains(.,'No Copyright - Non-Commercial Use Only') or contains(., 'http://rightsstatements.org/vocab/NoC-NC/1.0/')">
                    <xsl:element name="accessCondition" namespace="http://www.loc.gov/mods/v3">
                        <xsl:attribute name="type">use and reproduction</xsl:attribute>
                        <xsl:attribute name="xlink:href">http://rightsstatements.org/vocab/NoC-NC/1.0/</xsl:attribute>
                        <xsl:text>No Copyright - Non-Commercial Use Only</xsl:text>
                    </xsl:element>
                </xsl:when>
                <xsl:when test="contains(.,'Copyright Not Evaluated') or contains(., 'http://rightsstatements.org/vocab/CNE/1.0/')">
                    <xsl:element name="accessCondition" namespace="http://www.loc.gov/mods/v3">
                        <xsl:attribute name="type">use and reproduction</xsl:attribute>
                        <xsl:attribute name="xlink:href">http://rightsstatements.org/vocab/CNE/1.0/</xsl:attribute>
                        <xsl:text>Copyright Not Evaluated</xsl:text>
                    </xsl:element>
                </xsl:when>
                <xsl:when test="contains(.,'Copyright Undetermined') or contains(., 'http://rightsstatements.org/vocab/UND/1.0/')">
                    <xsl:element name="accessCondition" namespace="http://www.loc.gov/mods/v3">
                        <xsl:attribute name="type">use and reproduction</xsl:attribute>
                        <xsl:attribute name="xlink:href">http://rightsstatements.org/vocab/UND/1.0/</xsl:attribute>
                        <xsl:text>Copyright Undetermined</xsl:text>
                    </xsl:element>
                </xsl:when>
                <xsl:when test="contains(., 'No Known Copyright') or contains(., 'http://rightsstatements.org/vocab/NKC/1.0/')">
                    <xsl:element name="accessCondition" namespace="http://www.loc.gov/mods/v3">
                        <xsl:attribute name="type">use and reproduction</xsl:attribute>
                        <xsl:attribute name="xlink:href">http://rightsstatements.org/vocab/NKC/1.0/</xsl:attribute>
                        <xsl:text>No Known Copyright</xsl:text>
                    </xsl:element>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:element name="accessCondition" namespace="http://www.loc.gov/mods/v3">
                        <xsl:attribute name="type">local rights statements</xsl:attribute>
                        <xsl:value-of select="normalize-space(.)"/>
                    </xsl:element>
                </xsl:otherwise>
            </xsl:choose>
        </xsl:if>  
    </xsl:template>

</xsl:stylesheet>
