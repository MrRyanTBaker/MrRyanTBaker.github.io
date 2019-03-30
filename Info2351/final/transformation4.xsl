<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    
    <xsl:output method="html" />    
    
    <xsl:template match="/">
        
        <html>
            
            <head>
                <link rel="stylesheet" ref="stylesheet.css" type="text/css" />
                <link rel="stylesheet" href="print.css" media="print" />
                <title>Aquisition</title>
                    <style type="text/css">
                    body {background-image: url(zebra.jpg);
                    margin: 0;
                    background-repeat: no-repeat;
                    background-size: cover;
                    background-position: center;
                    }
                    nav {font-family: "Lucida Console", Monaco, monospace;
	                color: #000000;
	                padding-top: 20px;
	                padding-bottom: 20px;
	                text-align: center;
                    }
                    main {margin: 2% 40px 2% 40px;
                    padding: 30px 5px 30px 5px;
                    border: 2px solid black;
                    border-radius: 20px;
                    background-color: #ff9999;	
                    background-image: linear-gradient(to bottom, #4d79ff, #ccd9ff); 
                    background-repeat: no-repeat;		
                    }
                    nav a {border: 1px solid black;
                    border-radius: 3px;
                    margin-left: 3px;
                    margin-right: 3px;
                    margin-bottom: 3px;
                    margin-top: 3px;
                    background-color: tomato;
                    }
                    a:link {display: inline-block;
                    text-decoration: none;
                    color: black;
                    padding-left: 5%;
                    padding-right: 5%;}
                    a:active {color: #eaeaea;}
                    a:visited {text-decoration: none;
                    color: #000000;}
                    a:hover {color: #33ffff;}
                    table {margin: auto;
                    }
                    </style>
            </head>
            
            <body>
                       
            <main>
            
                <h1 style="text-align:center">How to Aquire New Listening Materials</h1>
                
                <nav>
                    <a href="home.html">Home</a>
                    <a href="Language1.xml">Recent</a>
                    <a href="Language2.xml">Waiting</a>
                    <a href="Language3.xml">Podcasts</a>
                    <a href="Language4.xml">Discovering</a>
                    <a href="contact.html">Contact</a>
                </nav>
                     
                <table border="1">
                    <tr bgcolor="green">
                        <th>Company</th>
                        <th>Method of Delivery</th>
                        <th>Content</th>
                        <th>Automatic Renewal</th>
                        <th>Affordability</th>
                    </tr>    
                    <xsl:for-each select="/collection/aquisition/audio">
                        <tr>
                            <td style="text-align:center"><xsl:value-of select="company"/></td>
                            <td style="text-align:center"><xsl:value-of select="method"/></td>
                            <td style="text-align:center"><xsl:value-of select="content"/></td>
                            <td style="text-align:center"><xsl:value-of select="automatic"/></td>
                            <td style="text-align:center"><xsl:value-of select="affordability"/></td>
                        </tr>
                    </xsl:for-each>
                </table>
            
            </main>
                
            </body>
            
            <footer>
                <p>Created By: <a href="mailto:rbaker64@mail.mccneb.edu">Ryan Baker</a></p>
            </footer>
            
        </html>       
        
    </xsl:template>
    
</xsl:stylesheet>