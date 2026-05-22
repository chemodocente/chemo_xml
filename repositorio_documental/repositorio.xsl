<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">

        <html>
            <head>
                <title>Repositorio Documental</title>
                <style>
                    .tarjeta {
                        border: 1px solid blue;
                        border-radius: 16px;
                        padding: 24px;
                        margin: 8px;
                        background-color: #ccc;
                    }

                    .tarjeta:hover {
                        background-color: #eee;
                    }

                </style>
            </head>
            <body>
                <h1>Repositorio Documental</h1>
                <h2>Practica de Chemo</h2>

   
                    <xsl:for-each select="repositorio/documento">             
                        <article class="tarjeta">
                            <h3><xsl:value-of select="metadatos/titulo"/></h3>
                            <h4><xsl:value-of select="metadatos/autor"/></h4>
                            <p><xsl:value-of select="contenido/resumen"/></p>
                            <p><xsl:value-of select="contenido/categoria"/></p>
                            <p><xsl:value-of select="contenido/etiquetas"/></p>
                            <p><xsl:value-of select="contenido/formato"/></p>
                            <a href="{contenido/url}">DESCARGAR:&#160;<xsl:value-of select="metadatos/titulo"/></a>
                        </article>
                    </xsl:for-each>
                

            </body>
        </html>



    </xsl:template>
</xsl:stylesheet>