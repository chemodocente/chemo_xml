<?xml version="1.0" encoding="UTF-8"?>
<!--
  participantes.xsl
  Hoja XSLT didáctica para practicar XPath con participantes.xml

  Uso:
  1. Guarda este archivo como participantes.xsl en la misma carpeta que participantes.xml.
  2. El XML ya tiene esta línea:
     <?xml-stylesheet href="participantes.xsl" type="text/xsl"?>
  3. Abre participantes.xml en el navegador.

  Importante:
  - Esta hoja usa XSLT 1.0, compatible con navegadores.
  - XPath se usa dentro de atributos como select="..." o test="...".
-->

<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <!-- Indicamos que la salida será HTML -->
    <xsl:output method="html" encoding="UTF-8" indent="yes"/>

    <!-- Plantilla principal: se ejecuta desde la raíz del documento XML -->
    <xsl:template match="/">
        <html lang="es">
            <head>
                <meta charset="UTF-8"/>
                <title>Consultas XPath sobre participantes</title>
                <style>
                    body {
                        font-family: Arial, sans-serif;
                        margin: 2rem;
                        background: #f4f6f8;
                        color: #222;
                    }

                    h1, h2, h3 {
                        color: #1f3a5f;
                    }

                    section {
                        background: #ffffff;
                        border: 1px solid #d9e2ec;
                        border-radius: 10px;
                        padding: 1rem 1.25rem;
                        margin-bottom: 1.5rem;
                    }

                    code {
                        display: inline-block;
                        background: #eef2f7;
                        color: #8a2d3b;
                        padding: 0.2rem 0.4rem;
                        border-radius: 4px;
                        font-size: 0.95rem;
                    }

                    table {
                        width: 100%;
                        border-collapse: collapse;
                        margin-top: 1rem;
                    }

                    th, td {
                        border: 1px solid #ccd6e0;
                        padding: 0.5rem;
                        text-align: left;
                    }

                    th {
                        background: #1f3a5f;
                        color: white;
                    }

                    tr:nth-child(even) {
                        background: #f8fafc;
                    }

                    .dato {
                        font-weight: bold;
                        color: #005a8d;
                    }

                    .nota {
                        background: #fff7d6;
                        border-left: 5px solid #f2c94c;
                        padding: 0.75rem;
                        margin: 1rem 0;
                    }

                    .menor {
                        color: #b00020;
                        font-weight: bold;
                    }

                    .mayor {
                        color: #006b3c;
                        font-weight: bold;
                    }
                </style>
            </head>

            <body>
                <h1>Consultas XPath sobre participantes.xml</h1>

                <div class="nota">
                    Esta página se ha generado transformando el XML con XSLT.
                    Cada bloque muestra una consulta XPath y el resultado obtenido.
                </div>

                <!-- ===================================================== -->
                <!-- 1. CONSULTA GENERAL                                  -->
                <!-- ===================================================== -->
                <section>
                    <h2>1. Todos los participantes</h2>
                    <p>XPath usado: <code>/sorteo/participante</code></p>

                    <table>
                        <tr>
                            <th>Nº</th>
                            <th>Nombre</th>
                            <th>Apellidos</th>
                            <th>Email</th>
                            <th>Edad</th>
                        </tr>

                        <xsl:for-each select="/sorteo/participante">
                            <tr>
                                <td><xsl:value-of select="position()"/></td>
                                <td><xsl:value-of select="nombre"/></td>
                                <td><xsl:value-of select="apellidos"/></td>
                                <td><xsl:value-of select="email"/></td>
                                <td><xsl:value-of select="edad"/></td>
                            </tr>
                        </xsl:for-each>
                    </table>
                </section>

                <!-- ===================================================== -->
                <!-- 2. CONTAR NODOS                                      -->
                <!-- ===================================================== -->
                <section>
                    <h2>2. Contar participantes</h2>
                    <p>XPath usado: <code>count(/sorteo/participante)</code></p>
                    <p>Total de participantes: <span class="dato"><xsl:value-of select="count(/sorteo/participante)"/></span></p>
                </section>

                <!-- ===================================================== -->
                <!-- 3. SELECCIONAR CAMPOS CONCRETOS                      -->
                <!-- ===================================================== -->
                <section>
                    <h2>3. Solo nombres</h2>
                    <p>XPath usado: <code>/sorteo/participante/nombre</code></p>

                    <ul>
                        <xsl:for-each select="/sorteo/participante/nombre">
                            <li><xsl:value-of select="."/></li>
                        </xsl:for-each>
                    </ul>
                </section>

                <!-- ===================================================== -->
                <!-- 4. FILTRAR POR EDAD                                  -->
                <!-- ===================================================== -->
                <section>
                    <h2>4. Participantes menores de edad</h2>
                    <p>XPath usado: <code>/sorteo/participante[edad &lt; 30]</code></p>

                    <table>
                        <tr>
                            <th>Nombre</th>
                            <th>Apellidos</th>
                            <th>Edad</th>
                        </tr>

                        <xsl:for-each select="/sorteo/participante[edad &lt; 30]">
                            <tr>
                                <td><xsl:value-of select="nombre"/></td>
                                <td><xsl:value-of select="apellidos"/></td>
                                <td class="menor"><xsl:value-of select="edad"/></td>
                            </tr>
                        </xsl:for-each>
                    </table>
                </section>

                <section>
                    <h2>5. Participantes mayores o iguales de 18 años</h2>
                    <p>XPath usado: <code>/sorteo/participante[edad &gt;= 18]</code></p>
                    <p>Total: <span class="dato"><xsl:value-of select="count(/sorteo/participante[edad &gt;= 18])"/></span></p>

                    <table>
                        <tr>
                            <th>Nombre</th>
                            <th>Apellidos</th>
                            <th>Edad</th>
                        </tr>

                        <xsl:for-each select="/sorteo/participante[edad &gt;= 18]">
                            <tr>
                                <td><xsl:value-of select="nombre"/></td>
                                <td><xsl:value-of select="apellidos"/></td>
                                <td class="mayor"><xsl:value-of select="edad"/></td>
                            </tr>
                        </xsl:for-each>
                    </table>
                </section>

                <!-- ===================================================== -->
                <!-- 5. FILTRAR POR RANGOS                                -->
                <!-- ===================================================== -->
                <section>
                    <h2>6. Participantes entre 30 y 40 años</h2>
                    <p>XPath usado: <code>/sorteo/participante[edad &gt;= 30 and edad &lt;= 40]</code></p>

                    <table>
                        <tr>
                            <th>Nombre</th>
                            <th>Apellidos</th>
                            <th>Edad</th>
                        </tr>

                        <xsl:for-each select="/sorteo/participante[edad &gt;= 30 and edad &lt;= 40]">
                            <xsl:sort select="edad" data-type="number" order="ascending"/>
                            <tr>
                                <td><xsl:value-of select="nombre"/></td>
                                <td><xsl:value-of select="apellidos"/></td>
                                <td><xsl:value-of select="edad"/></td>
                            </tr>
                        </xsl:for-each>
                    </table>
                </section>

                <!-- ===================================================== -->
                <!-- 6. POSICIONES                                        -->
                <!-- ===================================================== -->
                <section>
                    <h2>7. Primer participante</h2>
                    <p>XPath usado: <code>/sorteo/participante[1]</code></p>

                    <p>
                        <strong>Nombre:</strong>
                        <xsl:value-of select="/sorteo/participante[1]/nombre"/>
                        <xsl:text> </xsl:text>
                        <xsl:value-of select="/sorteo/participante[1]/apellidos"/>
                    </p>
                </section>

                <section>
                    <h2>8. Cinco primeros participantes</h2>
                    <p>XPath usado: <code>/sorteo/participante[position() &lt;= 5]</code></p>

                    <ol>
                        <xsl:for-each select="/sorteo/participante[position() &lt;= 5]">
                            <li>
                                <xsl:value-of select="nombre"/>
                                <xsl:text> </xsl:text>
                                <xsl:value-of select="apellidos"/>
                            </li>
                        </xsl:for-each>
                    </ol>
                </section>

                <!-- ===================================================== -->
                <!-- 7. BÚSQUEDAS DE TEXTO                                -->
                <!-- ===================================================== -->
                <section>
                    <h2>9. Participantes cuyo apellido contiene “Rubio”</h2>
                    <p>XPath usado: <code>/sorteo/participante[contains(apellidos, 'Rubio')]</code></p>

                    <table>
                        <tr>
                            <th>Nombre</th>
                            <th>Apellidos</th>
                            <th>Email</th>
                        </tr>

                        <xsl:for-each select="/sorteo/participante[contains(apellidos, 'Rubio')]">
                            <tr>
                                <td><xsl:value-of select="nombre"/></td>
                                <td><xsl:value-of select="apellidos"/></td>
                                <td><xsl:value-of select="email"/></td>
                            </tr>
                        </xsl:for-each>
                    </table>
                </section>

                <section>
                    <h2>10. Participantes cuyo nombre empieza por “A”</h2>
                    <p>XPath usado: <code>/sorteo/participante[starts-with(nombre, 'A')]</code></p>

                    <table>
                        <tr>
                            <th>Nombre</th>
                            <th>Apellidos</th>
                            <th>Edad</th>
                        </tr>

                        <xsl:for-each select="/sorteo/participante[starts-with(nombre, 'A')]">
                            <tr>
                                <td><xsl:value-of select="nombre"/></td>
                                <td><xsl:value-of select="apellidos"/></td>
                                <td><xsl:value-of select="edad"/></td>
                            </tr>
                        </xsl:for-each>
                    </table>
                </section>

                <!-- ===================================================== -->
                <!-- 8. ORDENAR RESULTADOS                                -->
                <!-- ===================================================== -->
                <section>
                    <h2>11. Participantes ordenados por edad</h2>
                    <p>XPath usado: <code>/sorteo/participante</code></p>
                    <p>Orden aplicado con XSLT: <code>&lt;xsl:sort select="edad" data-type="number"/&gt;</code></p>

                    <table>
                        <tr>
                            <th>Nombre</th>
                            <th>Apellidos</th>
                            <th>Edad</th>
                        </tr>

                        <xsl:for-each select="/sorteo/participante">
                            <xsl:sort select="edad" data-type="number" order="ascending"/>
                            <tr>
                                <td><xsl:value-of select="nombre"/></td>
                                <td><xsl:value-of select="apellidos"/></td>
                                <td><xsl:value-of select="edad"/></td>
                            </tr>
                        </xsl:for-each>
                    </table>
                </section>

                <!-- ===================================================== -->
                <!-- 9. CÁLCULOS                                          -->
                <!-- ===================================================== -->
                <section>
                    <h2>12. Edad media</h2>
                    <p>XPath usado: <code>sum(/sorteo/participante/edad) div count(/sorteo/participante)</code></p>
                    <p>
                        Edad media:
                        <span class="dato">
                            <xsl:value-of select="format-number(sum(/sorteo/participante/edad) div count(/sorteo/participante), '0.00')"/>
                        </span>
                    </p>
                </section>

                <!-- ===================================================== -->
                <!-- 10. CONDICIONALES                                    -->
                <!-- ===================================================== -->
                <section>
                    <h2>13. Clasificación por edad</h2>
                    <p>XPath usado dentro del test: <code>edad &lt; 18</code>, <code>edad &gt;= 18 and edad &lt; 60</code>, <code>edad &gt;= 60</code></p>

                    <table>
                        <tr>
                            <th>Nombre</th>
                            <th>Edad</th>
                            <th>Clasificación</th>
                        </tr>

                        <xsl:for-each select="/sorteo/participante">
                            <tr>
                                <td><xsl:value-of select="nombre"/></td>
                                <td><xsl:value-of select="edad"/></td>
                                <td>
                                    <xsl:choose>
                                        <xsl:when test="edad &lt; 18">Menor de edad</xsl:when>
                                        <xsl:when test="edad &gt;= 60">60 años o más</xsl:when>
                                        <xsl:otherwise>Adulto</xsl:otherwise>
                                    </xsl:choose>
                                </td>
                            </tr>
                        </xsl:for-each>
                    </table>
                </section>

                <!-- ===================================================== -->
                <!-- 11. ZONA PARA QUE EL ALUMNO MODIFIQUE                -->
                <!-- ===================================================== -->
                <section>
                    <h2>14. Zona de pruebas para modificar en clase</h2>
                    <p>
                        Cambia el valor del atributo <code>select</code> en el siguiente
                        <code>xsl:for-each</code> para probar nuevas consultas.
                    </p>

                    <p>Consulta actual: <code>/sorteo/participante[edad &gt; 50]</code></p>

                    <table>
                        <tr>
                            <th>Nombre</th>
                            <th>Apellidos</th>
                            <th>Email</th>
                            <th>Edad</th>
                        </tr>

                        <!--
                            PRUEBAS RECOMENDADAS:

                            /sorteo/participante[edad &gt; 50]
                            /sorteo/participante[edad &lt; 25]
                            /sorteo/participante[nombre='Laura']
                            /sorteo/participante[contains(email, 'example.com')]
                            /sorteo/participante[contains(apellidos, 'García')]
                            /sorteo/participante[position() &gt; 10 and position() &lt;= 20]
                        -->
                        <xsl:for-each select="/sorteo/participante[edad &gt; 50]">
                            <tr>
                                <td><xsl:value-of select="nombre"/></td>
                                <td><xsl:value-of select="apellidos"/></td>
                                <td><xsl:value-of select="email"/></td>
                                <td><xsl:value-of select="edad"/></td>
                            </tr>
                        </xsl:for-each>
                    </table>
                </section>

            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
