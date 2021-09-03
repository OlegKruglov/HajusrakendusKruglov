<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
>
  <xsl:output method="html" encoding="utf-8" indent="yes"/>

  <xsl:template match="/">

    Auto registrinumber:
    <xsl:for-each select="registrid/registr/autonumber">
    <li>
      <xsl:value-of select="."/>
    </li>
  </xsl:for-each>
    <br></br>
    Auto registrinumber numbrid:

  </xsl:template>
</xsl:stylesheet>
