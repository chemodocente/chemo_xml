<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">

    <html>
        <head>
            <title>Libreria Chemo</title>
            <style>
                .disponible {
                     background-color: #cef3e1;
                }
                .prestado {                     
                    background-color: #ffd8d8;
                }
            </style>
        </head>
        <body>
            <h1><xsl:value-of select="catalogo/@nombreBiblioteca"/></h1>
            <h2>Libros al mejor precio</h2>

            <table border="1" cellspacing="0" cellpadding="3">
                <tr class="">
                    <th>Título</th>
                    <th>Autor</th>
                    <th>Año</th>
                    <th>Genero</th>
                    <th>Disponible</th>
                    <th>Ejemplares</th>
                </tr>

                <xsl:for-each select="catalogo/libro">
                    <xsl:sort select="titulo"/>
                    <tr>
                        <td><xsl:value-of select="titulo"/></td>
                        <td><xsl:value-of select="autor"/></td>
                        <td><xsl:value-of select="anio"/></td>
                        <td><xsl:value-of select="genero"/></td>
                        <xsl:choose>
                            <xsl:when test="disponible = 'true'">
                                <td class="disponible">Disponible</td>
                            </xsl:when>
                            <xsl:otherwise>
                                <td class="prestado">Prestado</td>
                            </xsl:otherwise>
                        </xsl:choose>
                        
                        <td><xsl:value-of select="ejemplares"/></td>
                    </tr>
                </xsl:for-each>

            </table>
        </body>
    </html>

    </xsl:template>
</xsl:stylesheet>