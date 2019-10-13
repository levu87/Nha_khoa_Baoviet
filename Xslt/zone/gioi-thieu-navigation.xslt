<?xml version="1.0" encoding="utf-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">

		<section class="about-us-display">
			<div class="container">
				<div class="about-us-nav">
					<ul>

						<xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
					</ul>
				</div>
			</div>
		</section>
	</xsl:template>
	<xsl:template match="Zone">
		<li>
			<xsl:if test="IsActive='true'">
				<xsl:attribute name="class">
					<xsl:text>active</xsl:text>
				</xsl:attribute>
			</xsl:if>
            <xsl:if test="position() =1">
            <xsl:attribute name="class">
                <xsl:text>active</xsl:text>
            </xsl:attribute>
            </xsl:if>
			<a>
				<xsl:attribute name="href">
					<xsl:text>#section-</xsl:text>
					<xsl:value-of select="position()"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="title">
					<xsl:value-of select="Title"></xsl:value-of>
				</xsl:attribute>
				<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
			</a>
		</li>


	</xsl:template>

</xsl:stylesheet>