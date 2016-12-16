<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:dc="http://purl.org/dc/elements/1.1/"
    xmlns:oai_dc="http://www.openarchives.org/OAI/2.0/oai_dc/"
    xmlns:oai-pmh="http://www.openarchives.org/OAI/2.0/"
    xmlns:mods="http://www.loc.gov/mods/v3"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    exclude-result-prefixes="xs"
    version="2.0">
    <xsl:output omit-xml-declaration="yes" indent="yes"/>
    <xsl:strip-space elements="*"/>
    
  <xsl:template match="*[not(child::node())]"/>
  <xsl:template match="@*|node()">
    <xsl:copy>
      <xsl:apply-templates select="@*|node()"/>
    </xsl:copy>
    </xsl:template>
    
  <xsl:template match="//mods:mods">
    <xsl:copy>
      <xsl:attribute name="xsi:schemaLocation">http://www.loc.gov/mods/v3
        http://www.loc.gov/standards/mods/v3/mods-3-4.xsd</xsl:attribute>
      <xsl:attribute name="version">3.4</xsl:attribute>
      <xsl:apply-templates select="@* | node()"/>
      
      <!-- hard code collection and ownership notes -->
      
      <xsl:call-template name="owner-note">
        <xsl:with-param name="owner">Vassar College Libraries, Poughkeepsie, N.Y</xsl:with-param>
      </xsl:call-template>
      <xsl:call-template name="intermediate-provider">
        <xsl:with-param name="council">Southeastern New York Library Resources Council</xsl:with-param>
      </xsl:call-template>
      <xsl:element name="relatedItem" namespace="http://www.loc.gov/mods/v3">
        <xsl:attribute name="type">host</xsl:attribute>
        <xsl:attribute name="displayLabel">Collection</xsl:attribute>
        <xsl:element name="abstract" namespace="http://www.loc.gov/mods/v3">The Student Diaries
          collection provides access to more than fifty diaries from Vassar students from the
          nineteenth century. The diaries concern life on campus, other students, classes,
          relationships with their professors, vacations, family news, and other subjects; some
          volumes have short entries on daily activities while others have longer, more reflective
          entries. Students include Florence Wislocki, 1922; Frances M. Bromley, 1875-1877; Abby
          Holden, 1871-1872; Bertha Keffer, 1868-1871; Elma G. Martin, 1892-1893; Anne Page Brydon,
          1922-1923; Helen Hartley Pease, 1914-1915; Anne Wyman, 1878-1880; Marjorie Anthony
          Markwich, 1914; and Constance E. Anthony, 1915.</xsl:element>
      </xsl:element>
      <xsl:element name="relatedItem" namespace="http://www.loc.gov/mods/v3">
        <xsl:attribute name="type">host</xsl:attribute>
        <xsl:attribute name="displayLabel">Collection</xsl:attribute>
        <xsl:element name="titleInfo" namespace="http://www.loc.gov/mods/v3">
          <xsl:element name="title" namespace="http://www.loc.gov/mods/v3">Vassar College Libraries-Vassar College Student Diaries</xsl:element>
        </xsl:element>
      </xsl:element>
      
      <xsl:for-each select="mods:subject/mods:topic[not(@authority='local')]">
        <xsl:if test="normalize-space(.) != ''">
          <xsl:element name="subject" namespace="http://www.loc.gov/mods/v3">
            <xsl:attribute name="authority">lcsh</xsl:attribute>
            <xsl:element name="topic" namespace="http://www.loc.gov/mods/v3">
              <xsl:choose>
                <xsl:when test="ends-with(normalize-space(.), '.')">
                  <xsl:value-of select="normalize-space(substring(., 1, (string-length(.) - 1)))"/>
                </xsl:when>
                <xsl:otherwise>
                  <xsl:value-of select="normalize-space(.)"/>
                </xsl:otherwise>
              </xsl:choose>
            </xsl:element>
          </xsl:element>
        </xsl:if>
      </xsl:for-each>
      <xsl:for-each select="mods:subject/mods:geographic">
        <xsl:if test="normalize-space(.) != ''">
          <xsl:variable name="dash_list" select="tokenize(., '--')"/>
          <xsl:variable name="last_node_index" select="count(preceding-sibling::node())"/>
          <xsl:choose>
            <xsl:when test="count($dash_list) = 1">
              <xsl:element name="subject" namespace="http://www.loc.gov/mods/v3">
                <xsl:attribute name="authority">lcsh</xsl:attribute>
                <xsl:element name="geographic" namespace="http://www.loc.gov/mods/v3">
                  <xsl:value-of select="normalize-space(.)"/>
                </xsl:element>
              </xsl:element>
            </xsl:when>
            <xsl:otherwise>
              <xsl:choose>
                <xsl:when
                  test="not(starts-with(preceding-sibling::node()[1]/text(), $dash_list[1]))">
                  <xsl:element name="subject" namespace="http://www.loc.gov/mods/v3">
                    <xsl:attribute name="authority">lcsh</xsl:attribute>
                    <xsl:element name="geographic" namespace="http://www.loc.gov/mods/v3">
                      <xsl:value-of select="normalize-space($dash_list[1])"/>
                    </xsl:element>
                  </xsl:element>
                  <xsl:element name="subject" namespace="http://www.loc.gov/mods/v3">
                    <xsl:attribute name="authority">lcsh</xsl:attribute>
                    <xsl:element name="topic" namespace="http://www.loc.gov/mods/v3">
                      <xsl:value-of select="normalize-space(.)"/>
                    </xsl:element>
                  </xsl:element>
                </xsl:when>
                <xsl:otherwise>
                  <xsl:element name="subject" namespace="http://www.loc.gov/mods/v3">
                    <xsl:attribute name="authority">lcsh</xsl:attribute>
                    <xsl:element name="topic" namespace="http://www.loc.gov/mods/v3">
                      <xsl:value-of select="normalize-space(.)"/>
                    </xsl:element>
                  </xsl:element>
                </xsl:otherwise>
              </xsl:choose>
            </xsl:otherwise>
          </xsl:choose>
        </xsl:if>
      </xsl:for-each>
    </xsl:copy>
  </xsl:template>
  
  <xsl:template match="mods:accessCondition/@type"/>
  <xsl:template match="mods:dateOther"/>
  <xsl:template match="mods:publisher"/>
  <xsl:template match="mods:identifier[@type='local']"/>
  <xsl:template match="mods:note"/>
  <xsl:template match="mods:subject[@authority='local']"/>
  <xsl:template match="mods:roleTerm/@authority"/>
  <xsl:template match="mods:roleTerm/@type"/>
  <xsl:template match="mods:dateCreated[not(@authority)]"/>
  <xsl:template match="mods:subject/mods:topic"/>
  <xsl:template match="mods:subject/mods:geographic"/>
  <xsl:template match="mods:subject[mods:hierarchicalGeographic/mods:continent]"/>
  <xsl:template match="mods:location[@displayLabel]"/>
  <xsl:template match="mods:recordInfo"/>
  <xsl:template match="mods:relatedItem[@type='constituent']"/>
  <xsl:template match="mods:genre[@authority]"/>
  <xsl:template match="mods:subject[@altRepGroup]"/>
  <xsl:template match="mods:subject/mods:name[@type='personal']/mods:affiliation"/>
  
  <xsl:template match="mods:roleTerm">
    <xsl:element name="roleTerm" namespace="http://www.loc.gov/mods/v3">
      <xsl:choose>
        <xsl:when test="normalize-space(lower-case(.))='creator'">Creator</xsl:when>
        <xsl:otherwise>Contributor</xsl:otherwise>
      </xsl:choose>
    </xsl:element>
  </xsl:template>
 
  
  <xsl:template match="mods:dateCreated[./@point='start']">
    <xsl:copy>
      <xsl:attribute name="keyDate">yes</xsl:attribute>
      <xsl:apply-templates select="@*|node()" />
    </xsl:copy>
  </xsl:template>
  
  <xsl:template match="mods:identifier">
      <xsl:if test="starts-with(., 'http')">
          <xsl:element name="location" namespace="http://www.loc.gov/mods/v3">
              <xsl:element name="url" namespace="http://www.loc.gov/mods/v3">
                  <xsl:attribute name="usage">primary display</xsl:attribute>
                  <xsl:attribute name="access">object in context</xsl:attribute>
                  <xsl:value-of select="normalize-space(.)"/>
              </xsl:element>
          </xsl:element>
          <xsl:element name="location" namespace="http://www.loc.gov/mods/v3">
              <xsl:element name="url" namespace="http://www.loc.gov/mods/v3">
                  <xsl:attribute name="access">preview</xsl:attribute>
                  <xsl:value-of select="concat(normalize-space(.), '/datastream/TN/view')"/>
              </xsl:element>
          </xsl:element>
      </xsl:if>
  </xsl:template>
  
  <xsl:template match="mods:abstract">
    <xsl:element name="note" namespace="http://www.loc.gov/mods/v3">
      <xsl:attribute name="type">content</xsl:attribute>
      <xsl:value-of select="normalize-space(.)"/>
    </xsl:element>
  </xsl:template>
  
  <xsl:template match="mods:tableOfContents">
    <xsl:element name="note" namespace="http://www.loc.gov/mods/v3">
      <xsl:attribute name="type">content</xsl:attribute>
      <xsl:value-of select="normalize-space(.)"/>
    </xsl:element>
  </xsl:template>
  

  <xsl:template match="mods:typeOfResource">
    <xsl:variable name="typelist" select="tokenize(., ',')"/>
    <xsl:for-each select="$typelist">
      <xsl:element name="typeOfResource" namespace="http://www.loc.gov/mods/v3">
        <xsl:value-of select="normalize-space(.)"/>
      </xsl:element>
    </xsl:for-each>
  </xsl:template>
  
  <!-- ESDN utility templates -->
  <xsl:include href="esdn_templates.xsl"/>
  <xsl:include href="iso639x.xsl"/>
    
</xsl:stylesheet>
