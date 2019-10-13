<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
    <div class="dich-vu-chung-toi">
        <section class="dichvu"> 
					<div class="dichvu-wrapper"> 
						<div class="container"> 
							<h1 class="title-h1"><xsl:value-of disable-output-escaping="yes" select="/NewsList/ZoneTitle"></xsl:value-of></h1>
							<div class="row"> 
								<xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
							</div>
						</div>
					</div>
				</section>
                </div>
    </xsl:template>
    <xsl:template match="News">
        <div class="col-6 col-lg-3">
                <a>
                <xsl:attribute name="href">
                    <xsl:value-of select="Url"></xsl:value-of>
                </xsl:attribute>
                <xsl:attribute name="title">
                    <xsl:value-of select="Title"></xsl:value-of>
                </xsl:attribute>
                <figure>
                <img class="lazy">
                <xsl:attribute name="data-src">
                    <xsl:value-of select="ImageUrl"></xsl:value-of>
                </xsl:attribute>
                <xsl:attribute name="alt">
                    <xsl:value-of select="Title"></xsl:value-of>
                </xsl:attribute>
                </img>
                
                    <figcaption>
                        <p><xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of></p>
                    </figcaption>
                </figure>
                </a>
            </div>
    </xsl:template>
</xsl:stylesheet>