<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html lang="en">
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Document</title>
    <style>
        .tarjeta {
        width: 45%;
        background-color: #ffffff;
        border: 1px solid #ddd;
        border-radius: 10px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        padding: 20px;
        margin:15px;
        }

         .premium {
            background-color: #f1f09d;
        }
    </style>
</head>
<body>
    <h1>CARTELERA CINEVERSO</h1>
    <p>La mejores experiencias en el mundo del séptimo arte. Bienvenidos al mejor cine de la ciudad.</p>

    <xsl:for-each select="cineverso/sala">

        <xsl:choose>
            <xsl:when test="@tipo='Premium'">
                
            <div class="tarjeta premium">
                <h3><xsl:value-of select="pelicula/titulo"/></h3>
                <p><xsl:value-of select="pelicula/@idioma"/> - <xsl:value-of select="pelicula/@version"/></p>
                <xsl:choose>
                    <xsl:when test="pelicula/@edad = 'todos'">
                        <p>Película recomendada para todos los públicos.</p>
                    </xsl:when>
                    <xsl:otherwise>
                        <p>Película recomendada para mayores de <xsl:value-of select="pelicula/@edad"/></p>
                    </xsl:otherwise>
                </xsl:choose>
                <p>Duracion: <xsl:value-of select="pelicula/duracion"/>
                <xsl:text> </xsl:text>
                <xsl:value-of select="pelicula/duracion/@unidad"/></p>
            </div>
            </xsl:when>
            <xsl:otherwise>
             <div class="tarjeta">
                <h3><xsl:value-of select="pelicula/titulo"/></h3>
                <p><xsl:value-of select="pelicula/@idioma"/> - <xsl:value-of select="pelicula/@version"/></p>
                <xsl:choose>
                    <xsl:when test="pelicula/@edad = 'todos'">
                        <p>Película recomendada para todos los públicos.</p>
                    </xsl:when>
                    <xsl:otherwise>
                        <p>Película recomendada para mayores de <xsl:value-of select="pelicula/@edad"/></p>
                    </xsl:otherwise>
                </xsl:choose>
                <p>Duracion: <xsl:value-of select="pelicula/duracion"/>
                    <xsl:text> </xsl:text>
                <xsl:value-of select="pelicula/duracion/@unidad"/></p>
            </div>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:for-each>

</body>
</html>

    </xsl:template>
</xsl:stylesheet>