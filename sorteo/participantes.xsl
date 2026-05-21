<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        
    <!-- INICIO WEB -->
         <html>
            <head> 
                <title>Sorteo</title>
                <style>
                    body {
                        font-family: 'Arial', sans serif;
                        font-size: 15px;
                    }
                    td {
                        border: solid 1px orange;
                        padding: 6px;
                    }
                </style>
            </head>
            <body>
                <h1>SORTEO ESPECIAL</h1>
                <h2>Listado de Participantes</h2>
                <hr/>

                <table  width="80%" cellspacing="0">
                    <tr>
                        <td>NOMBRE</td>
                        <td>APELLIDOS</td>
                        <td>EMAIL</td>
                        <td>EDAD</td>
                    </tr>
                    <xsl:for-each select="sorteo/participante">
                        <xsl:sort select="edad" data-type="number"/>
                        <tr>
                            <td><xsl:value-of select="nombre"/></td>
                            <td><xsl:value-of select="apellidos"/></td>
                            <td><xsl:value-of select="email"/></td>
                            <td><xsl:value-of select="edad"/></td>
                        </tr>
                    </xsl:for-each>
                </table>
                <ol>
                    <xsl:for-each select="sorteo/participante/nombre">
                        <li><xsl:value-of select="."/> &#160;<xsl:value-of select="../apellidos"/></li>
                    </xsl:for-each>
                </ol>
            </body>
         </html>

    </xsl:template>
</xsl:stylesheet>



<!-- 
/ camino exacto....

// sin camino exacto buscame todo lo que se llame "como haya puesto"
        /sorteo/participante/nombre
        sorteo/participante/mascota/nombre
        //nombre

@Atributo seleciona un atributo
    /sorteo/participante[@id="037"]

    
-->