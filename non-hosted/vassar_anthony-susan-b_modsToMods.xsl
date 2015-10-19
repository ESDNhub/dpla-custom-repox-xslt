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
        <xsl:attribute name="xsi:schemaLocation">http://www.loc.gov/mods/v3 http://www.loc.gov/standards/mods/v3/mods-3-4.xsd</xsl:attribute>
        <xsl:attribute name="version">3.4</xsl:attribute>
        <xsl:apply-templates select="@*|node()"/>
          <xsl:call-template name="owner-note">
            <xsl:with-param name="owner">Vassar College Libraries, Poughkeepsie, N.Y</xsl:with-param>
          </xsl:call-template>    
        <xsl:element name="relatedItem" namespace="http://www.loc.gov/mods/v3">
          <xsl:attribute name="type">host</xsl:attribute>
          <xsl:attribute name="displayLabel">collection</xsl:attribute>
          <xsl:element name="abstract" namespace="http://www.loc.gov/mods/v3">Susan Brownell Anthony was born in Adams, Massachusetts, on 15 February1820. Her parents, Daniel Anthony and Lucy Read, raised her and her seven siblings as Quakers. After a series of financial setbacks and relocations, the Anthony family settled in Rochester, New York, where Susan B. Anthony became acquainted with many abolitionists and women's rights reformers of her day, including William Lloyd Garrison, Frederick Douglass, Amelia Bloomer and Samuel May. In the early 1850s she formed an alliance with Elizabeth Cady Stanton that was critical to the fight for woman suffrage. The main concern of Anthony's letters from 1854-1866 was the antislavery movement. After the Civil War she directed all her energy to the struggle for equal rights for women. Major correspondents include Francis Jackson Garrison, William Lloyd Garrison, Samuel May, Eliza R. Whiting, and Elizabeth Cady Stanton. (Letters from Anthony to  Stanton are in Vassar's Stanton collection). Most letters are hand-written and have an accompanying transcript.  Digitization of the  collection was made possible by a generous grant from Dr. Georgette Bennett in honor of Dr. Leonard Polonsky CBE.</xsl:element>
        </xsl:element>
        <xsl:for-each select="mods:subject/mods:topic">
          <xsl:if test="normalize-space(.)!=''">
            <xsl:element name="subject" namespace="http://www.loc.gov/mods/v3">
              <xsl:attribute name="authority">lcsh</xsl:attribute>
              <xsl:element name="topic" namespace="http://www.loc.gov/mods/v3">
                <xsl:value-of select="normalize-space(.)"/>
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
  
  <xsl:template match="mods:accessCondition/@type" />
  <xsl:template match="mods:internetMediaType" />
  <xsl:template match="mods:location" />
  <xsl:template match="mods:classification"/>
  <xsl:template match="mods:place"/>
  <xsl:template match="mods:dateOther"/>
  <xsl:template match="mods:publisher"/>
  <xsl:template match="mods:subject/mods:topic"/>
  <xsl:template match="mods:subject/mods:geographic"/>
  
  <xsl:template match="mods:roleTerm">
      <xsl:element name="roleTerm" namespace="http://www.loc.gov/mods/v3">
          <xsl:choose>
              <xsl:when test="normalize-space(lower-case(.))='creator'">creator</xsl:when>
              <xsl:otherwise>contributor</xsl:otherwise>
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
  
  <xsl:template match="mods:note"/>  
  <xsl:template match="mods:abstract">
    <xsl:element name="note" namespace="http://www.loc.gov/mods/v3">
      <xsl:attribute name="type">content</xsl:attribute>
      <xsl:value-of select="normalize-space(.)"/>
    </xsl:element>
  </xsl:template>
  
  <xsl:template match="mods:genre">
    <xsl:element name="genre" namespace="http://www.loc.gov/mods/v3">
      <xsl:attribute name="authority">aat</xsl:attribute>
      <xsl:value-of select="replace(.,'letter', 'letters (correspondence)')"/>
    </xsl:element>
  </xsl:template>
  
  <!-- ESDN utility templates -->
  <xsl:include href="esdn_templates.xsl"/>
  <xsl:include href="iso639x.xsl"/>
    
</xsl:stylesheet>
