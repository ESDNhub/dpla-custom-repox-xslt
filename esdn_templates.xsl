<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:oai_dc='http://www.openarchives.org/OAI/2.0/oai_dc/' xmlns:dc="http://purl.org/dc/elements/1.1/" version="2.0" xmlns="http://www.loc.gov/mods/v3">

    <xsl:template match="dc:coverage" mode="esdn">
        <xsl:variable name="coveragevalue" select="normalize-space(.)"/>
        <xsl:for-each select="tokenize($coveragevalue,';')">
            <xsl:if test="normalize-space(.)!=''">
                <xsl:choose>
                    <!-- check to see if there are any numbers in this coverage value -->
                    <xsl:when test='matches(.,"\d+")'>
                        <xsl:choose>
                            <!-- if numbers follow a coordinate pattern, it's probably geo data -->
                            <xsl:when test='matches(.,"\d+\.\d+")'>
                                <subject><cartographic><coordinates><xsl:value-of select="normalize-space(.)"/></coordinates></cartographic></subject> <!--coverage-->
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
                <dateCreated xsl:exclude-result-prefixes="xsi oai_dc dc" keyDate="yes" point="start">
                    <xsl:call-template name="datequal">
                        <xsl:with-param name="dateval" select="$date_list[1]"/>
                    </xsl:call-template>
                    <xsl:call-template name="clean-date">
                        <xsl:with-param name="dateval">
                            <xsl:value-of select="normalize-space($date_list[1])"/>
                        </xsl:with-param>
                    </xsl:call-template>
                </dateCreated>
                
                <dateCreated xsl:exclude-result-prefixes="xsi oai_dc dc" point="end">
                    <xsl:call-template name="datequal">
                        <xsl:with-param name="dateval" select="normalize-space($date_list[$list_length])"/>
                    </xsl:call-template>
                    <xsl:call-template name="clean-date">
                        <xsl:with-param name="dateval">
                            <xsl:value-of select="normalize-space($date_list[$list_length])"/>
                        </xsl:with-param>
                    </xsl:call-template>
                </dateCreated>
            </xsl:when>
            <xsl:otherwise>
                <xsl:variable name="date_parts" select="tokenize(., '-')"/>
                <xsl:variable name="parts_length" select="count($date_parts)"/>
                <xsl:choose>
                    <xsl:when test="$parts_length = 3">
                        <dateCreated xsl:exclude-result-prefixes="xsi oai_dc dc" keyDate="yes">
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
                                <dateCreated xsl:exclude-result-prefixes="xsi oai_dc dc" keyDate="yes" point="start">
                                    <xsl:call-template name="datequal">
                                        <xsl:with-param name="dateval" select="normalize-space($date_parts[1])"/>
                                    </xsl:call-template>
                                    <xsl:call-template name="clean-date">
                                        <xsl:with-param name="dateval">
                                            <xsl:value-of select="normalize-space($date_parts[1])"/>
                                        </xsl:with-param>
                                    </xsl:call-template>
                                </dateCreated>
                                <dateCreated xsl:exclude-result-prefixes="xsi oai_dc dc" point="end">
                                    <xsl:call-template name="datequal">
                                        <xsl:with-param name="dateval" select="normalize-space($date_parts[2])"/>
                                    </xsl:call-template>
                                    <xsl:call-template name="clean-date">
                                        <xsl:with-param name="dateval">
                                            <xsl:value-of select="normalize-space($date_parts[2])"/>
                                        </xsl:with-param>
                                    </xsl:call-template>
                                </dateCreated>
                            </xsl:when>
                            <xsl:otherwise>
                                <dateCreated xsl:exclude-result-prefixes="xsi oai_dc dc" keyDate="yes">
                                    <xsl:call-template name="datequal">
                                        <xsl:with-param name="dateval" select="normalize-space(.)"/>
                                    </xsl:call-template>
                                    <xsl:call-template name="clean-date">
                                        <xsl:with-param name="dateval">
                                            <xsl:value-of select="normalize-space(./text())"/>
                                        </xsl:with-param>
                                    </xsl:call-template>
                                </dateCreated>
                            </xsl:otherwise>
                        </xsl:choose>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:if test="normalize-space(.)!='9999'">
                            <dateCreated xsl:exclude-result-prefixes="xsi oai_dc dc" keyDate="yes">
                                <xsl:call-template name="datequal">
                                    <xsl:with-param name="dateval" select="normalize-space(.)"/>
                                </xsl:call-template>
                                <xsl:call-template name="clean-date">
                                    <xsl:with-param name="dateval">
                                        <xsl:value-of select="normalize-space(.)"/>
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
                <xsl:attribute name="qualifier">approximate</xsl:attribute>
            </xsl:when>
            <xsl:when test="contains($dateval, '?')">
                <xsl:attribute name="qualifier">questionable</xsl:attribute>
            </xsl:when>
            <xsl:when test="contains($dateval, '[')">
                <xsl:attribute name="qualifier">inferred</xsl:attribute>
            </xsl:when>
            <xsl:otherwise/>
        </xsl:choose>        
    </xsl:template>
    
    <!-- strip superfluous characters from date once it's been qualified -->
    <xsl:template name="clean-date">
        <xsl:param name="dateval"/>
        <xsl:choose>
            <xsl:when test="ends-with($dateval, '?')">
                <xsl:value-of select="substring-before($dateval, '?')"/>
            </xsl:when>
            <xsl:when test="starts-with($dateval, 'c')">
                <xsl:choose>
                    <xsl:when test="starts-with($dateval, 'ca')">
                        <xsl:choose>
                            <xsl:when test="starts-with($dateval, 'ca.')">
                                <xsl:value-of select="normalize-space(substring-after($dateval, 'ca.'))"/>
                            </xsl:when>
                            <xsl:otherwise>
                                <xsl:value-of select="normalize-space(substring-after($dateval, 'ca'))"/>
                            </xsl:otherwise>
                        </xsl:choose>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:choose>
                            <xsl:when test="starts-with($dateval, 'c.')">
                                <xsl:value-of select="normalize-space(substring-after($dateval, 'c.'))"/>       
                            </xsl:when>
                            <xsl:otherwise>
                                <xsl:value-of select="normalize-space(substring-after($dateval, 'c'))"/>
                            </xsl:otherwise>
                        </xsl:choose>
                    </xsl:otherwise>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="starts-with($dateval, '[')">
                <xsl:value-of select="substring-after(substring-before($dateval, ']'), '[')"/>
            </xsl:when>
            <xsl:otherwise>
                <xsl:value-of select="$dateval"/>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
    
    <xsl:template match="dc:source" mode="esdn">
        <xsl:param name="delimiter"/>
        <xsl:variable name="delim_list" select="tokenize(., $delimiter)"/> 
        <xsl:variable name="quote_len" select="count($delim_list)"/>
        <xsl:choose>
            <xsl:when test="$quote_len = 3">
                <xsl:if test="normalize-space($delim_list[3]) != ''">
                    <extent><xsl:value-of select="normalize-space($delim_list[3])"/></extent>
                </xsl:if>
                <form><xsl:value-of select="$delim_list[1]"/><xsl:value-of select="$delimiter"/><xsl:value-of select="$delim_list[2]"/></form>
            </xsl:when>
            <xsl:when test="$quote_len = 2">
                <xsl:if test="normalize-space($delim_list[2]) != ''">
                    <extent><xsl:value-of select="normalize-space($delim_list[2])"/></extent>
                </xsl:if>
                <form><xsl:value-of select="$delim_list[1]"/></form>
            </xsl:when>
            <xsl:otherwise>
                <!-- too many values, just dump contents -->
                <form><xsl:value-of select="."/></form>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
    
    <xsl:template match="dc:type" mode="esdn">
        <!-- we override this template to provide a more complete typeOfResource element
      more closely conforming to the standard -->
        <!-- always tokenize, since we sometimes get single values with a delimiter -->
        <xsl:for-each select="tokenize(., ';')">
            <!-- check for empty element -->
            <xsl:if test="normalize-space(.) != ''">
                <xsl:variable name="dc-type" select="lower-case(normalize-space(.))" />
                    <xsl:choose>
                        <xsl:when test="$dc-type = lower-case('Collection')">
                            <xsl:element name="typeOfResource">
                                <xsl:attribute name="collection">yes</xsl:attribute>
                            </xsl:element>
                        </xsl:when>
                        <xsl:when test="$dc-type = lower-case('Dataset')">
                            <xsl:element name="typeOfResource">
                                <xsl:text>software, multimedia</xsl:text>
                            </xsl:element>
                        </xsl:when>
                        <xsl:when test="starts-with($dc-type, lower-case('Image'))">
                            <xsl:element name="typeOfResource">
                                <xsl:text>still image</xsl:text>
                            </xsl:element>
                        </xsl:when>
                        <xsl:when test="$dc-type = lower-case('Moving Image')">
                            <xsl:element name="typeOfResource">
                                <xsl:text>moving image</xsl:text>
                            </xsl:element>
                        </xsl:when>
                        <xsl:when test="$dc-type = lower-case('Still Image')">
                            <xsl:element name="typeOfResource">
                                <xsl:text>still image</xsl:text>
                            </xsl:element>
                        </xsl:when>
                        <xsl:when test="$dc-type = lower-case('InteractiveResource')">
                            <xsl:element name="typeOfResource">
                                <xsl:text>software, multimedia</xsl:text>
                            </xsl:element>
                        </xsl:when>
                        <xsl:when test="$dc-type = lower-case('PhysicalObject')">
                            <xsl:element name="typeOfResource">
                                <xsl:text>three-dimensional object</xsl:text>
                            </xsl:element>
                        </xsl:when>
                        <xsl:when test="$dc-type = lower-case('Service')">
                            <xsl:element name="typeOfResource">
                                <xsl:text>software, multimedia</xsl:text>
                            </xsl:element>
                        </xsl:when>
                        <xsl:when test="$dc-type = lower-case('Sound')">
                            <xsl:element name="typeOfResource">
                                <xsl:text>sound recording</xsl:text>
                            </xsl:element>
                        </xsl:when>
                        <xsl:when test="$dc-type = lower-case('Text') or $dc-type = lower-case('DOCUMENT')">
                            <xsl:element name="typeOfResource">
                                <xsl:text>text</xsl:text>
                            </xsl:element>
                        </xsl:when>
                        <xsl:otherwise/>
                    </xsl:choose>
