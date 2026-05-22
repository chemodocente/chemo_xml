<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/">

<!-- CREAR UN LISTADO DE ENLACES A LA FOTO DE LOS ARTISTAS
 Explicacion: Debe aparecer su nombre y cuando pinche en el que me lleve a su foto-->

     <html>
        <head>
            <title>Listado de Artista</title>
        </head>
        <body>
            <h1>Listado de Artistas</h1>
            <hr/>

                <xsl:for-each select="artistas/artista">
                    <p>
                        <a href="{datos/foto}"><xsl:value-of select="datos/nombreArtistico"/></a>
                    </p>
                </xsl:for-each>


        </body>
    </html>


<!-- CREAR UN LISTADO DE TODAS LAS PELICULAS 

    <html>
        <head>
            <title>Listado de Pelis</title>
        </head>
        <body>
            <h1>Listado de Pelis</h1>
            <hr/>

            <ol>
                <xsl:for-each select="artistas/artista//titulo">
                    <li><xsl:value-of select="."/></li>
                </xsl:for-each>
            </ol>

        </body>
    </html>
-->

<!-- CREAR UNA TABLA CON NOMBRE ARTISTA AÑO DE NACIMIENTO Y PREMIOS 
 <html lang="es">
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Tabla de Artistas</title>
</head>
<body>
    <h1>LISATDO DE ARTISTAS</h1>
    <table border="1">
        <tr>
            <td>ARTISTA</td>
            <td>AÑO</td>
            <td>PREMIOS</td>
        </tr>
        <xsl:for-each select="artistas/artista">
            <tr>
                <td><xsl:value-of select="datos/nombreCompleto"/></td>
                <td><xsl:value-of select="datos/anioNacimiento"/></td>
                <td><xsl:value-of select="datos/premios"/></td>
            </tr>
        </xsl:for-each>
    </table>

</body>
</html>
-->
 
    <!-- EJERCICIO DE LISTA DE NOMBRE(Lugar de nacimiento) 

    <html>
        <head>
            <title>Listado de Actores/Actrices</title>
        </head>
        <body>
            <h1>LISTA DE ARTISTAS</h1>
            <hr/>

            <ul>
                <xsl:for-each select="artistas/artista">
                    <li><xsl:value-of select="datos/nombreCompleto"/>(<xsl:value-of select="datos/lugarNacimiento"/>)</li>
                </xsl:for-each>
                
            </ul>

        </body>
    </html>-->

    <!-- EJERCICIO 1 IMAGEN MAS DATOS 
        <html>
            <head>
                <title>Artisteo</title>
            </head>
            <body>
                <h1>Lista de Artistas de Cine</h1>
                <h2>Los mejores actores y actrices del panorama actual.</h2>

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
                
            </body>
        </html>
    -->
    </xsl:template>
</xsl:stylesheet>