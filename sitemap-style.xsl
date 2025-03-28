<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>
      <head>
        <title>Site Haritası</title>
        <style>
          body {
            font-family: Arial, sans-serif;
            margin: 20px;
            background-color: #f0f0f0;
          }
          h1 {
            color: #2c3e50;
            text-align: center;
            font-size: 28px;
          }
          table {
            width: 90%;
            margin: 20px auto;
            border-collapse: collapse;
            background-color: #fff;
            box-shadow: 0 2px 10px rgba(0,0,0,0.1);
          }
          th, td {
            padding: 12px;
            text-align: left;
            border-bottom: 1px solid #e0e0e0;
          }
          th {
            background-color: #3498db;
            color: white;
            font-weight: bold;
          }
          tr:nth-child(even) {
            background-color: #f9f9f9; /* Çift satırlara farklı renk */
          }
          tr:hover {
            background-color: #ecf0f1; /* Fareyle üzerine gelindiğinde renk */
          }
          a {
            color: #2980b9;
            text-decoration: none;
          }
          a:hover {
            text-decoration: underline;
            color: #e74c3c;
          }
          .priority-high {
            color: #27ae60; /* Yüksek öncelik için yeşil */
            font-weight: bold;
          }
          .priority-low {
            color: #7f8c8d; /* Düşük öncelik için gri */
          }
        </style>
      </head>
      <body>
        <h1>Site Haritası</h1>
        <table>
          <tr>
            <th>URL</th>
            <th>Son Güncelleme</th>
            <th>Değişim Sıklığı</th>
            <th>Öncelik</th>
          </tr>
          <xsl:for-each select="urlset/url">
            <tr>
              <td>
                <a href="{loc}">
                  <xsl:value-of select="loc"/>
                </a>
              </td>
              <td>
                <xsl:value-of select="lastmod"/>
              </td>
              <td>
                <xsl:value-of select="changefreq"/>
              </td>
              <td>
                <xsl:choose>
                  <xsl:when test="priority >= 0.8">
                    <span class="priority-high">
                      <xsl:value-of select="priority"/>
                    </span>
                  </xsl:when>
                  <xsl:otherwise>
                    <span class="priority-low">
                      <xsl:value-of select="priority"/>
                    </span>
                  </xsl:otherwise>
                </xsl:choose>
              </td>
            </tr>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
