<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
  xmlns:oai-pmh="http://www.openarchives.org/OAI/2.0/"
  xmlns:oai_dc="http://www.openarchives.org/OAI/2.0/oai_dc/"
  xmlns:dc="http://purl.org/dc/elements/1.1/" version="2.0" xmlns="http://www.loc.gov/mods/v3">
  <xsl:output omit-xml-declaration="yes" indent="yes"/>
  <xsl:template match="text() | @*"/>
  <xsl:template match="//oai_dc:dc">
    <mods xmlns="http://www.loc.gov/mods/v3" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
      xsi:schemaLocation="http://www.loc.gov/mods/v3 http://www.loc.gov/standards/mods/v3/mods-3-4.xsd"
      version="3.4">
      
      <xsl:apply-templates select="dc:title"/>
      <xsl:apply-templates select="dc:contributor"/>
      <xsl:apply-templates select="dc:creator[lower-case(./text()) != 'unknown']"/>
      <xsl:if test="exists(dc:publisher) or exists(dc:date)">
        <originInfo>
          <xsl:apply-templates select="dc:publisher"/>
          <xsl:apply-templates select="dc:date" mode="queens"/>
        </originInfo>
      </xsl:if>
      <xsl:apply-templates select="dc:description"/>
      
      <xsl:element name="physicalDescription" namespace="http://www.loc.gov/mods/v3">
        <xsl:if test="exists(dc:format[2])">
          <xsl:element name="extent" namespace="http://www.loc.gov/mods/v3">
            <xsl:value-of select="dc:format[2]"/>
          </xsl:element>
        </xsl:if>
        <xsl:if test="exists(dc:format[1])">
          <xsl:element name="form" namespace="http://www.loc.gov/mods/v3">
            <xsl:value-of select="dc:format[1]"/>
          </xsl:element>
        </xsl:if>
      </xsl:element>
      
      <xsl:element name="location" namespace="http://www.loc.gov/mods/v3">
        <xsl:element name="url">
          <xsl:attribute name="usage">primary display</xsl:attribute>
          <xsl:attribute name="access">object in context</xsl:attribute>
          <xsl:value-of
            select="concat('http://digitalarchives.queenslibrary.org/vital/access/manager/Repository/', normalize-space(dc:identifier[1]))"
          />
        </xsl:element>
      </xsl:element>
      <xsl:element name="location" namespace="http://www.loc.gov/mods/v3">
        <xsl:element name="url">
          <xsl:attribute name="access">preview</xsl:attribute>
          <xsl:value-of
            select="concat('http://digitalarchives.queenslibrary.org/vital/access/services/Download/', normalize-space(dc:identifier[1]), '/JPGSOURCE1-PhotographFront?view=true')"
          />
        </xsl:element>
      </xsl:element>
      <xsl:element name="accessCondition">The Queens Library is interested in learning more about
        items you've seen on our websites or elsewhere online. If you have any more information
        about an item or its copyright status, we want to hear from you. Please contact
        digitalarchive@queenslibrary.org with your contact information and a link to the relevant
        content.</xsl:element>
      
      <xsl:apply-templates select="dc:subject"/>
      <xsl:apply-templates select="dc:coverage[not(contains(./text(), 'unknown'))]" mode="queens"/>
      <xsl:apply-templates select="dc:relation[1]" mode="queens"/>
      
      <xsl:element name="typeOfResource" namespace="http://www.loc.gov/mods/v3">still image</xsl:element>
      
      <!-- hard code ownership note -->
      <xsl:call-template name="owner-note">
        <xsl:with-param name="owner">Queens Borough Public Library</xsl:with-param>
      </xsl:call-template>
      
    </mods>
  </xsl:template>
  
  <!-- ESDN utility templates -->
  <xsl:include href="esdn_templates.xsl"/>
  
  <!-- dublin core field templates -->
  <xsl:include href="oaidctomods_base.xsl"/>
  
  <!-- collection-specific templates -->
  
  <xsl:template match="dc:coverage" mode="queens">
    <xsl:if test="normalize-space(.)!=''">
      <subject>
        <geographic>
          <xsl:value-of select="normalize-space(.)"/>
        </geographic>
        <!--coverage-->
      </subject>
    </xsl:if>
  </xsl:template>
  
  <xsl:template match="dc:date" mode="queens">
    <xsl:variable name="datevalue" select="normalize-space(.)"/>
    <xsl:for-each select="tokenize($datevalue,';')">
      <xsl:if test="normalize-space(.)!=''">
        <dateCreated keyDate="yes"><xsl:value-of select="normalize-space(.)"/></dateCreated> <!--date-->
      </xsl:if>
    </xsl:for-each>
  </xsl:template>
  
  <xsl:template match="dc:relation[1]" mode="queens">
    <xsl:element name="relatedItem" namespace="http://www.loc.gov/mods/v3">
    <xsl:attribute name="type">host</xsl:attribute>
    <xsl:attribute name="displayLabel">Collection</xsl:attribute>
     <xsl:element name="titleInfo" namespace="http://www.loc.gov/mods/v3">
      <xsl:element name="title" namespace="http://www.loc.gov/mods/v3">
        <xsl:choose>
          <xsl:when test="contains(., 'William Cahill')">Queens Borough Public Library-Wiliam Cahill Photographs</xsl:when>
          <xsl:when test="contains(., 'William J. Murray')">Queens Borough Public Library-Wiliam Murray Photographs</xsl:when>
          <xsl:when test="contains(., 'A. Noble Chapman')">Queens Borough Public Library-A. Noble Chapman Photographs</xsl:when>
          <xsl:when test="contains(., 'Arthur Murray')">Queens Borough Public Library-Arthur Murray Photographs</xsl:when>
          <xsl:when test="contains(., 'Arthur S. Greene')">Queens Borough Public Library-Arthur Greene Photographs</xsl:when>
          <xsl:when test="contains(., 'Eugene C. Nichols')">Queens Borough Public Library-Eugene Nichols Photographs</xsl:when>
          <xsl:when test="contains(., 'Good Citizenship')">Queens Borough Public Library-Good Citizenship Photographs</xsl:when>
          <xsl:when test="contains(., 'Soldiers and Sailors')">Queens Borough Public Library-Soldiers Sailors Photographs</xsl:when>
          <xsl:when test="contains(., 'South Reformed')">Queens Borough Public Library-South Reformed Photographs</xsl:when>
          <xsl:when test="contains(., 'Jacob F. Wieners')">Queens Borough Public Library-Jacob Wieners Photographs</xsl:when>
          <xsl:when test="contains(., 'Anders Goldfarb')">Queens Borough Public Library-Anders Goldfarb Photographs</xsl:when>
          <xsl:when test="contains(., 'Councilwoman Julia')">Queens Borough Public Library-Councilwoman Julia Photographs</xsl:when>
          <xsl:when test="contains(., 'Hal B. Fullerton')">Queens Borough Public Library-Hal Fullerton Photographs</xsl:when>
          <xsl:when test="contains(., 'James Henry')">Queens Borough Public Library-James Henry Photographs</xsl:when>
          <xsl:when test="contains(., 'John D. Willis')">Queens Borough Public Library-John Willis Photographs</xsl:when>
          <xsl:when test="contains(., 'Josiah C. Case')">Queens Borough Public Library-Josiah Case Photographs</xsl:when>
          <xsl:when test="contains(., 'Oratorio Society')">Queens Borough Public Library-Oratorio Society Photographs</xsl:when>
          <xsl:when test="contains(., 'Public Service')">Queens Borough Public Library-Public Service Photographs</xsl:when>
          <xsl:when test="contains(., 'Ralph Solecki')">Queens Borough Public Library-Ralph Solecki Photographs</xsl:when>
          <xsl:when test="contains(., 'New York City Tax')">Queens Borough Public Library-New York Tax Photographs</xsl:when>
          <xsl:when test="contains(., 'Sister Sonia')">Queens Borough Public Library-Sister Sonia Photographs</xsl:when>
          <xsl:when test="contains(., 'William Erwin')">Queens Borough Public Library-William Erwin Photographs</xsl:when>
          <xsl:when test="contains(., 'J. William')">Queens Borough Public Library-J. William Photographs</xsl:when>
          <xsl:when test="contains(., 'Theodore Rogers')">Queens Borough Public Library-Rogers Waters Photographs</xsl:when>
          <xsl:when test="contains(., 'Fair')">Queens Borough Public Library-Queens Museum Photographs</xsl:when>
          <xsl:when test="contains(., 'Borough President')">Queens Borough Public Library-Borough President Photographs</xsl:when>
          <xsl:when test="contains(., 'Aurora Gareiss')">Queens Borough Public Library-Aurora Gareiss Papers</xsl:when>
          <xsl:when test="contains(., 'Irene S. Devan')">Queens Borough Public Library-Irene Devan Photographs</xsl:when>
          <xsl:when test="contains(., 'Eugene Armbruster')">Queens Borough Public Library-Eugene Armbruster Photographs</xsl:when>
          <xsl:when test="contains(., 'Joseph Burt')">Queens Borough Public Library-Joseph Burt Photographs</xsl:when>
          <xsl:when test="contains(., 'Erwin Ma')">Queens Borough Public Library-Erwin Ma Photographs</xsl:when>
          <xsl:when test="contains(., 'William J. Rugen')">Queens Borough Public Library-William Rugen Photographs</xsl:when>
          <xsl:otherwise/>
         </xsl:choose>
      </xsl:element>
     </xsl:element>
    </xsl:element>
  </xsl:template>
  
</xsl:stylesheet>