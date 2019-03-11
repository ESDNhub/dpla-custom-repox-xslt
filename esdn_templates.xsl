<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    xmlns:oai_dc="http://www.openarchives.org/OAI/2.0/oai_dc/"
    xmlns:dc="http://purl.org/dc/elements/1.1/" xmlns="http://www.loc.gov/mods/v3"
    xmlns:xlink="http://www.w3.org/1999/xlink"
    xmlns:dcterms="http://purl.org/dc/terms/" xmlns:edm="http://www.europeana.eu/schemas/edm/"
    xmlns:oai_qdc="http://worldcat.org/xmlschemas/qdc-1.0/" version="2.0">

    <xsl:template match="dc:relation" mode="esdn">
      <xsl:variable name="relationvalue" select="normalize-space(.)"/>
      <xsl:if test="normalize-space(.)!=''">
      <xsl:choose>
        <xsl:when test="starts-with($relationvalue, 'http')">
        <xsl:element name="relatedItem" namespace="http://www.loc.gov/mods/v3">
            <xsl:element name="location" namespace="http://www.loc.gov/mods/v3">
                <xsl:element name="url" namespace="http://www.loc.gov/mods/v3">
                    <xsl:value-of select="normalize-space(.)"/>
                 </xsl:element>
            </xsl:element>
        </xsl:element>
        </xsl:when>
        <xsl:otherwise>
            <xsl:element name="relatedItem" namespace="http://www.loc.gov/mods/v3">
                <xsl:element name="titleInfo" namespace="http://www.loc.gov/mods/v3">
                    <xsl:element name="title" namespace="http://www.loc.gov/mods/v3">
                        <xsl:value-of select="normalize-space(.)"/>
                    </xsl:element>
                </xsl:element>
            </xsl:element>
        </xsl:otherwise>
      </xsl:choose>
      </xsl:if>
    </xsl:template>

    <xsl:template match="dc:coverage" mode="esdn">
        <xsl:variable name="coveragevalue" select="normalize-space(.)"/>
        <xsl:for-each select="tokenize($coveragevalue, ';')">
            <xsl:if test="normalize-space(.) != ''">
                <xsl:choose>
                    <!-- check to see if there are any numbers in this coverage value -->
                    <xsl:when test='matches(., "\d+")'>
                        <xsl:choose>
                            <!-- if numbers follow a coordinate pattern, it's probably geo data -->
                            <xsl:when test='matches(., "\d+\.\d+")'>
                                <xsl:element name="subject" namespace="http://www.loc.gov/mods/v3"
                                    exclude-result-prefixes="#all">
                                    <xsl:element name="cartographic"
                                        namespace="http://www.loc.gov/mods/v3"
                                        exclude-result-prefixes="#all">
                                        <xsl:element name="coordinates"
                                            namespace="http://www.loc.gov/mods/v3"
                                            exclude-result-prefixes="#all">
                                            <xsl:value-of select="normalize-space(.)"/>
                                        </xsl:element>
                                    </xsl:element>
                                </xsl:element>
                                <!--coverage-->
                            </xsl:when>
                            <!-- if there's no coordinate pattern, it's probably temporal data; put it in <subject><temporal> -->
                            <xsl:otherwise>
                                <xsl:element name="subject" namespace="http://www.loc.gov/mods/v3"
                                    exclude-result-prefixes="#all">
                                    <xsl:element name="temporal"
                                        namespace="http://www.loc.gov/mods/v3"
                                        exclude-result-prefixes="#all">
                                        <xsl:value-of select="normalize-space(.)"/>
                                    </xsl:element>
                                </xsl:element>
                            </xsl:otherwise>
                        </xsl:choose>
                    </xsl:when>
                    <!-- if there are no numbers, it's probably geo data -->
                    <xsl:otherwise>
                        <xsl:element name="subject" namespace="http://www.loc.gov/mods/v3"
                            exclude-result-prefixes="#all">
                            <xsl:element name="geographic" namespace="http://www.loc.gov/mods/v3"
                                exclude-result-prefixes="#all">
                                <xsl:value-of select="normalize-space(.)"/>
                            </xsl:element>
                        </xsl:element>
                        <!--coverage-->
                    </xsl:otherwise>
                </xsl:choose>
            </xsl:if>
        </xsl:for-each>
    </xsl:template>

    <xsl:template match="dcterms:created" mode="esdn">
        <xsl:call-template name="date-to-mods">
            <xsl:with-param name="dateval">
                <xsl:value-of select="normalize-space(.)"/>
            </xsl:with-param>
        </xsl:call-template>
    </xsl:template>

    <xsl:template match="dcterms:alternative" mode="esdn">
        <xsl:element name="titleInfo" namespace="http://www.loc.gov/mods/v3"
            exclude-result-prefixes="#all">
            <xsl:attribute name="type">alternative</xsl:attribute>
            <xsl:element name="title" namespace="http://www.loc.gov/mods/v3"
                exclude-result-prefixes="#all">
                <xsl:value-of select="normalize-space(.)"/>
            </xsl:element>
        </xsl:element>
    </xsl:template>

    <xsl:template match="dc:date" mode="esdn">
        <xsl:call-template name="date-to-mods">
            <xsl:with-param name="dateval">
                <xsl:value-of select="normalize-space(.)"/>
            </xsl:with-param>
        </xsl:call-template>
    </xsl:template>

    <xsl:template name="date-to-mods">
        <xsl:param name="dateval"/>
        <xsl:variable name="date_list" select="tokenize($dateval, ';')"/>
        <xsl:variable name="list_length" select="count($date_list)"/>
        <xsl:choose>
            <xsl:when test="$list_length > 1">
                <dateCreated xsl:exclude-result-prefixes="#all"
                    keyDate="yes" point="start">
                    <xsl:call-template name="datequal">
                        <xsl:with-param name="dateval" select="$date_list[1]"/>
                    </xsl:call-template>
                    <xsl:call-template name="clean-date">
                        <xsl:with-param name="dateval">
                            <xsl:value-of select="normalize-space($date_list[1])"/>
                        </xsl:with-param>
                    </xsl:call-template>
                </dateCreated>

                <dateCreated xsl:exclude-result-prefixes="#all"
                    point="end">
                    <xsl:call-template name="datequal">
                        <xsl:with-param name="dateval"
                            select="normalize-space($date_list[$list_length])"/>
                    </xsl:call-template>
                    <xsl:call-template name="clean-date">
                        <xsl:with-param name="dateval">
                            <xsl:value-of select="normalize-space($date_list[$list_length])"/>
                        </xsl:with-param>
                    </xsl:call-template>
                </dateCreated>
            </xsl:when>
            <xsl:otherwise>
                <xsl:variable name="date_parts" select="tokenize($dateval, '-')"/>
                <xsl:variable name="parts_length" select="count($date_parts)"/>
                <xsl:choose>
                    <xsl:when test="$parts_length = 3">
                        <dateCreated xsl:exclude-result-prefixes="#all"
                            keyDate="yes">
                            <xsl:call-template name="datequal">
                                <xsl:with-param name="dateval" select="normalize-space(.)"/>
                            </xsl:call-template>
                            <xsl:call-template name="clean-date">
                                <xsl:with-param name="dateval">
                                    <xsl:value-of select="."/>
                                </xsl:with-param>
                            </xsl:call-template>
                        </dateCreated>
                    </xsl:when>
                    <xsl:when test="$parts_length = 2">
                        <xsl:choose>
                            <xsl:when test="string-length($date_parts[2]) >= 4">
                                <dateCreated
                                    xsl:exclude-result-prefixes="#all"
                                    keyDate="yes" point="start">
                                    <xsl:call-template name="datequal">
                                        <xsl:with-param name="dateval"
                                            select="normalize-space($date_parts[1])"/>
                                    </xsl:call-template>
                                    <xsl:call-template name="clean-date">
                                        <xsl:with-param name="dateval">
                                            <xsl:value-of select="normalize-space($date_parts[1])"/>
                                        </xsl:with-param>
                                    </xsl:call-template>
                                </dateCreated>
                                <dateCreated
                                    xsl:exclude-result-prefixes="#all"
                                    point="end">
                                    <xsl:call-template name="datequal">
                                        <xsl:with-param name="dateval"
                                            select="normalize-space($date_parts[2])"/>
                                    </xsl:call-template>
                                    <xsl:call-template name="clean-date">
                                        <xsl:with-param name="dateval">
                                            <xsl:value-of select="normalize-space($date_parts[2])"/>
                                        </xsl:with-param>
                                    </xsl:call-template>
                                </dateCreated>
                            </xsl:when>
                            <xsl:otherwise>
                                <dateCreated
                                    xsl:exclude-result-prefixes="#all"
                                    keyDate="yes">
                                    <xsl:call-template name="datequal">
                                        <xsl:with-param name="dateval"
                                            select="normalize-space($date_parts[1])"/>
                                    </xsl:call-template>
                                    <xsl:call-template name="clean-date">
                                        <xsl:with-param name="dateval">
                                            <xsl:value-of select="normalize-space($date_parts[1])"/>
                                        </xsl:with-param>
                                    </xsl:call-template>
                                </dateCreated>
                            </xsl:otherwise>
                        </xsl:choose>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:if test="normalize-space($date_parts[1]) != '9999'">
                            <dateCreated
                                xsl:exclude-result-prefixes="xsi oai_dc dc dcterms oai_qdc edm xlink"
                                keyDate="yes">
                                <xsl:call-template name="datequal">
                                    <xsl:with-param name="dateval" select="normalize-space($date_parts[1])"/>
                                </xsl:call-template>
                                <xsl:call-template name="clean-date">
                                    <xsl:with-param name="dateval">
                                        <xsl:value-of select="normalize-space($date_parts[1])"/>
                                    </xsl:with-param>
                                </xsl:call-template>
                            </dateCreated>
                        </xsl:if>
                    </xsl:otherwise>
                </xsl:choose>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>

    <!-- determine qualifier attribute for date element. -->
    
    <xsl:template name="datequal">
        <xsl:param name="dateval"/>
        <xsl:choose>
            <xsl:when test="starts-with(lower-case($dateval), 'c')">
                <xsl:attribute name="qualifier" exclude-result-prefixes="#all"
                    >approximate</xsl:attribute>
            </xsl:when>
            <xsl:when test="contains($dateval, '?')">
                <xsl:attribute name="qualifier" exclude-result-prefixes="#all"
                    >questionable</xsl:attribute>
            </xsl:when>
            <xsl:when test="contains($dateval, '[')">
                <xsl:attribute name="qualifier" exclude-result-prefixes="#all"
                    >inferred</xsl:attribute>
            </xsl:when>
            <xsl:otherwise/>
        </xsl:choose>
    </xsl:template>

    <!-- strip superfluous characters from date once it's been qualified -->
    
    <xsl:template name="clean-date">
        <xsl:param name="dateval"/>
        <xsl:value-of select="replace($dateval, '[^0-9\-/]', '')"/>
    </xsl:template>

    <xsl:template match="dc:source" mode="esdn">
        <xsl:param name="delimiter"/>
        <xsl:variable name="delim_list" select="tokenize(., $delimiter)"/>
        <xsl:variable name="quote_len" select="count($delim_list)"/>
        <xsl:choose>
            <xsl:when test="$quote_len = 3">
                <xsl:if test="normalize-space($delim_list[3]) != ''">
                    <xsl:element name="extent" namespace="http://www.loc.gov/mods/v3"
                        exclude-result-prefixes="#all">
                        <xsl:value-of select="normalize-space($delim_list[3])"/>
                    </xsl:element>
                </xsl:if>
                <xsl:element name="form" namespace="http://www.loc.gov/mods/v3"
                    exclude-result-prefixes="#all">
                    <xsl:value-of select="$delim_list[1]"/>
                    <xsl:value-of select="$delimiter"/>
                    <xsl:value-of select="$delim_list[2]"/>
                </xsl:element>
            </xsl:when>
            <xsl:when test="$quote_len = 2">
                <xsl:if test="normalize-space($delim_list[2]) != ''">
                    <xsl:element name="extent" namespace="http://www.loc.gov/mods/v3"
                        exclude-result-prefixes="#all">
                        <xsl:value-of select="normalize-space($delim_list[2])"/>
                    </xsl:element>
                </xsl:if>
                <xsl:element name="form" namespace="http://www.loc.gov/mods/v3"
                    exclude-result-prefixes="#all">
                    <xsl:value-of select="$delim_list[1]"/>
                </xsl:element>
            </xsl:when>
            <xsl:otherwise>
                <!-- put all in form -->
                <xsl:element name="form" namespace="http://www.loc.gov/mods/v3"
                    exclude-result-prefixes="#all">
                    <xsl:value-of select="."/>
                </xsl:element>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>

    <xsl:template match="dc:type" mode="esdn">
        <!-- always tokenize, since we sometimes get single values with a delimiter -->
        <xsl:for-each select="tokenize(., ';')">
            <!-- check for empty element -->
            <xsl:if test="normalize-space(.) != ''">
                <xsl:variable name="dc-type" select="lower-case(normalize-space(.))"/>
                <xsl:choose>
                    <xsl:when test="contains($dc-type, 'collection')">
                        <xsl:element name="typeOfResource" namespace="http://www.loc.gov/mods/v3"
                            exclude-result-prefixes="#all">
                            <xsl:attribute name="collection">yes</xsl:attribute>
                        </xsl:element>
                    </xsl:when>
                    <xsl:when test="contains($dc-type, 'dataset')">
                        <xsl:element name="typeOfResource" namespace="http://www.loc.gov/mods/v3"
                            exclude-result-prefixes="#all">
                            <xsl:text>software, multimedia</xsl:text>
                        </xsl:element>
                    </xsl:when>
                    <xsl:when test="starts-with($dc-type, 'image')">
                        <xsl:element name="typeOfResource" namespace="http://www.loc.gov/mods/v3"
                            exclude-result-prefixes="#all">
                            <xsl:text>still image</xsl:text>
                        </xsl:element>
                    </xsl:when>
                    <xsl:when test="contains($dc-type, 'moving image') or contains($dc-type, 'MovingImage')">
                        <xsl:element name="typeOfResource" namespace="http://www.loc.gov/mods/v3"
                            exclude-result-prefixes="#all">
                            <xsl:text>moving image</xsl:text>
                        </xsl:element>
                    </xsl:when>
                    <xsl:when test="contains($dc-type, 'still image') or contains($dc-type, 'StillImage') or contains($dc-type, 'photograph')">
                        <xsl:element name="typeOfResource" namespace="http://www.loc.gov/mods/v3"
                            exclude-result-prefixes="#all">
                            <xsl:text>still image</xsl:text>
                        </xsl:element>
                    </xsl:when>
                    <xsl:when test="contains($dc-type, 'interactive resource') or contains($dc-type, 'InteractiveResource')">
                        <xsl:element name="typeOfResource" namespace="http://www.loc.gov/mods/v3"
                            exclude-result-prefixes="#all">
                            <xsl:text>software, multimedia</xsl:text>
                        </xsl:element>
                    </xsl:when>
                    <xsl:when test="contains($dc-type, 'physical object') or contains($dc-type, 'PhysicalObject')">
                        <xsl:element name="typeOfResource" namespace="http://www.loc.gov/mods/v3"
                            exclude-result-prefixes="#all">
                            <xsl:text>three dimensional object</xsl:text>
                        </xsl:element>
                    </xsl:when>
                    <xsl:when test="contains($dc-type, 'service')">
                        <xsl:element name="typeOfResource" namespace="http://www.loc.gov/mods/v3"
                            exclude-result-prefixes="#all">
                            <xsl:text>software, multimedia</xsl:text>
                        </xsl:element>
                    </xsl:when>
                    <xsl:when test="contains($dc-type, 'map') or contains($dc-type, 'cartographic')">
                        <xsl:element name="typeOfResource" namespace="http://www.loc.gov/mods/v3"
                            exclude-result-prefixes="#all">
                            <xsl:text>cartographic</xsl:text>
                        </xsl:element>
                    </xsl:when>
                    <xsl:when test="contains($dc-type, 'sound')">
                        <xsl:element name="typeOfResource" namespace="http://www.loc.gov/mods/v3"
                            exclude-result-prefixes="#all">
                            <xsl:text>sound recording</xsl:text>
                        </xsl:element>
                    </xsl:when>
                    <xsl:when test="contains($dc-type, 'text') or contains($dc-type, 'document')">
                        <xsl:element name="typeOfResource" namespace="http://www.loc.gov/mods/v3"
                            exclude-result-prefixes="#all">
                            <xsl:text>text</xsl:text>
                        </xsl:element>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:element name="typeOfResource" namespace="http://www.loc.gov/mods/v3">
                                <xsl:value-of select="normalize-space(.)"/>
                        </xsl:element>      
                    </xsl:otherwise>
                </xsl:choose>
            </xsl:if>
        </xsl:for-each>
    </xsl:template>

    <xsl:template match="dc:identifier" mode="esdn">
        <xsl:variable name="idvalue" select="normalize-space(.)"/>
        <xsl:choose>
        <xsl:when test="starts-with($idvalue, 'http')">
            <!-- CONTENTdm puts the URI in an <identifier> field in the OAI record -->
            <xsl:element name="location" namespace="http://www.loc.gov/mods/v3">
                <xsl:element name="url">
                    <xsl:attribute name="usage">primary display</xsl:attribute>
                    <xsl:attribute name="access">object in context</xsl:attribute>
                    <xsl:value-of select="$idvalue"/>
                </xsl:element>
            </xsl:element>
            <!-- ref url-->
            <!-- process identifier into CONTENTdm 6.5 thumbnail urls -->
            <xsl:variable name="contentdmroot" select="substring-before($idvalue, '/cdm/ref/')"/>
            <xsl:variable name="recordinfo"
                select="substring-after($idvalue, '/cdm/ref/collection/')"/>
            <xsl:variable name="alias" select="substring-before($recordinfo, '/id/')"/>
            <xsl:variable name="pointer" select="substring-after($recordinfo, '/id/')"/>
            <xsl:element name="location" namespace="http://www.loc.gov/mods/v3">
                <xsl:element name="url">
                    <xsl:attribute name="access">preview</xsl:attribute>
                    <xsl:value-of
                        select="concat($contentdmroot, '/utils/getthumbnail/collection/', $alias, '/id/', $pointer)"
                    />
                </xsl:element>
            </xsl:element>
            <!-- end CONTENTdm thumbnail url processing -->
        </xsl:when>
        <xsl:otherwise>
            <xsl:element name="identifier"><xsl:value-of select="$idvalue"/></xsl:element>
        </xsl:otherwise>
        </xsl:choose>
    </xsl:template>

    <xsl:template match="dc:language" mode="esdn">
        <xsl:variable name="languagevalue" select="normalize-space(.)"/>
        <xsl:element name="language">
            <xsl:for-each select="tokenize($languagevalue, ';')">
                <xsl:if test="normalize-space(.) != ''">
                    <xsl:element name="languageTerm">
                        <xsl:value-of select="normalize-space(lower-case(.))"/>
                    </xsl:element>
                </xsl:if>
            </xsl:for-each>
        </xsl:element>
    </xsl:template>

    <xsl:template match="dc:subject" mode="esdn">
        <xsl:variable name="subjectvalue" select="normalize-space(.)"/>
        <xsl:if test="normalize-space(.) != ''">
            <xsl:variable name="subjlist" select="tokenize(., ';')"/>
            <xsl:for-each select="$subjlist">
                <subject>
                    <topic>
                        <xsl:call-template name="normalize-dashes-esdn">
                            <xsl:with-param name="dash-str">
                                <xsl:value-of select="normalize-space(.)"/>
                            </xsl:with-param>
                        </xsl:call-template>
                    </topic>
                </subject>
            </xsl:for-each>
        </xsl:if>
    </xsl:template>
    
    <!-- wrapper for dc:rights element. -->
    <xsl:template match="dc:rights" mode="esdn">
      <xsl:call-template name="parse_rights">
	<xsl:with-param name="rights_text"><xsl:value-of select="normalize-space(.)"/></xsl:with-param>
      </xsl:call-template>
    </xsl:template>
    
    <!-- Rights parsing template. Factored out to be usable with any metadata scheme. -->
    <!-- Given the text of a rights element, check to see if it contains rightstatements.org
	 information and process it into text and url attribute, else just pass it through. -->
    <xsl:template name="parse_rights">
      <xsl:param name="rights_text"/>
        <xsl:if test="normalize-space($rights_text)!=''">
            <xsl:element name="accessCondition" namespace="http://www.loc.gov/mods/v3">
                <xsl:choose>
                <xsl:when test="contains($rights_text, 'In Copyright') or contains($rights_text, 'http://rightsstatements.org/vocab/InC/1.0')">
                    <xsl:attribute name="type">use and reproduction</xsl:attribute>
                    <xsl:attribute name="xlink:href">http://rightsstatements.org/vocab/InC/1.0/</xsl:attribute>
                        <xsl:text>In Copyright</xsl:text>
                </xsl:when>
                <xsl:when test="contains($rights_text, 'Educational Use Permitted') or contains($rights_text, 'http://rightsstatements.org/vocab/InC-EDU/1.0/')">
                    <xsl:attribute name="type">use and reproduction</xsl:attribute>
                    <xsl:attribute name="xlink:href">http://rightsstatements.org/vocab/InC-EDU/1.0/</xsl:attribute>
                        <xsl:text>In Copyright - Educational Use Permitted</xsl:text>
                </xsl:when>
                <xsl:when test="contains($rights_text, 'Non-Commercial Use Permitted') or contains($rights_text, 'http://rightsstatements.org/vocab/InC-NC/1.0/')">
                    <xsl:attribute name="type">use and reproduction</xsl:attribute>
                    <xsl:attribute name="xlink:href">http://rightsstatements.org/vocab/InC-NC/1.0/</xsl:attribute>
                        <xsl:text>In Copyright - Non-Commercial Use Permitted</xsl:text>
                </xsl:when>
                <xsl:when test="contains($rights_text, 'Rights-Holder(s) Unlocatable or Unidentifiable') or contains($rights_text, 'http://rightsstatements.org/vocab/InC-RUU/1.0/')">
                        <xsl:attribute name="xlink:href">http://rightsstatements.org/vocab/InC-RUU/1.0/</xsl:attribute>
                        <xsl:text>In Copyright - Rights-Holder(s) Unlocatable or Unidentifiable</xsl:text>
                </xsl:when>
                <xsl:when test="contains($rights_text, 'Other Known Legal Restrictions') or contains($rights_text, 'http://rightsstatements.org/vocab/NoC-OKLR/1.0/')">
                    <xsl:attribute name="type">use and reproduction</xsl:attribute>
                    <xsl:attribute name="xlink:href">http://rightsstatements.org/vocab/NoC-OKLR/1.0/</xsl:attribute>
                        <xsl:text>No Copyright - Other Known Legal Restrictions</xsl:text>
                </xsl:when>
                <xsl:when test="contains($rights_text, 'No Copyright - United States') or contains($rights_text, 'http://rightsstatements.org/vocab/NoC-US/1.0/')">
                    <xsl:attribute name="type">use and reproduction</xsl:attribute>
                    <xsl:attribute name="xlink:href">http://rightsstatements.org/vocab/NoC-US/1.0/</xsl:attribute>
                        <xsl:text>No Copyright - United States</xsl:text>
                </xsl:when>
                <xsl:when test="contains($rights_text,'No Copyright - Non-Commercial Use Only') or contains($rights_text, 'http://rightsstatements.org/vocab/NoC-NC/1.0/')">
                    <xsl:attribute name="type">use and reproduction</xsl:attribute>
                    <xsl:attribute name="xlink:href">http://rightsstatements.org/vocab/NoC-NC/1.0/</xsl:attribute>
                        <xsl:text>No Copyright - Non-Commercial Use Only</xsl:text>
                </xsl:when>
                <xsl:when test="contains($rights_text,'Copyright Not Evaluated') or contains($rights_text, 'http://rightsstatements.org/vocab/CNE/1.0/')">
                    <xsl:attribute name="type">use and reproduction</xsl:attribute>
                    <xsl:attribute name="xlink:href">http://rightsstatements.org/vocab/CNE/1.0/</xsl:attribute>
                        <xsl:text>Copyright Not Evaluated</xsl:text>
                </xsl:when>
                <xsl:when test="contains($rights_text,'Copyright Undetermined') or contains($rights_text, 'http://rightsstatements.org/vocab/UND/1.0/')">
                    <xsl:attribute name="type">use and reproduction</xsl:attribute>
                    <xsl:attribute name="xlink:href">http://rightsstatements.org/vocab/UND/1.0/</xsl:attribute>
                        <xsl:text>Copyright Undetermined</xsl:text>
                </xsl:when>
                <xsl:when test="contains($rights_text, 'No Known Copyright') or contains($rights_text, 'http://rightsstatements.org/vocab/NKC/1.0/')">
                    <xsl:attribute name="type">use and reproduction</xsl:attribute>
                    <xsl:attribute name="xlink:href">http://rightsstatements.org/vocab/NKC/1.0/</xsl:attribute>
                        <xsl:text>No Known Copyright</xsl:text>
                </xsl:when>
                <xsl:otherwise>
                        <xsl:attribute name="type">local rights statements</xsl:attribute>
                        <xsl:value-of select="normalize-space($rights_text)"/>
                </xsl:otherwise>
            </xsl:choose>
            </xsl:element>
        </xsl:if>  
    </xsl:template>


    <xsl:template name="owner-note">
        <xsl:param name="owner"/>
        <xsl:element name="note">
            <xsl:attribute name="type">ownership</xsl:attribute>
            <xsl:value-of select="$owner"/>
        </xsl:element>
    </xsl:template>

    <xsl:template name="intermediate-provider">
        <xsl:param name="council"/>
        <xsl:element name="note" namespace="http://www.loc.gov/mods/v3">
            <xsl:attribute name="type">regional council</xsl:attribute>
            <xsl:value-of select="$council"/>
        </xsl:element>
    </xsl:template>

    <xsl:template name="coords_element">
        <xsl:param name="lat"/>
        <xsl:param name="long"/>
        <xsl:value-of select="concat($lat, ',', $long)"/>
    </xsl:template>

    <xsl:template name="normalize-dashes-esdn">
        <xsl:param name="dash-str"/>
        <xsl:value-of select="replace($dash-str, '\s*--\s*', '--')"/>
    </xsl:template>


</xsl:stylesheet>
