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

      <xsl:apply-templates select="dc:title" mode="nysl"/>
      <!-- Check for 'unknown' in dc:creator when well, unknown. Ignore it if present.-->
      
      <xsl:apply-templates select="dc:creator[not(contains(lower-case(.), 'unknown'))]" mode="nysl"/>

      <!-- Check for 'unknown' in dc:contributor when well, unknown. Ignore it if present.-->
      <xsl:apply-templates select="dc:contributor[not(contains(lower-case(.), 'unknown'))]" mode="nysl"/>

      <xsl:if test="dc:publisher != '' or dc:date != ''">
        <originInfo>
          <xsl:apply-templates select="dc:date[not(contains(lower-case(.), 'unknown'))]"/>
          <xsl:apply-templates select="dc:publisher[not(contains(lower-case(.), 'unknown'))]"/>
        </originInfo>
      </xsl:if>
      
      <xsl:apply-templates select="dc:description"/>
      <xsl:apply-templates select="dc:language" mode="nysl"/>

      <!-- templates we override get a mode attribute with the setSpec of the collection -->
      
      <xsl:apply-templates select="dc:identifier" mode="nysl"/>
      
      <!-- hard code rights statement for State Library -->
      
      <xsl:element name="accessCondition">
        <xsl:text>This document or image is provided for education and research purposes. Rights may be reserved. Responsibility for securing permissions to distribute, publish, reproduce or use it in any way rests with the user. For additional information, see the New York State Library's Copyright and Use Statement, available at http://www.nysl.nysed.gov/scandocs/rights.htm.</xsl:text>
      </xsl:element>
      
      <xsl:apply-templates select="dc:subject"/>

      <xsl:apply-templates select="dc:coverage"/>
      <xsl:apply-templates select="dc:type" mode="esdn"/>
          
      <!-- hard code ownership and collection note -->
      
      <xsl:element name="relatedItem" namespace="http://www.loc.gov/mods/v3">
        <xsl:attribute name="type">host</xsl:attribute>
        <xsl:attribute name="displayLabel">Collection</xsl:attribute>
        <xsl:element name="titleInfo" namespace="http://www.loc.gov/mods/v3">
          <xsl:element name="title" namespace="http://www.loc.gov/mods/v3">New York State Library-New York State Publications</xsl:element>
        </xsl:element>
      </xsl:element>

      <xsl:call-template name="owner-note">
        <xsl:with-param name="owner">New York State Library</xsl:with-param>
      </xsl:call-template>

    </mods>
  </xsl:template>


  <!-- ESDN utility templates -->
  <xsl:include href="esdn_templates.xsl"/>

  <!-- dublin core field templates -->
  <xsl:include href="oaidctomods_base.xsl"/>
  <xsl:include href="utilities.xsl"/>

  <!-- collection-specific templates start here -->
  
  <xsl:template match="dc:creator" mode="nysl">
    <xsl:variable name="creatorvalue" select="normalize-space(.)"/>
    <xsl:for-each select="tokenize($creatorvalue, ';')">
      <xsl:if test="normalize-space(.) != '' and normalize-space(.) != '(?)'">
        <name>
          <namePart>
            <xsl:value-of select="normalize-space(.)"/>
            <!--creator-->
          </namePart>
          <role>
            <roleTerm>Creator</roleTerm>
          </role>
        </name>
      </xsl:if>
    </xsl:for-each>
  </xsl:template>

  <xsl:template match="dc:contributor" mode="nysl">
    <xsl:variable name="contriblist" select="tokenize(normalize-space(.), ';')"/>
    <xsl:if test="count($contriblist) > 0">
      <xsl:for-each select="$contriblist">
       <xsl:if test="normalize-space(.)!=''">
         <name>
           <namePart>
             <xsl:value-of select="normalize-space(.)"/>
             <!--contributor-->
           </namePart>
           <role>
             <roleTerm>Contributor</roleTerm>
           </role>
         </name>         
       </xsl:if>
      </xsl:for-each>
    </xsl:if>
  </xsl:template>

  <xsl:template match="dc:title" mode="nysl">
    <xsl:if test="normalize-space(.) != ''">
      <!-- strip out dc:alternative child -->
      <titleInfo>
        <title>
          <xsl:value-of select="normalize-space(./text())"/>
        </title>
      </titleInfo>
      <!--title-->
    </xsl:if>
  </xsl:template>
  
  <!-- Create thumbnail preview link and link to object in NYSL catalog -->

  <xsl:template match="dc:identifier" mode="nysl">
    <xsl:variable name="idvalue" select="normalize-space(.)"/>
    <xsl:choose>
      <xsl:when test="contains($idvalue, 'guest.jsp')">
        <xsl:element name="location">
          <xsl:element name="url">
            <xsl:attribute name="usage">primary display</xsl:attribute>
            <xsl:attribute name="access">object in context</xsl:attribute>
            <xsl:value-of select="$idvalue"/>
          </xsl:element>
        </xsl:element>
      </xsl:when>
      <xsl:when test="contains($idvalue, 'pdfopener')">
        <xsl:element name="location">
          <xsl:element name="url">
            <xsl:attribute name="access">preview</xsl:attribute>
            <xsl:value-of select="$idvalue"/>
          </xsl:element>
        </xsl:element>
      </xsl:when>
      <xsl:otherwise>
        <xsl:element name="identifier">
          <xsl:value-of select="$idvalue"/>
        </xsl:element>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>
  
  <!-- Not currently calling this template for NYSL -->

  <xsl:template match="dc:subject" mode="nysl">
    <xsl:for-each select="tokenize(., ';')">
      <xsl:variable name="subval">
        <xsl:choose>
          <xsl:when test="ends-with(., '.')">
            <xsl:value-of select="substring(., 1, string-length(.)-1)"/>
          </xsl:when>
          <xsl:otherwise><xsl:value-of select="."/></xsl:otherwise>
        </xsl:choose>
      </xsl:variable>
      <xsl:if test="normalize-space($subval) != ''">
        <xsl:element name="subject" namespace="http://www.loc.gov/mods/v3">
          <xsl:element name="topic" namespace="http://www.loc.gov/mods/v3">
            <xsl:analyze-string select="$subval" regex="^(.+\d+)\s*-+\s*(\d+).+$">
              <xsl:matching-substring>
                <xsl:value-of
                  select="normalize-space(concat(substring-before($subval, regex-group(1)), regex-group(1), '-', substring-after($subval, regex-group(2)), regex-group(2)))"
                />
              </xsl:matching-substring>
              <xsl:non-matching-substring>
                <xsl:value-of select="normalize-space(replace($subval, '-+', '--'))"/>
              </xsl:non-matching-substring>
            </xsl:analyze-string>
          </xsl:element>
        </xsl:element>
        <!--subject-->
      </xsl:if>
    </xsl:for-each>
  </xsl:template>

  <xsl:template match="dc:language" mode="nysl">
    <xsl:variable name="langlist" select="tokenize(normalize-space(lower-case(.)), ';')"/>
    <xsl:if test="count($langlist) > 0">
      <xsl:element name="language">
        <xsl:for-each select="$langlist">
          <xsl:choose>
            <xsl:when
              test="normalize-space(lower-case(.)) = 'en' or starts-with(normalize-space(lower-case(.)), 'eng')">
              <languageTerm type="code" authority="iso639-2b">eng</languageTerm>
            </xsl:when>
            <xsl:when
              test="normalize-space(lower-case(.)) = 'german' or starts-with(normalize-space(lower-case(.)), 'ger')">
              <languageTerm type="code" authority="iso639-2b">ger</languageTerm>
            </xsl:when>
            <xsl:when
              test="normalize-space(lower-case(.)) = 'spanish' or starts-with(normalize-space(lower-case(.)), 'spa')">
              <languageTerm type="code" authority="iso639-2b">spa</languageTerm>
            </xsl:when>
            <xsl:when
              test="normalize-space(lower-case(.)) = 'italian' or starts-with(normalize-space(lower-case(.)), 'ita')">
              <languageTerm type="code" authority="iso639-2b">ita</languageTerm>
            </xsl:when>
            <xsl:when
              test="normalize-space(lower-case(.)) = 'latin' or starts-with(normalize-space(lower-case(.)), 'lat')">
              <languageTerm type="code" authority="iso639-2b">lat</languageTerm>
            </xsl:when>
            <xsl:when
              test="normalize-space(lower-case(.)) = 'french' or starts-with(normalize-space(lower-case(.)), 'fre')">
              <languageTerm type="code" authority="iso639-2b">fre</languageTerm>
            </xsl:when>
            <xsl:when
              test="normalize-space(lower-case(.)) = 'hebrew' or starts-with(normalize-space(lower-case(.)), 'heb')">
              <languageTerm type="code" authority="iso639-2b">fre</languageTerm>
            </xsl:when>
            <xsl:when
              test="normalize-space(lower-case(.)) = 'greek' or starts-with(normalize-space(lower-case(.)), 'gree')">
              <languageTerm type="code" authority="iso639-2b">gre</languageTerm>
            </xsl:when>
            <xsl:when
              test="normalize-space(lower-case(.)) = 'chinese' or starts-with(normalize-space(lower-case(.)), 'chi')">
              <languageTerm type="code" authority="iso639-2b">chi</languageTerm>
            </xsl:when>
            <xsl:when
              test="normalize-space(lower-case(.)) = 'arabic' or starts-with(normalize-space(lower-case(.)), 'ara')">
              <languageTerm type="code" authority="iso639-2b">ara</languageTerm>
            </xsl:when>
            <xsl:when
              test="normalize-space(lower-case(.)) = 'dutch' or starts-with(normalize-space(lower-case(.)), 'dut')">
              <languageTerm type="code" authority="iso639-2b">dut</languageTerm>
            </xsl:when>
            <xsl:when
              test="normalize-space(lower-case(.)) = 'russian' or starts-with(normalize-space(lower-case(.)), 'rus')">
              <languageTerm type="code" authority="iso639-2b">rus</languageTerm>
            </xsl:when>
            <xsl:when
              test="normalize-space(lower-case(.)) = 'korean' or starts-with(normalize-space(lower-case(.)), 'kor')">
              <languageTerm type="code" authority="iso639-2b">kor</languageTerm>
            </xsl:when>
            <xsl:when
              test="normalize-space(lower-case(.)) = 'polish' or starts-with(normalize-space(lower-case(.)), 'pol')">
              <languageTerm type="code" authority="iso639-2b">pol</languageTerm>
            </xsl:when>
            <xsl:otherwise>
              <xsl:element name="languageTerm">
                <xsl:value-of select="."/>
              </xsl:element>
            </xsl:otherwise>
          </xsl:choose>
        </xsl:for-each>
      </xsl:element>
    </xsl:if>
  </xsl:template>
  
</xsl:stylesheet>
