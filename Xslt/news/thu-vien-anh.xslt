<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <section class="thuvien">
            <div class="container"> 
					<h1 class="title-h1"><xsl:value-of disable-output-escaping="yes" select="/NewsList/ZoneTitle"></xsl:value-of></h1>
            <div class="row gallery-img">
                <xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
            </div>
            </div>
        </section>
    </xsl:template>
    <xsl:template match="News">
        <xsl:if test="position()&gt;0 and position()&lt;11">
            <xsl:if test="position()=1">
                <xsl:text disable-output-escaping='yes'>&lt;div class='col-sm-12 col-lg-6 left' &gt;</xsl:text>
                <xsl:text disable-output-escaping='yes'>&lt;div class='row big' &gt;</xsl:text>
            </xsl:if>
            <xsl:if test="position()=2">
                <xsl:text disable-output-escaping='yes'>&lt;div class='row small' &gt;</xsl:text>
                <xsl:text disable-output-escaping='yes'>&lt;div class='col-6' &gt;</xsl:text>
            </xsl:if>
            <xsl:if test="position()=3">
                <xsl:text disable-output-escaping='yes'>&lt;div class='col-6' &gt;</xsl:text>
            </xsl:if>
            <xsl:if test="position()=4">
                <xsl:text disable-output-escaping='yes'>&lt;div class='col-6' &gt;</xsl:text>
            </xsl:if>
            <xsl:if test="position()=5">
                <xsl:text disable-output-escaping='yes'>&lt;div class='col-6' &gt;</xsl:text>
            </xsl:if>



            <xsl:if test="position()=6">
                <xsl:text disable-output-escaping='yes'>&lt;div class='col-sm-12 col-lg-6 right' &gt;</xsl:text>
                <xsl:text disable-output-escaping='yes'>&lt;div class='row small' &gt;</xsl:text>
                <xsl:text disable-output-escaping='yes'>&lt;div class='col-6' &gt;</xsl:text>
            </xsl:if>
            <xsl:if test="position()=7">
                <xsl:text disable-output-escaping='yes'>&lt;div class='col-6' &gt;</xsl:text>
            </xsl:if>
            <xsl:if test="position()=8">
                <xsl:text disable-output-escaping='yes'>&lt;div class='col-6' &gt;</xsl:text>
            </xsl:if>
            <xsl:if test="position()=9">
                <xsl:text disable-output-escaping='yes'>&lt;div class='col-6' &gt;</xsl:text>
            </xsl:if>
            <xsl:if test="position()=10">
                <xsl:text disable-output-escaping='yes'>&lt;div class='row big' &gt;</xsl:text>
            </xsl:if>

            <div class="item">
                    <a data-fancybox="image">
                        <xsl:attribute name="href">
                            <xsl:value-of select="ImageUrl"></xsl:value-of>
                        </xsl:attribute>
                        <xsl:attribute name="title">
                            <xsl:value-of select="Title"></xsl:value-of>
                        </xsl:attribute>
                        <figure>
                                <div class="button-search" href="#"> <em class="mdi mdi-magnify"></em></div>
                            <div class="image">
                                <img>
                                    <xsl:attribute name="src">
                                        <xsl:value-of select="ImageUrl"></xsl:value-of>
                                    </xsl:attribute>
                                    <xsl:attribute name="alt">
                                        <xsl:value-of select="Title"></xsl:value-of>
                                    </xsl:attribute>
                                </img>
                            </div>
                            <figcaption>
                               
                                <h3><xsl:value-of select="Title"></xsl:value-of></h3>
                            </figcaption>
                        </figure>
                    </a>
                </div>
    

            <xsl:if test="position()=1">
                <xsl:text disable-output-escaping='yes'>&lt;/div&gt;</xsl:text>
            </xsl:if>
            <xsl:if test="position()=2">
                <xsl:text disable-output-escaping='yes'>&lt;/div&gt;</xsl:text>
            </xsl:if>
            <xsl:if test="position()=3">
                <xsl:text disable-output-escaping='yes'>&lt;/div&gt;</xsl:text>
            </xsl:if>
            <xsl:if test="position()=4">
                <xsl:text disable-output-escaping='yes'>&lt;/div&gt;</xsl:text>
            </xsl:if>
            
            <xsl:if test="position()=5">
                <xsl:text disable-output-escaping='yes'>&lt;/div&gt;</xsl:text>
                <xsl:text disable-output-escaping='yes'>&lt;/div&gt;</xsl:text>
                <xsl:text disable-output-escaping='yes'>&lt;/div&gt;</xsl:text>
            </xsl:if>
            <xsl:if test="position()=6">
                <xsl:text disable-output-escaping='yes'>&lt;/div&gt;</xsl:text>
            </xsl:if>
            <xsl:if test="position()=7">
                <xsl:text disable-output-escaping='yes'>&lt;/div&gt;</xsl:text>
            </xsl:if>
            <xsl:if test="position()=8">
                <xsl:text disable-output-escaping='yes'>&lt;/div&gt;</xsl:text>
            </xsl:if>
            <xsl:if test="position()=9">
                <xsl:text disable-output-escaping='yes'>&lt;/div&gt;</xsl:text>
                <xsl:text disable-output-escaping='yes'>&lt;/div&gt;</xsl:text>
            </xsl:if>
            <xsl:if test="position()=10">
                <xsl:text disable-output-escaping='yes'>&lt;/div&gt;</xsl:text>
                <xsl:text disable-output-escaping='yes'>&lt;/div&gt;</xsl:text>
                <xsl:text disable-output-escaping='yes'>&lt;/div&gt;</xsl:text>
            </xsl:if>
        </xsl:if>
    </xsl:template>
</xsl:stylesheet>