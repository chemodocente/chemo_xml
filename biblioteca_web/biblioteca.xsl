<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">      
    <xsl:output method="html" enconding="UTF-8" indent="yes"/>
    <xsl:template match="/">
  
        <html>
            <head>
                <title>Biblioteca</title>
            </head>
            <body>
                <h1>Biblioteca Web</h1>
                <h2>Listado de libros.</h2>

                <table border="1" width="80%">
                    <tr>
                        <th>Código</th>
                        <th>Titulo de Libro</th>
                        <th>Autor</th>
                        <th>Publicado</th>
                        <th>PRECIO</th>
    
                    </tr>
                    <xsl:for-each select="biblioteca/libro">
                         <xsl:sort select="codigo" data-type="number"/>
                        <tr>                        
                            <td><xsl:value-of select="@codigo"/>
                            </td><td><xsl:value-of select="titulo"/></td>
                            <td><xsl:value-of select="autor"/></td>
                            <td><xsl:value-of select="anio"/></td>
                            <td><xsl:value-of select="precio"/></td>

                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
