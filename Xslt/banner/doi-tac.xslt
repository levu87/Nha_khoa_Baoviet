<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <section class="partners-section"> 
				<div class="container"> 
					<h1 class="title-h1"><xsl:value-of disable-output-escaping="yes" select="/BannerList/Title"></xsl:value-of></h1>
					<div class="partners-wrapper">
						<div class="swiper-container"> 
							<div class="swiper-wrapper"> 
								<xsl:apply-templates select="/BannerList/Banner"></xsl:apply-templates>
							</div>
						</div>
						<div class="partners-btn-next"><em class="mdi mdi-chevron-right"></em></div>
						<div class="partners-btn-prev"><em class="mdi mdi-chevron-left"></em></div>
					</div>
				</div>
			</section>
    </xsl:template>
    <xsl:template match="Banner">
        <div class="swiper-slide"> 
            <div class="img">
                <img class="lazy">
                <xsl:attribute name="data-src">
                    <xsl:value-of select="ImageUrl"></xsl:value-of>
                </xsl:attribute>
                <xsl:attribute name="alt">
                    <xsl:value-of select="Title"></xsl:value-of>
                </xsl:attribute>
                </img>
            </div>
        </div>
        
    </xsl:template>
</xsl:stylesheet>