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
      
      <!-- hard code collection and ownership notes -->
      
        <xsl:call-template name="owner-note">
          <xsl:with-param name="owner">Vassar College Libraries, Poughkeepsie, N.Y</xsl:with-param>
        </xsl:call-template>
      <xsl:call-template name="intermediate-provider">
        <xsl:with-param name="council">Southeastern New York Library Resources Council</xsl:with-param>
      </xsl:call-template>
      <xsl:element name="relatedItem" namespace="http://www.loc.gov/mods/v3">
        <xsl:attribute name="type">host</xsl:attribute>
        <xsl:attribute name="displayLabel">collection</xsl:attribute>
        <xsl:element name="abstract" namespace="http://www.loc.gov/mods/v3">The collection includes correspondence of Jasper Parrish, 1790-1829, and others, 1757-1869, relating to the Painted Post treaty, payments to Indians, supplies to the Seneca mission, conduct of the St. Regis Indians, and work of the Quakers among the Indians. There are addresses and messages, 1803-1823, of Timothy Pickering, Thomas Jefferson, and John C. Calhoun to Iroquois chiefs including Red Jacket, Cornplanter, Farmer's Brother, Little Billy, Young King, and others. There are also legal papers, agreements and deeds, 1791-1824, including a deed of conveyance pertaining to the property of Mary Jemison. Records of Jasper Parrish's business transactions include receipts, invoices, notes, and accounts, 1793-1837. There are military and government records relating to the War of 1812 and the New York State Indians, including annuity payment agreements to the Indians and petitions for payments not received, a census of the Six Nations, 1792-1828, and other miscellaneous items, 1799-1860. There is also a set of transcripts along with an introduction prepared by Dorothy May Fairbank, Vassar Class of 1940, another set of transcripts created in 1954, and two biographical narratives of Jasper Parrish contributed by Caroline Townsend Monks, who was Vassar Class of 1940 and a direct descendant of Jasper Parrish. Digitization of the collection was made possible by a generous grant from Dr. Georgette Bennett in honor of Dr. Leonard Polonsky CBE.</xsl:element>
      </xsl:element>
      <xsl:element name="relatedItem" namespace="http://www.loc.gov/mods/v3">
        <xsl:attribute name="type">host</xsl:attribute>
        <xsl:attribute name="displayLabel">Collection</xsl:attribute>
        <xsl:element name="titleInfo" namespace="http://www.loc.gov/mods/v3">
          <xsl:element name="title" namespace="http://www.loc.gov/mods/v3">Vassar College Libraries-Jasper Parrish Papers</xsl:element>
        </xsl:element>
      </xsl:element>
      
      <xsl:for-each select="mods:subject/mods:topic">
        <xsl:if test="normalize-space(.)!=''">
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
  
  <xsl:template match="mods:internetMediaType" />
  <xsl:template match="mods:classification"/>
  <xsl:template match="mods:place"/>
  <xsl:template match="mods:dateOther"/>
  <xsl:template match="mods:publisher"/>
  <xsl:template match="mods:originInfo[not(mods:dateCreated)]"/>
  <xsl:template match="mods:identifier[@type='local']"/>
  <xsl:template match="mods:subject"/>
  
  <xsl:template match="mods:accessCondition[@type='use and reproduction']">
    <xsl:element name="accessCondition" namespace="http://www.loc.gov/mods/v3">
      <xsl:value-of select="normalize-space(.)"/>
    </xsl:element>
  </xsl:template>
 
  <xsl:template match="mods:namePart">
    <xsl:copy>
      <xsl:value-of select="replace(., '[\[\]]', '')"/>
    </xsl:copy>
  </xsl:template>
  
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
  
    <xsl:template match="mods:typeOfResource">
      <xsl:variable name="typelist" select="tokenize(., ',')"/>
      <xsl:for-each select="$typelist">
        <xsl:element name="typeOfResource" namespace="http://www.loc.gov/mods/v3">
          <xsl:value-of select="normalize-space(.)"/>
        </xsl:element>
      </xsl:for-each>
    </xsl:template>
  
  <xsl:template match="mods:genre">
    <xsl:copy>
      <xsl:apply-templates select="@*|node()"/>
    </xsl:copy>
  </xsl:template>
  
    <!-- ESDN utility templates -->
    <xsl:include href="esdn_templates.xsl"/>
    <xsl:include href="iso639x.xsl"/>
    
</xsl:stylesheet>
