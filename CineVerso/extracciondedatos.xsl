<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">

<!-- Aqui empieza la Web -->
<html>
<head>
    <title>Extraccion de Datos</title>
</head>
<body>
   <h1>EXTRACCIÓN DE DATOS</h1>
   <xsl:for-each select="cineverso/sala">

   <h3><xsl:value-of select="sonido"/></h3>
   <h3><xsl:value-of select="pelicula/duracion"/></h3>
   <h3><xsl:value-of select="pelicula/@codigo"/></h3>
   <h3 style="color: red;"><xsl:value-of select="@id"/></h3>
    <h2  style="color: blue;"><xsl:value-of select="/cineverso/@complejo"/></h2>

    <xsl:choose>
        <xsl:when test="pelicula/duracion > 95">
            <h3 style="color: violet;"><xsl:value-of select="pelicula/duracion"/></h3>
        </xsl:when>
        <xsl:otherwise>
            <h3 style="color: green;"><xsl:value-of select="pelicula/duracion"/></h3>
        </xsl:otherwise>
    </xsl:choose>

    



    <!-- 
    - duracion 95 minutos rojo
    . menor a 95 minutos azul
    -->


   </xsl:for-each>
</body>
</html>
<!-- Aqui termina la Web -->


    </xsl:template>
</xsl:stylesheet>