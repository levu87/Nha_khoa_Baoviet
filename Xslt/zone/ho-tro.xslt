<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
    </xsl:template>
    <xsl:template match="Zone">
        <li> 
        <a>
        <xsl:if test="IsActive='true'">
                    <xsl:attribute name="class">
                        <xsl:text disable-output-escaping="yes">active</xsl:text>
                    </xsl:attribute>
                </xsl:if>
                <xsl:attribute name="href">
                    <xsl:value-of select="Url"></xsl:value-of>
                </xsl:attribute>
                <xsl:attribute name="title">
                    <xsl:value-of select="Title"></xsl:value-of>
                </xsl:attribute>
                
        <em class="lnr lnr-users"></em><span><xsl:value-of select="Title"></xsl:value-of> </span>
        </a>
        </li>
    </xsl:template>
</xsl:stylesheet>