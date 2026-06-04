<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">

<html>
<head>
    <title>AgroTech</title>
    
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            color: #2e60cc;
        }
        section {
            border: 1px solid blue;
            padding: 20px;
            margin: 10px 5px;     
        }
        section:hover {
            background-color: #eaf0ff;
        }

        td, th {
            padding: 4px 8px;
        }
    </style>
    <!-- VOY A CREAR UN BOTON PARA QUEDARME SOLO CON LA ULTIMA SECCION -->
     <script src="js/botonseccion.js"></script>
</head>
<body>

      <header>
    <h1>Practicas con Agrotech Pro</h1>
    <button id="toggleSections">Ocultar secciones</button>
  </header>

<!-- EJERCICIO 1 -->
    <section id="E01">
        <h2><xsl:value-of select="agrotech/@empresa"/></h2>
        <h4>Ciudad: <xsl:value-of select="agrotech/@ciudad"/></h4>
        <h4>Versión: <xsl:value-of select="agrotech/@version"/></h4>
    </section>

<!-- EJERCICIO 2 -->
    <section id="E02">
        <h3>Índice de Fincas</h3>
        <ul>
            <xsl:for-each select="agrotech/finca">
                <li>
                    <strong><xsl:value-of select="@nombre"/></strong>
                    <xsl:text> · Zona: </xsl:text>
                    <xsl:value-of select="@zona"/>
                </li>
            </xsl:for-each>
        </ul>
    </section>
    

    <!-- EJERCICIO 3 -->
    <section id="E03">
        <h3>Responsables de Finca</h3>
        <table border="1" cellspacing="0">
            <tr>
                <th>Finca</th>
                <th>Zona</th>
                <th>Responsable</th>
                <th>Teléfono</th>
            </tr>
            <xsl:for-each select="agrotech/finca">
                <tr>
                    <td><xsl:value-of select="@nombre"/></td>
                    <td><xsl:value-of select="@zona"/></td>
                    <td><xsl:value-of select="responsable/@nombre"/></td>
                    <td><xsl:value-of select="responsable/@telefono"/></td>
                </tr>
            </xsl:for-each>
        </table>
    </section>


    <!-- EJERCICIO 4 -->
    <section id="E04">
        <h3>Listados de cultivos por finca</h3>
        <xsl:for-each select="agrotech/finca">
            <h4><xsl:value-of select="@nombre"/></h4>
            <p>Zona: <xsl:value-of select="@zona"/></p>
            <p>Responsable: <xsl:value-of select="responsable/@nombre"/></p>
            
            <table border="1" cellspacing="0">
                <tr>
                    <th>Código</th>
                    <th>Nombre</th>
                    <th>Tipo</th>
                    <th>Superficie</th>
                    <th>Temporada</th>
                    <th>Estado</th>
                    <th>Riesgo</th>
                </tr>
                <xsl:for-each select="cultivos/cultivo">
                 <tr>
                    <td><xsl:value-of select="@codigo"/></td>
                    <td><xsl:value-of select="nombre"/></td>
                    <td><xsl:value-of select="tipo"/></td>
                    <td><xsl:value-of select="superficie"/></td>
                    <td><xsl:value-of select="@temporada"/></td>
                    <td><xsl:value-of select="estado"/></td>
                    <td><xsl:value-of select="riesgo"/></td>
                 </tr>   
                </xsl:for-each>
            </table>
            
            <hr/>
        </xsl:for-each>

    </section>


    <!-- EJERCICIO 5 -->
    <section id="E05">
        <h3>Listado de Cultivos</h3>
        <table>
            <tr>
                <th>Finca</th>
                <th>Código</th>
                <th>Cultivo</th>
                <th>Tipo</th>
                <th>Superficie</th>
                <th>Temporada</th>
                <th>Estado</th>
                <th>Riesgo</th>
            </tr>
            <xsl:for-each select="agrotech/finca/cultivos/cultivo">
                <tr>
                    <td><xsl:value-of select="../../@nombre"/></td>
                    <td><xsl:value-of select="@codigo"/></td>
                    <td><xsl:value-of select="nombre"/></td>
                    <td><xsl:value-of select="tipo"/></td>
                    <td><xsl:value-of select="superficie"/></td>
                    <td><xsl:value-of select="@temporada"/></td>
                    <td><xsl:value-of select="estado"/></td>
                    <td><xsl:value-of select="riesgo"/></td>
                </tr>
            </xsl:for-each>
        </table>
    </section>

        <!-- EJERCICIO 6 -->
    <section id="E06">
        <h3>Listado de Cultivos con Estado</h3>
        <table>
            <tr>
                <th>Finca</th>
                <th>Código</th>
                <th>Cultivo</th>
                <th>Tipo</th>
                <th>Superficie</th>
                <th>Temporada</th>
                <th>Estado</th>
                <th>Riesgo</th>
            </tr>
            <xsl:for-each select="agrotech/finca/cultivos/cultivo">
                <tr>
                    <td><xsl:value-of select="../../@nombre"/></td>
                    <td><xsl:value-of select="@codigo"/></td>
                    <td><xsl:value-of select="nombre"/></td>
                    <td><xsl:value-of select="tipo"/></td>
                    <td><xsl:value-of select="superficie"/></td>
                    <td><xsl:value-of select="@temporada"/></td>
                    <!-- aqui elije que poner segun el "estado" del cultivo leido en el xml-->
                    <xsl:choose>
                        <!-- PRIMERA OPCION -->
                        <xsl:when test="estado='activo'">
                            <td>TERRERNO CULTIVADO</td>
                        </xsl:when>

                        <!-- SEGUNDA OPCION -->
                        <xsl:when test="estado='mantenimiento'">
                            <td>BARBECHO TÉCNICO</td>
                        </xsl:when>

                        <!-- TERCERA OPCION -->
                        <xsl:when test="estado='finalizado'">
                            <td>TERRERO LIBRE</td>
                        </xsl:when>

                        <!-- el When necesita Otherwise para cualquiero otro dato -->
                         <xsl:otherwise>
                            <td>REVISAR TERRENO</td>
                         </xsl:otherwise>
                    </xsl:choose>

                    <td><xsl:value-of select="riesgo"/></td>
                </tr>
            </xsl:for-each>
        </table>
    </section>

            <!-- EJERCICIO 7 -->
    <section id="E07">
        <h3>Listado de Cultivos con Riesgo</h3>
        <table>
            <tr>
                <th>Finca</th>
                <th>Código</th>
                <th>Cultivo</th>
                <th>Tipo</th>
                <th>Superficie</th>
                <th>Temporada</th>
                <th>Estado</th>
                <th>Riesgo</th>
            </tr>
            <xsl:for-each select="agrotech/finca/cultivos/cultivo">
                <tr>
                    <td><xsl:value-of select="../../@nombre"/></td>
                    <td><xsl:value-of select="@codigo"/></td>
                    <td><xsl:value-of select="nombre"/></td>
                    <td><xsl:value-of select="tipo"/></td>
                    <td><xsl:value-of select="superficie"/></td>
                    <td><xsl:value-of select="@temporada"/></td>
                    <td><xsl:value-of select="estado"/></td>
                    <!-- aqui elije que poner segun el "estado" del cultivo leido en el xml-->
                    <xsl:choose>
                        <!-- PRIMERA OPCION -->
                        <xsl:when test="riesgo='bajo'">
                            <td style="color: green;">&#9660;</td>
                        </xsl:when>

                        <!-- SEGUNDA OPCION -->
                        <xsl:when test="riesgo='medio'">
                            <td  style="color: orange;">=</td>
                        </xsl:when>

                        <!-- TERCERA OPCION -->
                        <xsl:when test="riesgo='alto'">
                            <td  style="color: red;">&#9650;</td>
                        </xsl:when>

                        <!-- el When necesita Otherwise para cualquiero otro dato -->
                         <xsl:otherwise>
                            <td>Sin Datos</td>
                         </xsl:otherwise>
                    </xsl:choose>

                    <td><xsl:value-of select="estado"/></td>
                </tr>
            </xsl:for-each>
        </table>
    </section>

        <!-- EJERCICIO 8 9 y 10 -->
    <section id="E08">
        <h3>Listado de sensores por cultivo</h3>

        <table>
            <tr>
                <th>Cultivo</th>
                <th>Sensor</th>
                <th>Tipo Sensor</th>
                <th>Lectura</th>
                <th>Unidad</th>
                <th>Fecha lectura</th>
                <th>Activo</th>
            </tr>
            <xsl:for-each select="agrotech/finca/cultivos/cultivo">
                <tr>
                    <td><xsl:value-of select="nombre"/></td>
                    <td><xsl:value-of select="sensor/@id"/></td>
                    <td><xsl:value-of select="sensor/tipoSensor"/></td>
                    <td><xsl:value-of select="sensor/lectura"/></td>
                    <td><xsl:value-of select="sensor/lectura/@unidad"/></td>
                    <td><xsl:value-of select="sensor/fechaLectura"/></td>

                    <!-- No se rellena directo, primero comprueba el dato y luego coloca un dato interpretado. -->
                    <xsl:choose>
                        <xsl:when test="sensor/@activo='true'">
                            <td style="background-color: green; color: white;">Sí</td>
                        </xsl:when>
                        <xsl:otherwise>
                            <td style="background-color: red; color: white;">No</td>
                        </xsl:otherwise>
                    </xsl:choose>

                
                
                </tr>
            </xsl:for-each>
        </table>

    </section>

            <!-- EJERCICIO 11 -->
    <section id="E11">
        <h3>Listado de sensores por cultivo ORDENADO ALFABETICAMENTE</h3>

        <table>
            <tr>
                <th>Cultivo</th>
                <th>Sensor</th>
                <th>Tipo Sensor</th>
                <th>Lectura</th>
                <th>Unidad</th>
                <th>Fecha lectura</th>
                <th>Activo</th>
            </tr>
            <xsl:for-each select="agrotech/finca/cultivos/cultivo">
                <xsl:sort select="nombre"/>
                <tr>
                    <td><xsl:value-of select="nombre"/></td>
                    <td><xsl:value-of select="sensor/@id"/></td>
                    <td><xsl:value-of select="sensor/tipoSensor"/></td>
                    <td><xsl:value-of select="sensor/lectura"/></td>
                    <td><xsl:value-of select="sensor/lectura/@unidad"/></td>
                    <td><xsl:value-of select="sensor/fechaLectura"/></td>

                    <!-- No se rellena directo, primero comprueba el dato y luego coloca un dato interpretado. -->
                    <xsl:choose>
                        <xsl:when test="sensor/@activo='true'">
                            <td style="background-color: green; color: white;">Sí</td>
                        </xsl:when>
                        <xsl:otherwise>
                            <td style="background-color: red; color: white;">No</td>
                        </xsl:otherwise>
                    </xsl:choose>

                
                
                </tr>
            </xsl:for-each>
        </table>

    </section>

    <!-- EJERCICIO 12 -->
    <section id="E12">
        <h3>Listado Ordenador por Superficie Mayor a Menor</h3>
        <table>
            <tr>
                <th>Cultivo</th>
                <th>Tipo</th>
                <th>Superficie</th>
                <th>Finca</th>
            </tr>
            <xsl:for-each select="agrotech/finca/cultivos/cultivo">
                <xsl:sort select="superficie"  data-type="number" order="descending"/>
                <tr>
                    <td><xsl:value-of select="nombre"/></td>
                    <td><xsl:value-of select="tipo"/></td>
                    <td><xsl:value-of select="superficie"/></td>
                    <td><xsl:value-of select="../../@nombre"/></td>
                </tr>
            </xsl:for-each>
        </table>

    </section>

    <!-- EJERCICIO 13 -->
    <section id="E13">
        <h3>Ejercicio de filtrado de datos</h3>
        <table>
            <tr>
                <th>Cultivo</th>
                <th>Finca</th>
                <th>Riesgo</th>
            </tr>
            <xsl:for-each select="agrotech/finca/cultivos/cultivo[riesgo='alto']">
                <tr>
                <td><xsl:value-of select="nombre"/></td>
                <td><xsl:value-of select="../../@nombre"/></td>
                <td><xsl:value-of select="riesgo"/></td>
                </tr>
            </xsl:for-each>

        </table>
    </section>

        <!-- EJERCICIO 14 -->
    <section id="E14">
        <h3>Ejercicio de filtrado de datos</h3>
        <table>
            <tr>
                <th>Cultivo</th>
                <th>Finca</th>
                <th>Estado</th>
            </tr>
            <xsl:for-each select="agrotech/finca/cultivos/cultivo[estado!='activo']">
                <tr>
                <td><xsl:value-of select="nombre"/></td>
                <td><xsl:value-of select="../../@nombre"/></td>
                <td><xsl:value-of select="estado"/></td>
                </tr>
            </xsl:for-each>

        </table>
    </section>

       <!-- EJERCICIO 15X -->
    <section id="E15">
        <h3>Contar elementos de nuestro xml.</h3>
        <p>Total de Fincas: <xsl:value-of select="count(agrotech/finca)"/></p>
        <p>Total de Cultivos: <xsl:value-of select="count(agrotech/finca/cultivos/cultivo)"/></p>
        <p>Sensores Activos: <xsl:value-of select="count(agrotech/finca/cultivos/cultivo/sensor[@activo = 'true'])"/></p>
        <p>Sensores Desactivados:  <xsl:value-of select="count(agrotech/finca/cultivos/cultivo/sensor[@activo = 'false'])"/></p>
    </section>

    <!-- EJERCICIO 16 -->
    <section id="E16">
        <h3>Resumen de Fincas</h3>
        <table>
            <tr>
                <th>Finca</th>
                <th>Zona</th>
                <th>Nº Cultivos</th>
            </tr>
            <xsl:for-each select="agrotech/finca">
                <tr>
                    <td><xsl:value-of select="@nombre"/></td>
                    <td><xsl:value-of select="@zona"/></td>
                    <td><xsl:value-of select="count(cultivos/cultivo)"/></td>
                </tr>
            </xsl:for-each>
        </table>

    </section>

    <!-- EJERCICIO 17 -->
    <section id="E17">
        <h3>Ejercicio con erroes</h3>
        <p><xsl:value-of select="agrotech/finca/@zona"/></p>
    </section>


    <!-- EJERCICIO X 
    <section id="E0X">

    </section>-->


</body>
</html>

    </xsl:template>
</xsl:stylesheet>