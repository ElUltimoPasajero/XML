<?xml version="1.0" encoding="UTF-8"?>


<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/> 8 -- s
    /omize transformation rules 
         syntax recommendation http://www.w3.org/TR/xslt 
    -->
    <xsl:template match="/">
        <html>
            <head>
                
           <title>SimulacroExamen.xsl</title>
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
                    
                   
                
                    
                    }
                    tr.top td{
                    background-color:yellow;
                    
                    
                    }
                
</style>
            </head>
            <body>
                <xsl:for-each select="/clase/alumnos/alumno">
                <h1><xsl:value-of select="nombre"/></h1>
                
                <h1><xsl:value-of select="apellidos"/></h1>
                
                <h2> <xsl:value-of select="dni"/> </h2>
                
                <table>
                    <tr>
                        <th>Nombre de Modulo</th>
                        <th>Calificaciones</th>
                    </tr>
                   <xsl:for-each select="modulos/modulo">
                    <tr>
                        <td><xsl:value-of select="nombre_mod"/></td>
                        <td><xsl:value-of select="calificacion"/></td>
                    </tr>
                    
                    </xsl:for-each>
                </table>
                </xsl:for-each>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
