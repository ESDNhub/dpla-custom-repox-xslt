<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:oai_dc='http://www.openarchives.org/OAI/2.0/oai_dc/' xmlns:dc="http://purl.org/dc/elements/1.1/" xmlns="http://www.loc.gov/mods/v3"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
    
    <xsl:include href="utilities.xsl"/>
    
    <xsl:template match="dc:subject" mode="hrvh">
        <!-- HRVH has a number of cross-collection local topics
      that should not be output. Check normalized lowercase strings
      against this list and don't write if found. -->
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
                <subject><topic><xsl:call-template name="normalize-dashes">
                    <xsl:with-param name="dash-str"><xsl:value-of select="normalize-space(.)"/></xsl:with-param>
                </xsl:call-template></topic></subject>
            </xsl:if>
        </xsl:for-each>
    </xsl:template>
    
    <!-- HRVH are inconsistent wrt to number of delimited items in format string.
    Sometimes there are 1, sometimes 2, sometimes 3. Get token count and output
    based on that. -->
    <xsl:template match="dc:format" mode="hrvh">
        <xsl:variable name="tokens" select="tokenize(., ';')"/>
        <xsl:variable name="tct" select="count($tokens)"/>
        <xsl:if test="$tct > 1">
            <physicalDescription>
                <xsl:choose>
                    <xsl:when test="$tct = 3">
                        <!-- put the delimiter back when constructing the value.
            concat nicely takes variable number of args, so no need to
            create hideous nested calls. -->
                        <form><xsl:value-of select="concat(normalize-space($tokens[1]), '; ', normalize-space($tokens[2]))"></xsl:value-of></form>
                        <extent><xsl:value-of select="normalize-space($tokens[3])"/></extent>
                    </xsl:when>
                    <xsl:when test="$tct = 2">
                        <form><xsl:value-of select="normalize-space($tokens[1])"></xsl:value-of></form>
                        <extent><xsl:value-of select="normalize-space($tokens[2])"/></extent>
                    </xsl:when>
                    <xsl:otherwise/>
                </xsl:choose>    
            </physicalDescription>
        </xsl:if>
    </xsl:template>
</xsl:stylesheet>
