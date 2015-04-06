<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:oai_dc='http://www.openarchives.org/OAI/2.0/oai_dc/' xmlns:dc="http://purl.org/dc/elements/1.1/" xmlns="http://www.loc.gov/mods/v3"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
    <xsl:template match="dc:subject" mode="nyh">
        <!-- HRVH has a number of cross-collection local topics
      that should not be output. Check normalized lowercase strings
      against this list and don't write if found. -->
        <xsl:variable name="ignored_topics">
            <topic>agriculture</topic>
            <topic>architecture</topic>
            <topic>arts &amp; entertainment</topic>
            <topic>business &amp; industry</topic>
            <topic>community &amp; events</topic>
            <topic>daily life</topic>
            <topic>education</topic>
            <topic>environment &amp; nature</topic>
            <topic>ethnic groups</topic>
            <topic>geography &amp; maps</topic>
            <topic>government, law &amp; politics</topic>
            <topic>medicine, science &amp; technology</topic>
            <topic>military &amp; war</topic>
            <topic>people</topic>
            <topic>philosophy &amp; religion</topic>
            <topic>recreation &amp; sports</topic>
            <topic>transportation</topic>
            <topic>work &amp; labor</topic>
        </xsl:variable>
        <xsl:for-each select="tokenize(., ';')">
            <xsl:if test="not(contains($ignored_topics, lower-case(normalize-space(.))))">
                <subject><topic><xsl:value-of select="normalize-space(.)"/></topic></subject>
            </xsl:if>
        </xsl:for-each>
    </xsl:template>
</xsl:stylesheet>
