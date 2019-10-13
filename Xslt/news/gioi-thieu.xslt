<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes" />
    <xsl:template match="/">
        <xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
    </xsl:template>
    <xsl:template match="Zone">
        <xsl:if test="position() = 1">
            <section class="about-section" id="section-1">
                <div class="row">
                    <xsl:apply-templates select="News" mode="mode1"></xsl:apply-templates>
                </div>
            </section>
        </xsl:if>
        <xsl:if test="position()= 2">
            <section class="history-section" id="section-2">
                <div class="container">
                    <h1 class="title-h1">
                        <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                    </h1>
                    <div class="history-wrapper">
                        <xsl:apply-templates select="News" mode="mode2-1"></xsl:apply-templates>
                        <xsl:apply-templates select="News" mode="mode2-2"></xsl:apply-templates>
                        <xsl:apply-templates select="News" mode="mode2-3"></xsl:apply-templates>
                    </div>
                </div>
            </section>
        </xsl:if>
        <xsl:if test="position()= 3">
            <section class="su-menh-section" id="section-3">
                <div class="container">
                    <h1 class="title-h1">
                        <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                    </h1>
                    <xsl:apply-templates select="News" mode="mode3"></xsl:apply-templates>
                </div>
            </section>
        </xsl:if>
        <xsl:if test="position()= 4">
            <section class="prize-section">
                <div class="container">
                    <h1 class="title-h1">
                        <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                    </h1>
                    <div class="prize-wrapper">
                        <div class="swiper-container">
                            <div class="swiper-wrapper">
                                <xsl:apply-templates select="News" mode="Slide4"></xsl:apply-templates>
                            </div>
                        </div>
                        <div class="prize-btn-next"><em class="mdi mdi-chevron-right"></em></div>
                        <div class="prize-btn-prev"><em class="mdi mdi-chevron-left"></em></div>
                    </div>
                </div>
            </section>

        </xsl:if>
        <xsl:if test="position()= 5">
            <section class="doi-ngu-section">
                <div class="container">
                        <h1 class="title-h1"><xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of></h1>
                        <div class="row banner"><img class="lazy">
                        <xsl:attribute name="data-src">
                            <xsl:value-of select="ImageUrl"></xsl:value-of>
                        </xsl:attribute>
                        <xsl:attribute name="alt">
                            <xsl:value-of select="Title"></xsl:value-of>
                        </xsl:attribute>
                        </img></div>
                        <div class="row">
                    <xsl:apply-templates select="News" mode="mode5"></xsl:apply-templates></div>
                </div>
            </section>

        </xsl:if>
        <xsl:if test="position()=6">
            <section class="may-moc-section">
                <div class="container">
                    <h1 class="title-h1">
                        <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                    </h1>
                    <div class="wrapper">
                        <div class="row">
                            <div class="col-lg-6">
                                <div class="content">
                                    <xsl:apply-templates select="News" mode="mode6"></xsl:apply-templates>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="may-moc-top-wrapper">
                                    <div class="swiper-container">
                                        <div class="swiper-wrapper">

                                            <xsl:apply-templates select="News" mode="slide6-top"></xsl:apply-templates>
                                        </div>
                                    </div>
                                </div>
                                <div class="may-moc-thumbs-wrapper">
                                    <div class="swiper-container">
                                        <div class="swiper-wrapper">
                                            <xsl:apply-templates select="News" mode="slide6-thumbs">
                                            </xsl:apply-templates>
                                        </div>
                                    </div>
                                    <div class="swiper-btn-next"><em class="mdi mdi-chevron-right"></em></div>
                                    <div class="swiper-btn-prev"><em class="mdi mdi-chevron-left"></em></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </xsl:if>
    </xsl:template>
    <xsl:template match="News" mode="mode1">
        <div class="col-lg-6">
            <div class="swiper-container">
                <div class="swiper-wrapper">
                        <xsl:apply-templates select="NewsImages" mode="Slide"></xsl:apply-templates>
                </div>
                <div class="about-btn-next"> <em class="mdi mdi-chevron-right"></em></div>
                <div class="about-btn-prev"> <em class="mdi mdi-chevron-left"></em></div>
            </div>
        </div>
        <div class="col-lg-6">
            <div class="content">
                <h3>
                    <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                </h3>
                <xsl:value-of disable-output-escaping="yes" select="FullContent"></xsl:value-of>
            </div>
        </div>
    </xsl:template>
    <xsl:template match="News" mode="mode2-1">

        <div class="tab-img">
            <div class="img"> <img class="lazy">
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
    <xsl:template match="News" mode="mode2-2">
        <div class="tab-navigation">
            <div class="swiper-container">
                <div class="swiper-wrapper">
                    <div class="swiper-slide">
                        <a class="date active" href="javascript:void(0)" data-type="tab-1">
                            <xsl:if test="position() =1">
                                <xsl:attribute name="class">
                                    <xsl:text>active</xsl:text>
                                </xsl:attribute>
                            </xsl:if>
                            <xsl:if test="IsActive='true'">
                                <xsl:attribute name="class">
                                    <xsl:text>active</xsl:text>
                                </xsl:attribute>
                            </xsl:if>
                            <xsl:attribute name="data-tab">
                                <xsl:text>tab-</xsl:text>
                                <xsl:value-of select="position()"></xsl:value-of>
                            </xsl:attribute>
                            <xsl:attribute name="title">
                                <xsl:value-of select="Title"></xsl:value-of>
                            </xsl:attribute>
                            <h4>
                                <xsl:value-of disable-output-escaping="yes" select="Title">
                                </xsl:value-of>
                            </h4>
                        </a>
                    </div>
                </div>
                <div class="history-btn-next"> <em class="lnr lnr-arrow-right"></em></div>
                <div class="history-btn-prev"> <em class="lnr lnr-arrow-left"></em></div>
            </div>
        </div>
    </xsl:template>
    <xsl:template match="News" mode="mode2-3">
        <div class="tab-content">
            <xsl:if test="position() =1">
                <xsl:attribute name="class">
                    <xsl:text>active</xsl:text>
                </xsl:attribute>
            </xsl:if>
            <xsl:if test="IsActive='true'">
                <xsl:attribute name="class">
                    <xsl:text>tab-content active</xsl:text>
                </xsl:attribute>
            </xsl:if>
            <xsl:attribute name="id">
                <xsl:text>tab-</xsl:text>
                <xsl:value-of disable-output-escaping="yes" select="position()"></xsl:value-of>
            </xsl:attribute>
            <div class="content">
                <h2>
                    <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                </h2>
                <xsl:value-of disable-output-escaping="yes" select="FullContent"></xsl:value-of>
            </div>
        </div>
    </xsl:template>
    <xsl:template match="News" mode="mode3">
        <div class="row"><img class="lazy">
            <xsl:attribute name="data-src">
                <xsl:value-of select="ImageUrl"></xsl:value-of>
            </xsl:attribute>
            <xsl:attribute name="alt">
                <xsl:value-of select="Title"></xsl:value-of>
            </xsl:attribute>
            </img>
        </div>
        <div class="row">
            <div class="col-lg-5"> <img class="lazy">
                <xsl:attribute name="data-src">
                    <xsl:value-of select="ThumbnailUrl"></xsl:value-of>
                </xsl:attribute>
                <xsl:attribute name="alt">
                    <xsl:value-of select="Title"></xsl:value-of>
                </xsl:attribute>
                </img>
            </div>
            <div class="col-lg-7">
                <div class="content">
                    <xsl:value-of disable-output-escaping="yes" select="FullContent"></xsl:value-of>
                </div>
            </div>
        </div>
    </xsl:template>
    <xsl:template match="News" mode="Slide4">
        <div class="swiper-slide">
            <div class="swiper-slide">

                <div class="img"><img class="lazy">
                    <xsl:attribute name="data-src">
                        <xsl:value-of select="ImageUrl"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name="alt">
                        <xsl:value-of select="Title"></xsl:value-of>
                    </xsl:attribute>
                    </img>
                </div>
                <div class="title">
                    <p>
                        <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                    </p>
                </div>
            </div>
        </div>
    </xsl:template>
    <xsl:template match="News" mode="mode5">
            <div class="col-6 col-lg-4">
                <div class="item">
                    <div class="info col-lg-3"><a class="img">
                            <xsl:attribute name="href">
                                <xsl:value-of select="Url"></xsl:value-of>
                            </xsl:attribute>
                            <xsl:attribute name="title">
                                <xsl:value-of select="Title"></xsl:value-of>
                            </xsl:attribute>

                            <img class="lazy">
                            <xsl:attribute name="data-src">
                                <xsl:value-of select="ImageUrl"></xsl:value-of>
                            </xsl:attribute>
                            <xsl:attribute name="alt">
                                <xsl:value-of select="Title"></xsl:value-of>
                            </xsl:attribute>
                            </img>
                        </a>
                        <p class="title">
                            <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                        </p><span>
                            <xsl:value-of disable-output-escaping="yes" select="SubTitle"></xsl:value-of>
                        </span>
                    </div>
                </div>
            </div>
        
    </xsl:template>
    <xsl:template match="News" mode="mode6">
        <xsl:value-of disable-output-escaping="yes" select="FullContent"></xsl:value-of>
    </xsl:template>
    <xsl:template match="News" mode="slide6-top">
        <div class="swiper-slide">
            <a class="swiper-image" data-fancybox="video">
                <xsl:attribute name="href">
                    <xsl:value-of select="ImageUrl"></xsl:value-of>
                </xsl:attribute>
                <xsl:attribute name="title">
                    <xsl:value-of select="Title"></xsl:value-of>
                </xsl:attribute>
                <img class="lazy">
                <xsl:attribute name="data-src">
                    <xsl:value-of select="ImageUrl"></xsl:value-of>
                </xsl:attribute>
                <xsl:attribute name="alt">
                    <xsl:value-of select="Title"></xsl:value-of>
                </xsl:attribute>
                </img>
            </a>
        </div>
    </xsl:template>
    <xsl:template match="News" mode="slide6-thumbs">
        <div class="swiper-slide">
            <div class="swiper-image"><img class="lazy">
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
   
    <xsl:template match="NewsImages" mode="Slide">

            <div class="swiper-slide">
                <img class="lazy">
                <xsl:attribute name="data-src">
                    <xsl:value-of select="ImageUrl"></xsl:value-of>
                </xsl:attribute>
                <xsl:attribute name="alt">
                    <xsl:value-of select="Title"></xsl:value-of>
                </xsl:attribute>
                </img>
            </div>
    
        </xsl:template>
</xsl:stylesheet>