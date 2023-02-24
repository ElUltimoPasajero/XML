<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : SongListXSL.xsl
    Created on : 15 de febrero de 2023, 10:52
    Author     : MiguelManuelNavasLóp
    Description:
        Purpose of transformation follows.
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>
    <xsl:strip-space elements="*" />
    

    <!-- TODO customize transformation rules 
         syntax recommendation http://www.w3.org/TR/xslt 
    -->
    <xsl:template match="/songlist">
        <html>
            <head>
                <title>SongListXSL.xsl</title>
                <style>
                    table{
                    
                    border-collapse:collapse;
                    border:solid;
                    }
                    
                    table tr th{
                    
                    color:white;
                    border: solid;
                    border-color:black;
                    background-color:black;
                    padding: lem;
                   
                    
                    }
                    
                    table tr td{ 
                    
                    padding: 1em;
                    border: solid;
                    border-color:black;
                  
                    
                    }
                    
                    body{
                    display:flex;
                    flex-direction: column;
                    align-items:center;
                    
                    
                    
                    }
                    
                    h1{
                    margin : 2em;
                    
                    }
                    p{
                    text-align: center;
                    
                    
                    }
                    tr.top td{
                    background-color:yellow;
                    
                    
                    }
                </style>
            </head>
            <body>
                <h1>Listado de canciones</h1>
                <h3>
                    <xsl:value-of select="/songlist/song[artist='The Beatles']" />
                </h3>
                <table>
                    <tr>
                        <th>Titulo</th>
                        <th>Disco</th>
                        <th>Cantante</th>
                        <th>Escritor</th>
                        <th>Productor</th>
                        <th>Fecha</th>
                        <th>Racha</th>
                        <th>Posicion</th>
              
                    </tr>
                    
                    <xsl:apply-templates select="/songlist/song"/>
                    
                    
         
                </table>
                <p>Create whit amor </p>
            </body>
        </html>
    </xsl:template>
    <xsl:template match="song">
           <tr>
                            <xsl:if test="(position='No. 1') or (position=' No. 1')">
                                
                                <xsl:attribute name="class">top</xsl:attribute>
                            </xsl:if>
                            <td>
                                <xsl:value-of select="title"></xsl:value-of>
                            </td>
                            <td>
                                <xsl:value-of select="appears"></xsl:value-of>
                            </td>
                            <td>
                                <xsl:value-of select="artist"></xsl:value-of>
                            </td>
                            <td>
                                <xsl:value-of select="writers"></xsl:value-of>
                            </td>
                            <td>
                                <xsl:value-of select="producer"></xsl:value-of>
                            </td>
                            <td>
                                <xsl:value-of select="released"></xsl:value-of>
                            </td>
                            <td>
                                <xsl:value-of select="streak"></xsl:value-of>
                            </td>
                            <td>
                                <xsl:value-of select="position"></xsl:value-of>
                            </td>
                        </tr>
        
    </xsl:template>
</xsl:stylesheet>
