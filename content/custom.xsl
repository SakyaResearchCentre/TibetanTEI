<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    version="1.0" 
    xmlns:eg="http://www.tei-c.org/ns/Examples"
    xmlns:tei="http://www.tei-c.org/ns/1.0" 
    xmlns:xd="http://www.oxygenxml.com/ns/doc/xsl"
    xmlns:exsl="http://exslt.org/common"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt"
    xmlns:fn="http://www.w3.org/2005/xpath-functions"
    extension-element-prefixes="exsl msxsl"
    xmlns="http://www.w3.org/1999/xhtml" 
    xmlns:html="http://www.w3.org/1999/xhtml" 
    exclude-result-prefixes="xsl tei xd eg fn #default">
    
    <!-- import teibp.xsl, which allows templates, 
         variables, and parameters from teibp.xsl 
         to be overridden here. -->
    <xsl:import href="teibp.xsl"/>
    

<!-- BUDA links -->

   <xsl:template match="tei:persName[@type='BUDA']">
      <xsl:apply-templates select="@key"/>
      <a style="color:blue;text-decoration:none;" href="http://purl.bdrc.io/resource/{@key}" title="{@type} person ID: {@key}">
            <xsl:apply-templates/>
        </a>
  </xsl:template>

   <xsl:template match="tei:placeName[@type='BUDA']">
      <xsl:apply-templates select="@key"/>
      <a style="color:orange;text-decoration:none;" href="http://purl.bdrc.io/resource/{@key}" title="{@type} place ID: {@key}">
            <xsl:apply-templates/>
        </a>
  </xsl:template>

<!-- RKTS links  --> 
<!-- remove T or K in rkts-URL  -->

<xsl:template match="tei:title[@type='RKTS']">
      <xsl:apply-templates select="@key"/> 
      <a style="color:green;text-decoration:none;" href="https://www.istb.univie.ac.at/kanjur/rktsneu/verif/verif3.php?id={@key}" title="{@type} text ID: {@key}">
            <xsl:apply-templates/>
        </a>
         </xsl:template>

<!-- Sakya Research Centre links -->

   <xsl:template match="tei:persName[@type='SRC']">
      <xsl:apply-templates select="@key"/>
      <a style="color:blue;text-decoration:none;" href="https://sakyaresearch.org/persons/{@key}" title="{@type} person ID: {@key}">
            <xsl:apply-templates/>
        </a>
  </xsl:template>

   <xsl:template match="tei:placeName[@type='SRC']">
      <xsl:apply-templates select="@key"/>
      <a style="color:orange;text-decoration:none;" href="https://sakyaresearch.org/places/{@key}" title="{@type} place ID: {@key}">
            <xsl:apply-templates/>
        </a>
  </xsl:template>

<xsl:template match="tei:title[@type='SRC']">
      <xsl:apply-templates select="@key"/> 
      <a style="color:green;text-decoration:none;" href="https://sakyaresearch.org/sources/{@key}" title="{@type} source ID: {@key}">
            <xsl:apply-templates/>
        </a>
         </xsl:template>

<!-- Tohoku catalogue reference (Kanakura et al. 1953)  -->
<!--just hover, no link  -->

         <xsl:template match="tei:title[@type='TOH']">
      <xsl:apply-templates select="@key"/> 
      <a style="color:green;text-decoration:none;" title="TOHOKU 1953: {@key}">
            <xsl:apply-templates/>
        </a>
         </xsl:template>

</xsl:stylesheet>