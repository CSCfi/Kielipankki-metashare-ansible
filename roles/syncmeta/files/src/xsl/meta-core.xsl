<oai_dc:dc
   xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
   xsl:version="1.0"
   xmlns:info="http://www.ilsp.gr/META-XMLSchema"
   xmlns:oai_dc="http://www.openarchives.org/OAI/2.0/oai_dc/"
   xmlns:dc="http://purl.org/dc/elements/1.1/"
   xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
   xsi:schemaLocation="http://www.openarchives.org/OAI/2.0/oai_dc/
		       http://www.openarchives.org/OAI/2.0/oai_dc.xsc">
  <dc:title>
      <xsl:value-of
	 select="descendant::info:resourceName"/>
  </dc:title>
  <dc:description>
    <xsl:value-of
       select="descendant::info:description"/>
  </dc:description>
</oai_dc:dc>
