<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
>
    <xsl:output method="html" encoding="utf-8" indent="yes"/>

  <xsl:template match="/">

    Esimene autonumber:
    <xsl:value-of select="/inimesed/registr[1]/autonumber"/>
    <br></br>
    Последнее имя:
    <xsl:value-of select="/inimesed/registr[last()]/autonumber"/>
    <br></br>
    Esitäht 1. eesnimes:
    <xsl:value-of select="substring(/inimesed/registr[1]/autonumber,1,1)"/>
    <br/>autonumber, Perekonnanimi
    <xsl:value-of select="concat(inimesed/registr[1]/autonumber,',', /inimesed/registr[1]/perenimi)"/>

    <br></br> 1.autonumber Teksti pikkus:
    <xsl:value-of select="string-length(/inimesed/registr[1]/autonumber)"/>

    <br/>Loendame inimeste arv -
    <xsl:value-of select="count(/inimesed/registr)"/>
    <br/>Sündinute=2003 inimeste arv:
    <xsl:value-of select="count(/inimesed/registr[synd=2003])"/>
    <br/>Sündinute>2003 inimeste arv:
    <xsl:value-of select="count(/inimesed/registr[synd&lt;2003])"/>
    <ul>
      Kordused - kõik perenimed nimekirjast
      <br/>
      <xsl:for-each select="inimesed/registr">
        <li>
          <xsl:value-of select="perenimi"/>
        </li>
      </xsl:for-each>
    </ul>

    <ul>
      Kordused - kõik perenimed nimekirjast - variant 2
      <br/>
      <xsl:for-each select="inimesed/registr/perenimi">
        <li>
          <xsl:value-of select="."/>
        </li>
      </xsl:for-each>
    </ul>
    <br/>
    Leia kõik nimed mis algavad A tähega
    <xsl:for-each select="/inimesed/registr[starts-with(autonumber, 'A')]">
      <xsl:sort select="synd" order="descending"/>
      <xsl:value-of select="concat(perenimi, ', ', synd)"/>
    <xsl:text></xsl:text>
    </xsl:for-each>

  </xsl:template>
</xsl:stylesheet>
