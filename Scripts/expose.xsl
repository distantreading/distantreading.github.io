<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:t="http://www.tei-c.org/ns/1.0"
    xmlns:e="http://distantreading.net/eltec/ns" exclude-result-prefixes="xs t e" version="2.0">
    <xsl:output method="html"/>
    <xsl:param name="fileName">ENG18740_Ouida.xml</xsl:param>
    <xsl:param name="folder">https://raw.githubusercontent.com/COST-ELTeC/ELTeC-eng/master/level0</xsl:param>
    <xsl:variable name="gitURL">
        <xsl:value-of select="concat($folder,'/',$fileName)"/>
    </xsl:variable>
    
    <xsl:template match="/">
           
  <xsl:text disable-output-escaping="yes">&lt;!DOCTYPE html></xsl:text>       
      <html>  <head>
            <link rel="stylesheet" href="../../css/cetei.css" media="screen" title="no title" 
                charset="utf-8"/>
            <link type="application/tei+xml" rel="alternative" 
                href="{$gitURL}"/>
            <script src="../../js/CETEI.js" charset="utf-8"></script>
            <script type="text/javascript">
               <xsl:text> var ceteicean = new CETEI();
                ceteicean.shadowCSS = "http://teic.github.io/css/tei.css";
                ceteicean.getHTML5(
                '</xsl:text><xsl:value-of select="$gitURL"/><xsl:text>', 
                function(data) {
                document.getElementsByTagName("body")[0].appendChild(data);
                });</xsl:text>
            </script>
            
    <title><xsl:value-of select="t:TEI/t:teiHeader/t:fileDesc/t:titleStmt/t:title[1]"/></title>
    </head>
    <body>
    </body>
</html>

    </xsl:template>
    </xsl:stylesheet>
