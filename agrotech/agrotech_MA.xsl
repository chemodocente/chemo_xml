<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html >
            <head>
                <title>Agrotech</title>
                <style>

                    th {
                    border: 3px solid black;
                    color: blue;
                    background: beige;
                    }

                    table {
                    
                    font-family: Calibri;
                    font-size: 16 px;
                    text-align:center;
                    border: 3px solid black;

                    }

                </style>
            </head>
            <body>
                <h1>AgroData Solutions</h1>
                <h2>Tabla de cultivos</h2>
                <hr/>

                <table border="1" cellspadding="0" cellspacing="3px" width="80%">
                   
                    <tr> <!-- Primera fila con Titulos estos textos los tengo que meter yo -->
                      
                        <th>Id</th>
                        <th>Nombre</th>
                        <th>Tipo</th>
                        <th>Superficie</th>
                        <th>Fecha Siembra</th>
                        <th>Estado</th>
                    </tr>
                 
                    <!-- Las siguientes filas deben rellenarse con la informacion 
                     que encontramos en el archivo XML *** POR CADA UNO *** de los elementos
                     llamados "cultivo" y con esos datos rellenamos las table data (td) -->
                        
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

                <h3>MEMORIA EXPLICATIVA:</h3>
                <p>Primero he creado el DTD en un documento independiente y lo he enlazado con el XML, después he hecho la validación XSD en otro documento y lo he enlazado al archivo XML.<br/> 
                A continuación, he creado el archivo XSL y lo he enlazado también al archivo XML, he comprobado que los cambios se ven en el navegador.<br/>
                Y por último, he creado el archivo HTML y he copiado el código pinchando en el segundo botón en inspeccionar y lo he pegado en el documento.</p>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>