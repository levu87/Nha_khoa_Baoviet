<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <h1 class="title-h1"><xsl:value-of disable-output-escaping="yes" select="/NewsList/ModuleTitle"></xsl:value-of></h1>
            <div class="list-question">
                <ul>
                    <xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
                </ul>
            </div>
    </xsl:template>
    <xsl:template match="News">
        <li class="accordion-title">
            <p><xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of></p>
            <ul class="accordion-content">
                <xsl:value-of disable-output-escaping="yes" select="FullContent"></xsl:value-of>
            </ul>
        </li>
    </xsl:template>
</xsl:stylesheet>