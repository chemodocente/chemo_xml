<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html lang="es">
            <head>
                <meta charset="UTF-8"/>
                <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
                <title>Práctica Agrotech</title>
            </head>
            <body>
                <h1>
                    <xsl:value-of select="agrotech/@nombre"/> - 
                    <xsl:value-of select="agrotech/@ciudad"/>
                </h1>
                <table border="1" cellspadding="10px" cellspacing="0">
                    <tr>
                        <th>id</th>
                        <th>nombre</th>
                        <th>tipo</th>
                        <th>superficie</th>
                        <th>fechaSiembra</th>
                        <th>estado</th>
                    </tr>                    
                        <xsl:for-each select="agrotech/cultivo">
                            <tr>
                                <td><xsl:value-of select="@id"/></td>
                                <td><xsl:value-of select="nombre"/></td>
                                <td><xsl:value-of select="tipo"/></td>
                                <td><xsl:value-of select="superficie"/></td>
                                <td><xsl:value-of select="fechaSiembra"/></td>
                                <td><xsl:value-of select="estado"/></td>
                            </tr>
                        </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
