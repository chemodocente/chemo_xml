<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:output method="html" encoding="UTF-8" indent="yes"/>

    <xsl:template match="/">
        <html>
            <head>
                <title>
                    <xsl:value-of select="catalogo/@nombreBiblioteca"/>
                </title>

                <style>
                    body {
                        font-family: Arial, sans-serif;
                        background: #f4f4f4;
                        margin: 0;
                        padding: 30px;
                    }

                    h1 {
                        text-align: center;
                        color: #222;
                    }

                    table {
                        width: 100%;
                        border-collapse: collapse;
                        background: white;
                    }

                    th {
                        background: #222;
                        color: white;
                        padding: 10px;
                    }

                    td {
                        border: 1px solid #ccc;
                        padding: 10px;
                    }

                    .disponible {
                        background: #d8f5d0;
                    }

                    .prestado {
                        background: #f8d0d0;
                    }

                    tfoot td {
                        font-weight: bold;
                        background: #eeeeee;
                    }
                </style>
            </head>

            <body>
                <h1>
                    <xsl:value-of select="catalogo/@nombreBiblioteca"/>
                </h1>

                <table>
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>ISBN</th>
                            <th>Título</th>
                            <th>Autor</th>
                            <th>Año</th>
                            <th>Género</th>
                            <th>Estado</th>
                            <th>Ejemplares</th>
                        </tr>
                    </thead>

                    <tbody>
                        <xsl:for-each select="catalogo/libro">
                            <xsl:sort select="titulo"/>

                            <tr>
                                <xsl:attribute name="class">
                                    <xsl:choose>
                                        <xsl:when test="disponible = 'true'">disponible</xsl:when>
                                        <xsl:otherwise>prestado</xsl:otherwise>
                                    </xsl:choose>
                                </xsl:attribute>

                                <td>
                                    <xsl:value-of select="@id"/>
                                </td>

                                <td>
                                    <xsl:value-of select="@isbn"/>
                                </td>

                                <td>
                                    <xsl:value-of select="titulo"/>
                                </td>

                                <td>
                                    <xsl:value-of select="autor"/>
                                </td>

                                <td>
                                    <xsl:value-of select="anio"/>
                                </td>

                                <td>
                                    <xsl:value-of select="genero"/>
                                </td>

                                <td>
                                    <xsl:choose>
                                        <xsl:when test="disponible = 'true'">
                                            Disponible
                                        </xsl:when>
                                        <xsl:otherwise>
                                            Prestado
                                        </xsl:otherwise>
                                    </xsl:choose>
                                </td>

                                <td>
                                    <xsl:value-of select="ejemplares"/>
                                </td>
                            </tr>
                        </xsl:for-each>
                    </tbody>

                    <tfoot>
                        <tr>
                            <td colspan="8">
                                Libros disponibles:
                                <xsl:value-of select="count(catalogo/libro[disponible='true'])"/>
                            </td>
                        </tr>
                    </tfoot>
                </table>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>