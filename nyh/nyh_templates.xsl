<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:oai_dc='http://www.openarchives.org/OAI/2.0/oai_dc/' xmlns:dc="http://purl.org/dc/elements/1.1/" xmlns="http://www.loc.gov/mods/v3"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:xlink="http://www.w3.org/1999/xlink"
    exclude-result-prefixes="xs xlink"
    version="2.0">
    
    <xsl:template match="dc:subject" mode="nyh">
        <!-- NYH has a number of cross-collection local topics they want ignored -->
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
                <subject><topic><xsl:call-template name="normalize-dashes">
                    <xsl:with-param name="dash-str"><xsl:value-of select="normalize-space(.)"/></xsl:with-param>
                </xsl:call-template></topic></subject>
            </xsl:if>
        </xsl:for-each>
    </xsl:template>
    
    <xsl:template match="dc:coverage" mode="nyh">
        <!-- NYH has a number of cross-collection "time periods" that they want ignored. -->
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
                                <!-- if there's no coordinate pattern, it's probably temporal data; put it in <subject><temporal> -->
                                <xsl:otherwise>
                                    <subject><temporal><xsl:value-of select="normalize-space(.)"/></temporal></subject>
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
    
  <!-- Map NYH Physical Format terms to MODS Genre or IMT based on format value -->
  
  <xsl:template match="dc:format" mode="nyh">
      <xsl:variable name="genres">
          <term>advertisements</term>
          <term>aerial photographs</term>
          <term>albumen prints</term>
          <term>ammunition and weapons</term>
          <term>announcements and press releases</term>
          <term>architectural drawings (visual works)</term>
          <term>art and decorative works</term>
          <term>articles</term>
          <term>atlases</term>
          <term>black-and-white photographs</term>
          <term>books</term>
          <term>born digital</term>
          <term>broadcasts</term>
          <term>broadsides</term>
          <term>cabinet cards</term>
          <term>calendars</term>
          <term>cartes-de-visite (card photographs)</term>
          <term>catalogs</term>
          <term>charts and graphs</term>
          <term>collodion photographs</term>
          <term>color photographs</term>
          <term>contact prints</term>
          <term>correspondence</term>
          <term>containers</term>
          <term>costumes</term>
          <term>cyanotypes</term>
          <term>daguerreotypes</term>
          <term>diaries</term>
          <term>directories</term>
          <term>drawings</term>
          <term>ephemera (images)</term>
          <term>ephemera (text)</term>
          <term>equipment and tools</term>
          <term>financial documents</term>
          <term>finding aids</term>
          <term>flags</term>
          <term>furniture</term>
          <term>games and toys</term>
          <term>gelatin silver prints</term>
          <term>genealogical tables</term>
          <term>greeting cards</term>
          <term>home movies</term>
          <term>illuminated manuscripts</term>
          <term>independent films</term>
          <term>instructional materials</term>
          <term>journals and magazines (periodicals)</term>
          <term>lantern slides</term>
          <term>law and legal documents</term>
          <term>manuscripts</term>
          <term>maps</term>
          <term>meeting minutes</term>
          <term>memorandums</term>
          <term>menus</term>
          <term>music (audio)</term>
          <term>music (text)</term>
          <term>negatives (photographic)</term>
          <term>newsletters</term>
          <term>newspapers</term>
          <term>newsreels</term>
          <term>oral histories</term>
          <term>paintings</term>
          <term>pamphlets</term>
          <term>panoramas</term>
          <term>photograph albums</term>
          <term>photographs</term>
          <term>postcards</term>
          <term>posters</term>
          <term>prints</term>
          <term>reports</term>
          <term>schedules (time plans)</term>
          <term>scrapbooks</term>
          <term>sepia photographs</term>
          <term>signs</term>
          <term>sketchbooks</term>
          <term>slides (photographs)</term>
          <term>speeches (audio)</term>
          <term>speeches (text)</term>
          <term>stereographs</term>
          <term>studio portraits (photographs)</term>
          <term>telegrams</term>
          <term>television programs</term>
          <term>tintypes</term>
          <term>transcripts</term>
          <term>transportation vehicles</term>
          <term>woodcuts (visual works)</term>
          <term>yearbooks</term>
      </xsl:variable>
      <xsl:variable name="genrelist" select="tokenize(normalize-space(.), ';')"/>
      <xsl:for-each select="$genrelist">
          <xsl:if test="normalize-space(.)!=''">
              <xsl:choose>
                  <xsl:when test="contains($genres, normalize-space(lower-case(.)))">
                      <xsl:element name="genre" namespace="http://www.loc.gov/mods/v3">
                          <xsl:attribute name="authority">aat</xsl:attribute>
                          <xsl:value-of select="normalize-space(lower-case(.))"/>
                      </xsl:element>
                  </xsl:when>
                  <xsl:when test="contains(., 'image/') or contains(., 'video/') or contains(.,'audio/') or contains(., 'application/')">
                      <xsl:element name="physicalDescription" namespace="http://www.loc.gov/mods/v3">
                          <xsl:element name="internetMediaType" namespace="http://www.loc.gov/mods/v3">
                              <xsl:value-of select="normalize-space(lower-case(.))"/>
                          </xsl:element>
                      </xsl:element>
                  </xsl:when>
                  <xsl:otherwise>
                      <xsl:element name="genre" namespace="http://www.loc.gov/mods/v3">
                          <xsl:value-of select="normalize-space(lower-case(.))"/>             
                      </xsl:element>
                  </xsl:otherwise>
              </xsl:choose>
          </xsl:if>
      </xsl:for-each>
  </xsl:template>
    
    <xsl:template match="dc:rights" mode="nyh">
        <xsl:if test="normalize-space(.)!=''">
            <xsl:choose>
                <xsl:when test="normalize-space(lower-case(.)) = 'in copyright') or contains(., 'http://rightsstatements.org/vocab/InC/1.0/')">
                    <xsl:element name="accessCondition" namespace="http://www.loc.gov/mods/v3">
                        <xsl:attribute name="type">use and reproduction</xsl:attribute>
                        <xsl:attribute name="xlink:href">http://rightsstatements.org/vocab/InC/1.0/</xsl:attribute>
                        <xsl:text>In Copyright</xsl:text>
                    </xsl:element>
                </xsl:when>
                <xsl:when test="contains(normalize-space(lower-case(.)), 'educational use permitted') or contains(., 'http://rightsstatements.org/vocab/InC-EDU/1.0/')">
                    <xsl:element name="accessCondition" namespace="http://www.loc.gov/mods/v3">
                        <xsl:attribute name="type">use and reproduction</xsl:attribute>
                        <xsl:attribute name="xlink:href">http://rightsstatements.org/vocab/InC-EDU/1.0/</xsl:attribute>
                        <xsl:text>In Copyright - Educational Use Permitted</xsl:text>
                    </xsl:element>
                </xsl:when>
                <xsl:when test="contains(normalize-space(lower-case(.)), 'non-commercial use permitted') or contains(., 'http://rightsstatements.org/vocab/InC-NC/1.0/')">
                    <xsl:element name="accessCondition" namespace="http://www.loc.gov/mods/v3">
                        <xsl:attribute name="type">use and reproduction</xsl:attribute>
                        <xsl:attribute name="xlink:href">http://rightsstatements.org/vocab/InC-NC/1.0/</xsl:attribute>
                        <xsl:text>In Copyright - Non-Commercial Use Permitted</xsl:text>
                    </xsl:element>
                </xsl:when>
                <xsl:when test="contains(normalize-space(lower-case(.)), 'rights-holder(s) unlocatable or unidentifiable') or contains(., 'http://rightsstatements.org/vocab/InC-RUU/1.0/')">
                    <xsl:element name="accessCondition" namespace="http://www.loc.gov/mods/v3">
                        <xsl:attribute name="type">use and reproduction</xsl:attribute>
                        <xsl:attribute name="xlink:href">http://rightsstatements.org/vocab/InC-RUU/1.0/</xsl:attribute>
                        <xsl:text>In Copyright - Rights-Holder(s) Unlocatable or Unidentifiable</xsl:text>
                    </xsl:element>
                </xsl:when>
                <xsl:when test="contains(normalize-space(lower-case(.)), 'other known legal restrictions') or contains(., 'http://rightsstatements.org/vocab/NoC-OKLR/1.0/')">
                    <xsl:element name="accessCondition" namespace="http://www.loc.gov/mods/v3">
                        <xsl:attribute name="type">use and reproduction</xsl:attribute>
                        <xsl:attribute name="xlink:href">http://rightsstatements.org/vocab/NoC-OKLR/1.0/</xsl:attribute>
                        <xsl:text>No Copyright - Other Known Legal Restrictions</xsl:text>
                    </xsl:element>
                </xsl:when>
                <xsl:when test="contains(normalize-space(lower-case(.)), 'no copyright - united states') or contains(., 'http://rightsstatements.org/vocab/NoC-US/1.0/')">
                    <xsl:element name="accessCondition" namespace="http://www.loc.gov/mods/v3">
                        <xsl:attribute name="type">use and reproduction</xsl:attribute>
                        <xsl:attribute name="xlink:href">http://rightsstatements.org/vocab/NoC-US/1.0/</xsl:attribute>
                        <xsl:text>No Copyright - United States</xsl:text>
                    </xsl:element>
                </xsl:when>
                <xsl:when test="contains(normalize-space(lower-case(.)),'no copyright - non-commercial use only') or contains(., 'http://rightsstatements.org/vocab/NoC-NC/1.0/')">
                    <xsl:element name="accessCondition" namespace="http://www.loc.gov/mods/v3">
                        <xsl:attribute name="type">use and reproduction</xsl:attribute>
                        <xsl:attribute name="xlink:href">http://rightsstatements.org/vocab/NoC-NC/1.0/</xsl:attribute>
                        <xsl:text>No Copyright - Non-Commercial Use Only</xsl:text>
                    </xsl:element>
                </xsl:when>
                <xsl:when test="contains(normalize-space(lower-case(.)),'copyright not evaluated') or contains(., 'http://rightsstatements.org/vocab/CNE/1.0/')">
                    <xsl:element name="accessCondition" namespace="http://www.loc.gov/mods/v3">
                        <xsl:attribute name="type">use and reproduction</xsl:attribute>
                        <xsl:attribute name="xlink:href">http://rightsstatements.org/vocab/CNE/1.0/</xsl:attribute>
                        <xsl:text>Copyright Not Evaluated</xsl:text>
                    </xsl:element>
                </xsl:when>
                <xsl:when test="contains(normalize-space(lower-case(.)),'copyright undetermined') or contains(., 'http://rightsstatements.org/vocab/UND/1.0/')">
                    <xsl:element name="accessCondition" namespace="http://www.loc.gov/mods/v3">
                        <xsl:attribute name="type">use and reproduction</xsl:attribute>
                        <xsl:attribute name="xlink:href">http://rightsstatements.org/vocab/UND/1.0/</xsl:attribute>
                        <xsl:text>Copyright Undetermined</xsl:text>
                    </xsl:element>
                </xsl:when>
                <xsl:when test="contains(normalize-space(lower-case(.)), 'no known copyright') or contains(., 'http://rightsstatements.org/vocab/NKC/1.0/')">
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
    
    <xsl:template name="coords_element-nyh">
    <xsl:param name="lat"/>
    <xsl:param name="long"/>
    <xsl:value-of select="concat($lat, ',', $long)"/>
  </xsl:template>
    
   <xsl:include href="utilities.xsl"/>
    
</xsl:stylesheet>
