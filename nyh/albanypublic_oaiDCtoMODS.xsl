<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:oai_dc='http://www.openarchives.org/OAI/2.0/oai_dc/' xmlns:dc="http://purl.org/dc/elements/1.1/" version="2.0" xmlns="http://www.loc.gov/mods/v3">
  <xsl:output omit-xml-declaration="yes" indent="yes"/>
  <xsl:template match="text()|@*"/>
  <xsl:template match="//oai_dc:dc">
    
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
          <xsl:apply-templates select="dc:date" mode="p16694coll26"/>
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
      <xsl:apply-templates select="dc:type" mode="esdn"/>
      
      <note type="ownership">Albany Public Library</note> <!-- owning institution -->
    </mods>
  </xsl:template>
  
  <!-- ESDN utility templates --> 
  <xsl:include href="esdn_templates.xsl"/>
  
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
  
  <xsl:template match="dc:date" mode="p16694coll26">
    <xsl:variable name="date_list" select="tokenize(., ';')"/>
    <xsl:variable name="list_length" select="count($date_list)"/>
    <xsl:choose>
      <xsl:when test="$list_length > 1">
        <dateCreated keyDate="yes" point="start">
          <xsl:if test="contains($date_list[1], '?')">
          <xsl:attribute name="qualifier">questionable</xsl:attribute>
          </xsl:if>
          <xsl:value-of select="normalize-space($date_list[1])"/>
        </dateCreated>
          
        <dateCreated point="end">
          <xsl:if test="contains($date_list[$list_length], '?')">
            <xsl:attribute name="qualifier">questionable</xsl:attribute>
          </xsl:if>
            <xsl:value-of select="normalize-space($date_list[$list_length])"/>
        </dateCreated>
      </xsl:when>
    <xsl:otherwise>
      <xsl:apply-templates select="." mode="time-span"/>
    </xsl:otherwise>
    </xsl:choose>
  </xsl:template>
  <!-- collection-specific templates -->
  
</xsl:stylesheet>
