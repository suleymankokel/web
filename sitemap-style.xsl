<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>
      <head>
        <title>Site Haritası</title>
        <style>
          body { 
            font-family: Arial, sans-serif; 
            background-color: #f5f5f5; 
            margin: 20px; 
          }
          h1 { 
            color: #333; 
            text-align: center; 
            padding-bottom: 10px; 
          }
          table { 
            width: 100%; 
            border-collapse: collapse; 
            background-color: #fff; 
            box-shadow: 0 2px 5px rgba(0,0,0,0.1); 
          }
          th, td { 
            padding: 12px; 
            text-align: left; 
            border-bottom: 1px solid #ddd; 
          }
          th { 
            background-color: #4CAF50; 
            color: white; 
            font-weight: bold; 
          }
          tr:hover { 
            background-color: #f1f1f1; 
            transition: background-color 0.3s; 
          }
          a { 
            color: #0066cc; 
            text-decoration: none; 
          }
          a:hover { 
            color: #003366; 
            text-decoration: underline; 
          }
        </style>
      </head>
      <body>
        <h1>Site Haritası</h1>
        <table>
          <tr>
            <th>URL</th>
          </tr>
          <xsl:for-each select="urlset/url">
            <tr>
              <td><a href="{loc}"><xsl:value-of select="loc"/></a></td>
            </tr>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
