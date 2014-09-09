dpla-custom-repox-xslt
======================

These files contain custom xsl transforms for Empire State Digital Network (ESDN) data providers and collections. It is greatly indebted to and builds heavily on the work of the [North Carolina Digital Heritage Collection (NCDHC)](http://www.digitalnc.org/about) staff. 

We are moving to a slightly more complex include model. As work continues, we are moving to a 3-tier system of templates. These templates progress from the general to the specfic:

1. collection-specific templates (Wilderstein, Albany Public)
2. provider-specific templates (Hudson River Valley Heritage, New York Heritage)
3. General use templates, perhaps broken out by underlying CMS at some point

So we now have one file of ESDN utility templates, a template per provider where needed, and a template per collection. We use the convention of assigning mode attributes to templates when we need to override the base templates. This avoids reduplication of code. In keeping with NCDHC's model, institutional files may pull in includes for cross-collection quirks and templates based on the underlying CMS. Templates in the base files are overridden by adding the appropriate template in institutional or cross-collection files and adding a mode attribute to the template with appropriate identifiers such as a provider abbreviation or the value of the collection's setSpec. The template is then applied with the mode attribute set to the appropriate identifier.
