dpla-custom-repox-xslt
======================

custom xsl transforms for ESDN data providers

One file per institution. In keeping with NCDHC's model, institutional files pull in includes based on the underlyting CMS. Templates in the base files are overridden by adding the appropriate template in institutional files and adding a mode attribute to the template with the value of the institution's setSpec. The template is then applied with the mode attribute set to the appropriate setSpec.
