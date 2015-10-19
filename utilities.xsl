<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
  xmlns:oai_dc="http://www.openarchives.org/OAI/2.0/oai_dc/"
  xmlns:dc="http://purl.org/dc/elements/1.1/" xmlns="http://www.loc.gov/mods/v3"
  xmlns:dcterms="http://purl.org/dc/terms/" xmlns:edm="http://www.europeana.eu/schemas/edm/"
  xmlns:oai_qdc="http://worldcat.org/xmlschemas/qdc-1.0/" version="2.0">

  <xsl:template name="normalize-dashes">
    <xsl:param name="dash-str"/>
    <xsl:value-of select="replace($dash-str, '\s*--\s*', '--')"/> 
  </xsl:template>
  
</xsl:stylesheet>