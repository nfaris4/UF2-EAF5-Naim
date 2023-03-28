<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html lang="es">
            <body>
                <xsl:for-each select=" cartelera/recinto">
                    <h1>
                        <xsl:value-of select="@value" />
                    </h1>

                    <h3>
                        <xsl:value-of select="address"/>
                        <xsl:value-of select="postcode"/>
                        <xsl:value-of select="city"/>
                    </h3>
                    
                    <xsl:for-each select="evento">
                        <xsl:for-each select="titulo">
                            <h2>
                                <xsl:value-of select="@value" />
                            </h2>
                        </xsl:for-each>
                    
                    </xsl:for-each>
                </xsl:for-each>

            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
