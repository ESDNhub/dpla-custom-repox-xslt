<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:oai_dc='http://www.openarchives.org/OAI/2.0/oai_dc/' xmlns:dc="http://purl.org/dc/elements/1.1/" version="2.0" xmlns="http://www.loc.gov/mods/v3">

    <xsl:template match="dc:type" mode="esdn">
        <!-- we override this template to provide a more complete typeOfResource element
      more closely conforming to the standard -->
        <!-- always tokenize, since we sometimes get single values with a delimiter -->
        <xsl:for-each select="tokenize(., ';')">
            <!-- check for empty element -->
            <xsl:if test="normalize-space(.) != ''">
                <xsl:variable name="dc-type" select="lower-case(normalize-space(.))" />
                <typeOfResource>
                    <xsl:choose>
                        <xsl:when test="$dc-type = lower-case('Collection')">
                            <xsl:attribute name="collection">yes</xsl:attribute>
                        </xsl:when>
                        <xsl:when test="$dc-type = lower-case('Dataset')">
                            <xsl:text>software, multimedia</xsl:text>
                        </xsl:when>
                        <xsl:when test="$dc-type = lower-case('Image')">
                            <xsl:text>still image</xsl:text>
                        </xsl:when>
                        <xsl:when test="$dc-type = lower-case('Moving Image')">
                            <xsl:text>moving image</xsl:text>
                        </xsl:when>
                        <xsl:when test="$dc-type = lower-case('Still Image')">
                            <xsl:text>still image</xsl:text>
                        </xsl:when>
                        <xsl:when test="$dc-type = lower-case('InteractiveResource')">
                            <xsl:text>software, multimedia</xsl:text>
                        </xsl:when>
                        <xsl:when test="$dc-type = lower-case('PhysicalObject')">
                            <xsl:text>three-dimensional object</xsl:text>
                        </xsl:when>
                        <xsl:when test="$dc-type = lower-case('Service')">
                            <xsl:text>software, multimedia</xsl:text>
                        </xsl:when>
                        <xsl:when test="$dc-type = lower-case('Sound')">
                            <xsl:text>sound recording</xsl:text>
                        </xsl:when>
                        <xsl:when test="$dc-type = lower-case('Text')">
                            <xsl:text>text</xsl:text>
                        </xsl:when>
                        <xsl:otherwise/>
                    </xsl:choose>
                </typeOfResource>
                <xsl:call-template name="mods-genre" >
                    <xsl:with-param name="dc_type" select="$dc-type" />
                </xsl:call-template>
            </xsl:if>
        </xsl:for-each>
    </xsl:template>
    
    <xsl:template name="mods-genre">
        <xsl:param name="dc_type"/>
        <xsl:choose>
            <xsl:when test="$dc_type = lower-case('Dataset')">
                <genre type="dct">dataset</genre>
            </xsl:when>
            <xsl:when test="$dc_type = lower-case('Image')">
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
            <!-- add URL wrapped in simple identifier wrapper. We override the other template to add this one item. -->
            <identifier><xsl:value-of select="$idvalue"/></identifier>
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
    
</xsl:stylesheet>