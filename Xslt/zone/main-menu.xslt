<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <div class="main-menu">
            <ul>
                <xsl:apply-templates select="/ZoneList/Zone" mode="Parents"></xsl:apply-templates>
            </ul>
        </div>
        
    </xsl:template>
    <xsl:template match="Zone" mode="Parents">
        <li class="has-dropdown">
            <xsl:if test="count(Zone)>0">
                <xsl:attribute name="class">
                    <xsl:text disable-output-escaping="yes">has-dropdown active</xsl:text>
                </xsl:attribute>
            </xsl:if>
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
                <xsl:value-of select="Title"></xsl:value-of>
            </a>
            <ul> 
                <xsl:apply-templates select="Zone" mode="Child"></xsl:apply-templates>
            </ul>
        </li>
    </xsl:template>
    <xsl:template match="Zone" mode="Child">
        <li>
            <a>
                <xsl:attribute name="href">
                    <xsl:value-of select="Url"></xsl:value-of>
                </xsl:attribute>
                <xsl:attribute name="title">
                    <xsl:value-of select="Title"></xsl:value-of>
                </xsl:attribute>
                <xsl:value-of select="Title"></xsl:value-of>
            </a>
        </li>
        <!-- </xsl:if> -->
    </xsl:template>
</xsl:stylesheet>