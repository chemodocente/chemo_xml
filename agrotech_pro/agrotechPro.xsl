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
</head>
<body>

<!-- EJERCICIO 1 -->
    <section id="E01">
        <h1><xsl:value-of select="agrotech/@empresa"/></h1>
        <h2>Ciudad: <xsl:value-of select="agrotech/@ciudad"/></h2>
        <h2>Versión: <xsl:value-of select="agrotech/@version"/></h2>
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

    </section>


    <!-- EJERCICIO 6 -->
    <section id="E06">

    </section>
</body>
</html>

    </xsl:template>
</xsl:stylesheet>