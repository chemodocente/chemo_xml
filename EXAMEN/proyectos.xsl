<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">

    <html>
        <head>
            <title>Respositorio de Proyectos</title>
            <style>
                .activo { background-color: #cffced;}
                .borrador {background-color: #ffddff;}
                .revision {background-color: rgb(235, 215, 192);}
                .archivado { background-color: #aaaaaa;}
            
            </style>
        </head>
        <body>
            <h1>Repositorio de Proyectos. Examen</h1>
            <h2><xsl:value-of select="repositorio/@nombre"/></h2>
            <h3>Version: <xsl:value-of select="repositorio/@version"/></h3>

            <table border="1" Cellspacing="0">
                <tr>
                    <th>ID</th>
                    <th>Título</th>
                    <th>Categoría</th>
                    <th>Responsable</th>
                    <th>Fecha Inicio</th>
                    <th>Versión</th>
                    <th>Estado</th>
                    <th>Ruta</th>
                </tr>

                <xsl:for-each select="repositorio/proyecto">
                <tr>
                    <td><xsl:value-of select="@id"/></td>
                    <td><xsl:value-of select="titulo"/></td>
                    <td><xsl:value-of select="categoria"/></td>
                    <td><xsl:value-of select="responsable"/></td>
                    <td><xsl:value-of select="fechaInicio"/></td>
                    <td><xsl:value-of select="version"/></td>
                    <!-- Aqui elegimos el estado y coloreamos segun elección -->
                    
                        <xsl:choose>
                            <xsl:when test="estado = 'activo'">
                                <td class="activo">ACTIVO</td>
                            </xsl:when>
                            <xsl:when test="estado = 'borrador'">
                                <td class="borrador">BORRADOR</td>
                            </xsl:when>
                            <xsl:when test="estado = 'revision'">
                                <td class="revision">EN REVISIÓN</td>
                            </xsl:when>
                            <xsl:when test="estado = 'archivado'">
                                <td class="archivado">EN EL BAUL</td>
                            </xsl:when>                        
                            <xsl:otherwise>
                            <td><xsl:value-of select="estado"/>Otros</td>
                        </xsl:otherwise>
                        </xsl:choose>

                    <td><xsl:value-of select="ruta"/></td>
                </tr>
                </xsl:for-each>

            </table>

        </body>
    </html>

    </xsl:template>
</xsl:stylesheet>