<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    
    <xsl:output method="html" />    
    
    <xsl:template match="/">
        
        <html>
            
            <head>
                <link rel="stylesheet" ref="stylesheet.css" type="text/css" />
                <link rel="stylesheet" href="print.css" media="print" />
                <title>Wait Listed Albums</title>
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
                
                <h1 style="text-align:center">Waiting to Receive</h1>
                
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
                        <th>Album Title</th>
                        <th>Recording Artist</th>
                        <th>Genre</th>
                        <th>Year Released</th>
                        <th>Number of Tracks</th>
                    </tr>    
                    <xsl:for-each select="/collection/waiting/album">
                        <tr>
                            <td style="text-align:center"><xsl:value-of select="title"/></td>
                            <td style="text-align:center"><xsl:value-of select="artist"/></td>
                            <td style="text-align:center"><xsl:value-of select="genre"/></td>
                            <td style="text-align:center"><xsl:value-of select="year"/></td>
                            <td style="text-align:center"><xsl:value-of select="tracks"/></td>
                        </tr>
                        <tr>
                            <th>Description:</th>
                            <td><xsl:value-of select="description"/></td>
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