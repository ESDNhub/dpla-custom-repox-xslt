<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:oai_dc='http://www.openarchives.org/OAI/2.0/oai_dc/' xmlns:dc="http://purl.org/dc/elements/1.1/" version="2.0" xmlns="http://www.loc.gov/mods/v3">
  <xsl:output omit-xml-declaration="yes" indent="yes"/>
  <xsl:template match="text()|@*"/>
  <xsl:template match="/oai_dc:dc">
    
    <mods xmlns="http://www.loc.gov/mods/v3" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.loc.gov/mods/v3 http://www.loc.gov/standards/mods/v3/mods-3-4.xsd" version="3.4">      
      
      <xsl:apply-templates select="dc:title"/>
      <xsl:apply-templates select="dc:contributor"/>
      <xsl:apply-templates select="dc:coverage" mode="p16694coll26"/>
      
      <!-- Albany used 'unknown' for dc:creator when well, unknown. Ignore it if present.-->
      <xsl:if test="lower-case(normalize-space(dc:creator)) != 'unknown'">
        <xsl:apply-templates select="dc:creator"/>
      </xsl:if>
      
      <xsl:if test="normalize-space(dc:date) != '' or normalize-space(dc:publisher) != ''">
        <originInfo>
          <xsl:apply-templates select="dc:date"/>
          <xsl:apply-templates select="dc:publisher"/>
        </originInfo>
      </xsl:if>
      
      <xsl:apply-templates select="dc:description"/>
      
      <!-- Albany stores what would normally be in dc:format in dc:source, so get it
        from there -->
      <!-- Any time we're wrapping at this level, check for a value, so that we don't
        output empty elements -->
      <xsl:if test="normalize-space(dc:source) != ''">
        <physicalDescription>
          <xsl:apply-templates select="dc:source"/>
        </physicalDescription>
      </xsl:if>
      
      <!-- templates we override get a mode attribute with the setSpec of the collection -->
      <xsl:apply-templates select="dc:identifier" mode="p16694coll26"/>
      <xsl:apply-templates select="dc:language"/>
      <xsl:apply-templates select="dc:rights"/>
      <xsl:apply-templates select="dc:subject"/>
      <xsl:apply-templates select="dc:type" mode="p16694coll26"/>
      
      <note type="ownership">Albany Public Library</note> <!-- owning institution -->
    </mods>
  </xsl:template>
  
  <!-- dublin core field templates -->
  <xsl:include href="oaidctomods_cdmbase.xsl"/>
  
  <!-- reference URL, thumbnail URL --> 
  <xsl:include href="oaidctomods_cdm6.5.xsl"/>
  
  <!-- collection-specific templates start here -->
  <xsl:template match="dc:coverage" mode="p16694coll26">
    <!-- override to hard-code LCSH values -->
    <xsl:for-each select="tokenize(.,';')">
      <xsl:variable name="coveragevalue" select="normalize-space(.)"/>
      <!-- return LCSH for Albany, NY -->
      <xsl:if test="$coveragevalue !=''">
        <subject><geographic><xsl:text>Albany (N.Y.)</xsl:text></geographic>
        </subject>
        <subject><geographic><xsl:text>New York</xsl:text></geographic>
        </subject>
      </xsl:if>
    </xsl:for-each>
  </xsl:template> 
  
  <xsl:template match="dc:source">
    <xsl:for-each select=".">
      <xsl:variable name="sourcevalue" select="."/>
      <xsl:if test="normalize-space($sourcevalue) != ''">
          <form><xsl:value-of select="$sourcevalue"/></form>
      </xsl:if>
    </xsl:for-each>
  </xsl:template>
  
  <xsl:template match="dc:type" mode="p16694coll26">
    <!-- we override this template to provide a more complete typeOfResource element
      more closely conforming to the standard -->
      <!-- always tokenize, since we sometimes get single values with a delimiter -->
      <xsl:for-each select="tokenize(., ';')">
        <!-- check for empty element -->
        <xsl:if test="normalize-space(.) != ''">
          <xsl:variable name="dc-type" select="normalize-space(.)" />
          <typeOfResource>
            <xsl:choose>
              <xsl:when test="$dc-type='Collection'">
                <xsl:attribute name="collection">yes</xsl:attribute>
              </xsl:when>
              <xsl:when test="$dc-type = 'Dataset'">
                <xsl:text>software, multimedia</xsl:text>
              </xsl:when>
              <xsl:when test="$dc-type = 'Image'">
                <xsl:text>still image</xsl:text>
              </xsl:when>
              <xsl:when test="$dc-type = 'Moving Image'">
                <xsl:text>moving image</xsl:text>
              </xsl:when>
              <xsl:when test="$dc-type = 'Still Image'">
                <xsl:text>still image</xsl:text>
              </xsl:when>
              <xsl:when test="$dc-type = 'InteractiveResource'">
                <xsl:text>software, multimedia</xsl:text>
              </xsl:when>
              <xsl:when test="$dc-type = 'PhysicalObject'">
                <xsl:text>three-dimensional object</xsl:text>
              </xsl:when>
              <xsl:when test="$dc-type = 'Service'">
                <xsl:text>software, multimedia</xsl:text>
              </xsl:when>
              <xsl:when test="$dc-type = 'Sound'">
                <xsl:text>sound recording</xsl:text>
              </xsl:when>
              <xsl:when test="$dc-type = 'Text'">
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
      <xsl:when test="$dc_type = 'Dataset'">
        <genre type="dct">dataset</genre>
      </xsl:when>
      <xsl:when test="$dc_type = 'Image'">
        <genre type="dct">image</genre>
      </xsl:when>
      <xsl:when test="$dc_type = 'InteractiveResource'">
        <genre type="dct">interactive resource</genre>
      </xsl:when>
      <xsl:when test="$dc_type = 'Service'">
        <genre type="dct">service</genre>
      </xsl:when>
      <xsl:otherwise></xsl:otherwise>
    </xsl:choose>
  </xsl:template>

  <xsl:template match="dc:identifier" mode="p16694coll26">
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
  <!-- collection-specific templates -->
  
</xsl:stylesheet>
