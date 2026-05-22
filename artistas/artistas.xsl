<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/">

    <!-- INICIO DE WEB HTML -->

        <html>
            <head>
                <title>Artisteo</title>
            </head>
            <body>
                <h1>Lista de Artistas de Cine</h1>
                <h2>Los mejores actores y actrices del panorama actual.</h2>

                <!-- EJERCICIO 1 IMAGEN MAS DATOS 
                <xsl:for-each select="artistas/artista">
                    <table border="1" cellspacing="0" cellpadding="0" width="100%">
                        <tr>
                            <td width="300px">
                                <img src="{datos/foto}" width="300px"/>
                            </td>
                            <td>
                                <h3><xsl:value-of select="datos/nombreArtistico"/></h3>
                                <p><xsl:value-of select="datos/nacionalidad"/>-<xsl:value-of select="datos/anioNacimiento"/></p>
                                
                                <xsl:for-each select="filmografia/pelicula">
                                    <xsl:value-of select="titulo"/>-<xsl:value-of select="anio"/><br/>
                                </xsl:for-each>

                            </td>
                        </tr>
                    </table>
                </xsl:for-each>
                -->

                

            </body>
        </html>


    <!-- FIN DE WEB HTML-->


    </xsl:template>
</xsl:stylesheet>