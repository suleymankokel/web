<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>
      <head>
        <!-- Sayfa başlığı -->
        <title>Site Haritası</title>
        <!-- Stil tanımlamaları -->
        <style>
          body {
            font-family: Arial, sans-serif; /* Yazı tipi */
            margin: 20px; /* Kenar boşluğu */
            background-color: #f9f9f9; /* Arka plan rengi */
          }
          h1 {
            color: #333; /* Başlık rengi */
            text-align: center; /* Başlığı ortala */
          }
          table {
            width: 80%; /* Tablo genişliği */
            margin: 0 auto; /* Tabloyu ortala */
            border-collapse: collapse; /* Kenarlık birleştirme */
            background-color: #fff; /* Tablo arka plan rengi */
            box-shadow: 0 0 10px rgba(0,0,0,0.1); /* Hafif gölge efekti */
          }
          th, td {
            padding: 12px; /* Hücre iç boşluğu */
            text-align: left; /* Metni sola hizala */
            border-bottom: 1px solid #ddd; /* Alt kenarlık */
          }
          th {
            background-color: #4CAF50; /* Başlık arka plan rengi */
            color: white; /* Başlık yazı rengi */
          }
          tr:hover {
            background-color: #f5f5f5; /* Fareyle üzerine gelindiğinde renk değişimi */
          }
          a {
            color: #0066cc; /* Bağlantı rengi */
            text-decoration: none; /* Alt çizgiyi kaldır */
          }
          a:hover {
            text-decoration: underline; /* Fareyle üzerine gelindiğinde alt çizgi ekle */
          }
        </style>
      </head>
      <body>
        <!-- Ana başlık -->
        <h1>Site Haritası</h1>
        <!-- URL'leri listeleyen tablo -->
        <table>
          <tr>
            <th>URL</th> <!-- Tablo başlığı -->
          </tr>
          <!-- XML'deki her URL için bir satır oluştur -->
          <xsl:for-each select="urlset/url">
            <tr>
              <td>
                <a href="{loc}">
                  <xsl:value-of select="loc"/>
                </a>
              </td>
            </tr>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
