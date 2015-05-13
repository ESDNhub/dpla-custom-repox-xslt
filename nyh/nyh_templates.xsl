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
    
    <xsl:template match="dc:coverage" mode="nyh">
        <!-- NYH has a number of cross-collection "time periods"
        that should not be output. Check normalized lowercase strings
        against this list and don't write if found. -->
        <xsl:variable name="ignore_time_periods">early america (pre 1607);colonial america (1607-1763);revolutionary period (1764-1789);new nation (1790-1828);jacksonian era (1828-1859);industrial period (1860-1890);civil war (1860-1865);reconstruction (1866-1877);gilded age (1878-1889);progressive era (1890-1913);world war i (1914-1918);jazz age (1919-1928);the great depression (1929-1938);world war ii (1939-1945);cold war (1945-1989);vietnam war (1960-1980);information age (1971-present);</xsl:variable>
        <xsl:if test="not(contains($ignore_time_periods, lower-case(normalize-space(.))))">
            <xsl:variable name="coveragevalue" select="normalize-space(.)"/>
            <xsl:for-each select="tokenize($coveragevalue,';')">
                <xsl:if test="normalize-space(.)!=''">
                    <xsl:choose>
                        <!-- check to see if there are any numbers in this coverage value -->
                        <xsl:when test='matches(.,"\d+")'>
                            <xsl:choose>
                                <!-- if numbers follow a coordinate pattern, it's probably geo data -->
                                <xsl:when test='matches(.,"\d+\.\d+")'>
                                    <subject><geographic><xsl:value-of select="normalize-space(.)"/></geographic></subject> <!--coverage-->
                                </xsl:when>
                                <!-- if there's no coordinate pattern, it's probably temporal data; put it in <subject><topic> -->
                                <xsl:otherwise>
                                    <subject><topic><xsl:value-of select="normalize-space(.)"/></topic></subject>
                                </xsl:otherwise>
                            </xsl:choose>
                        </xsl:when>
                        <!-- if there are no numbers, it's probably geo data --> 
                        <xsl:otherwise>
                            <subject><geographic><xsl:value-of select="normalize-space(.)"/></geographic></subject> <!--coverage-->
                        </xsl:otherwise>
                    </xsl:choose>
                </xsl:if>
            </xsl:for-each>
        </xsl:if>
    </xsl:template>  
    
    
</xsl:stylesheet>
