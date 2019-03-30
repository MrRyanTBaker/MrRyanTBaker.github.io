<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

<xsl:output method="html" />    

<xsl:template match="/">

    <html>
        <head>
            <link rel="stylesheet" href="style.css"></link>
            <title>IoT Content Table</title>
        </head>
        <body>
            <h1>Contents</h1>
                        
            <table>
                
                <xsl:for-each select="//unit[@order='1']">
                <tr>
                    <td><xsl:value-of select="numeral"/></td>
                    <td><xsl:value-of select="title"/></td>
                    <td><xsl:value-of select="start"/></td>
                </tr>
                </xsl:for-each>   
                <xsl:for-each select="//sections[@group='1']/chapter">
                <tr>
                        <td><xsl:value-of select="number"/></td>
                        <td><xsl:value-of select="name"/></td> 
                        <td><xsl:value-of select="page"/></td>
                </tr>    
                </xsl:for-each>
                
                
                <xsl:for-each select="//unit[@order='2']">
                    <tr>
                        <td><xsl:value-of select="numeral"/></td>
                        <td><xsl:value-of select="title"/></td>
                        <td><xsl:value-of select="start"/></td>
                    </tr>
                </xsl:for-each>   
                <xsl:for-each select="//sections[@group='2']/chapter">
                    <tr>
                        <td><xsl:value-of select="number"/></td>
                        <td><xsl:value-of select="name"/></td> 
                        <td><xsl:value-of select="page"/></td>
                    </tr>    
                </xsl:for-each>
                
                
                <xsl:for-each select="//unit[@order='3']">
                    <tr>
                        <td><xsl:value-of select="numeral"/></td>
                        <td><xsl:value-of select="title"/></td>
                        <td><xsl:value-of select="start"/></td>
                    </tr>
                </xsl:for-each>   
                <xsl:for-each select="//sections[@group='3']/chapter">
                    <tr>
                        <td><xsl:value-of select="number"/></td>
                        <td><xsl:value-of select="name"/></td> 
                        <td><xsl:value-of select="page"/></td>
                    </tr>    
                </xsl:for-each>
                
                
                <xsl:for-each select="//unit[@order='4']">
                    <tr>
                        <td><xsl:value-of select="numeral"/></td>
                        <td><xsl:value-of select="title"/></td>
                        <td><xsl:value-of select="start"/></td>
                    </tr>
                </xsl:for-each>   
                <xsl:for-each select="//sections[@group='4']/chapter">
                    <tr>
                        <td><xsl:value-of select="number"/></td>
                        <td><xsl:value-of select="name"/></td> 
                        <td><xsl:value-of select="page"/></td>
                    </tr>    
                </xsl:for-each>
             </table>
            
        </body>
    </html>
    
</xsl:template>    
</xsl:stylesheet>