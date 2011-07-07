<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:fo="http://www.w3.org/1999/XSL/Format">

  <xsl:strip-space elements="*"/>
  <xsl:preserve-space elements="pre"/>
  
  <xsl:template match="day|reading|illustration">
    <xsl:call-template name="div"/>
  </xsl:template>

  <xsl:template match="mass">
    <fo:block>
      <xsl:apply-templates select="name"/>
      <xsl:apply-templates select="time"/>
      <xsl:apply-templates select="day"/>
      <xsl:apply-templates select="reading"/>
    </fo:block>
  </xsl:template>

  <xsl:template match="coordinates|name2|date|daterule|cycle|category|readingtype|readingreference|title|artist|passagereference|contexturl|year|location|copyright|time">
    <fo:block>
      <xsl:call-template name="para"/>
    </fo:block>
  </xsl:template>
  
  <xsl:template match="mass/name">
    <fo:block>
      <xsl:call-template name="h1"/>
    </fo:block>
  </xsl:template>

  <xsl:template match="day/name">
    <fo:block>
      <xsl:call-template name="h2"/>
    </fo:block>
  </xsl:template>

  <xsl:template match="day/name">
    <fo:block>
      <xsl:call-template name="h3"/>
    </fo:block>
  </xsl:template>

  <xsl:template match="passage">
    <fo:block>
      <xsl:call-template name="para"/>
    </fo:block>
  </xsl:template>

  <xsl:template match="url">
    <fo:block>
      <xsl:call-template name="para"/>
      <xsl:call-template name="image.block">
        <xsl:with-param name="url" select="."/>
        <xsl:with-param name="height" select="50"/>
        <xsl:with-param name="width" select="50"/>
      </xsl:call-template>
    </fo:block>
  </xsl:template>

</xsl:stylesheet>
