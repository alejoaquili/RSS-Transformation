<?xml version="1.0" encoding="UTF-8"?>
<!--
Item b) Trabajo Práctico Especial: Consulta y transformación de documentos XML – Espectáculos /***/Grupo 3/***/ 
* Aquili, Alejo
* Bassani, Santiago
* Sanguineti, Francisco
-->
<xsl:transform  version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	
	<!-- Nuestra salida será del tipo HTML -->
	<xsl:output method="html" indent="yes" cdata-section-elements="TRANSACTION_MSG"/>

	<!-- Usuamos Xpath para indicar que el elemento raiz es "total". -->
	<xsl:template match="/total">
<html>
<title>TPE - XML - GRUPO 3</title>
<meta charset="UTF-8"></meta>
<meta name="viewport" content="width=device-width, initial-scale=1"></meta>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css"></link>
<link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Roboto'></link>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"></link>
<style>
html,body,h1,h2,h3,h4,h5,h6 {font-family: "Roboto", sans-serif}
</style>
<body class="w3-light-grey">

<!-- Page Container -->
<div class="w3-content w3-margin-top" style="max-width:1400px;">

  <!-- The Grid -->
  <div class="w3-row-padding">
  

    <!-- Right Column -->
    <div class="w3-threethird">
    	<h2 class="w3-text-grey w3-padding-16"><i class="fa fa-certificate fa-fw w3-margin-right w3-xxlarge w3-text-teal"></i>Espectaculos</h2>
      <xsl:for-each select="/total/rss">
        <div class="w3-container w3-card-2 w3-white">
        
        <div class="w3-container">
          <h5 class="w3-opacity"><b>Medio: <xsl:value-of select="channel/title"/></b></h5>
          <ul>
          <xsl:for-each select="channel/item">
                <li style="list-style:none;">
                  <xsl:element name="a"><xsl:attribute name="href"><xsl:value-of select="link"/></xsl:attribute><xsl:value-of select="title"/></xsl:element>
                </li>
          </xsl:for-each>
          </ul>
         </div>
         </div>
      </xsl:for-each>

    </div>
    <!-- End Right Column -->

  </div>
  <!-- End Grid -->
 
</div>
<!-- End Page Container -->
<footer class="w3-container w3-teal w3-center w3-margin-top">
  <p>(2017Q1) 72.32 - Diseño y Procesamiento de Documentación XML - ITBA</p>
  <P>GRUPO 3</P>
</footer>

</body>
</html>
		
	</xsl:template>

</xsl:transform>