<!--                <xsl:call-template name="mods-genre" >
                    <xsl:with-param name="dc_type" select="$dc-type" />
                </xsl:call-template>
-->            </xsl:if>
        </xsl:for-each>
    </xsl:template>
    
    <xsl:template name="mods-genre">
        <xsl:param name="dc_type"/>
        <xsl:choose>
            <xsl:when test="$dc_type = lower-case('Dataset')">
                <genre type="dct">dataset</genre>
            </xsl:when>
            <xsl:when test="starts-with($dc_type, lower-case('Image'))">
                <genre type="dct">image</genre>
            </xsl:when>
            <xsl:when test="$dc_type = lower-case('InteractiveResource')">
                <genre type="dct">interactive resource</genre>
            </xsl:when>
            <xsl:when test="$dc_type = lower-case('Service')">
                <genre type="dct">service</genre>
            </xsl:when>
            <xsl:otherwise></xsl:otherwise>
        </xsl:choose>
    </xsl:template>
    
    <xsl:template match="dc:identifier" mode="esdn">
        <xsl:variable name="idvalue" select="normalize-space(.)"/>
        <xsl:if test="starts-with($idvalue,'http')">
            <!-- CONTENTdm puts the URI in an <identifier> field in the OAI record -->
            <location><url usage="primary display" access="object in context"><xsl:value-of select="$idvalue"/></url></location> <!-- ref url-->          
            <!-- process identifier into CONTENTdm 6.5 thumbnail urls --> 
            <xsl:variable name="contentdmroot" select="substring-before($idvalue,'/cdm/ref/')"/>
            <xsl:variable name="recordinfo" select="substring-after($idvalue,'/cdm/ref/collection/')"/>
            <xsl:variable name="alias" select="substring-before($recordinfo,'/id/')"/>
            <xsl:variable name="pointer" select="substring-after($recordinfo,'/id/')"/>
            <location><url access="preview"><xsl:value-of select="concat($contentdmroot,'/utils/getthumbnail/collection/',$alias,'/id/',$pointer)"/></url></location> <!--CONTENTdm thumbnail url-->
            <!-- end CONTENTdm thumbnail url processing -->           
        </xsl:if>
    </xsl:template>
    
    <xsl:template name="owner-note">
        <xsl:param name="owner"/>
        <xsl:element name="note">
            <xsl:attribute name="type">ownership</xsl:attribute>
            <xsl:value-of select="$owner"/>
        </xsl:element>
    </xsl:template>
    
</xsl:stylesheet>
