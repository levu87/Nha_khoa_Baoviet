<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes" />
    <xsl:template match="/">
        <section class="tin-tuc">
            <div class="container">
                <h1 class="title-h1">
                    <xsl:value-of disable-output-escaping="yes" select="/NewsList/ZoneTitle"></xsl:value-of>
                </h1>
                <div class="tin-tuc-wrapper">
                    <div class="row">
                        <xsl:apply-templates select="/NewsList/News" mode="big"></xsl:apply-templates>
                        <div class="col-lg-6 small-box">
                            <div class="row">
                                <xsl:apply-templates select="/NewsList/News" mode="small"></xsl:apply-templates>
                            </div>
                        </div>
                    </div>
                    <div class="list-item">
                        <div class="row">
                            <xsl:apply-templates select="/NewsList/News" mode="list"></xsl:apply-templates>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </xsl:template>
    <xsl:template match="News" mode="big">
        <xsl:if test="position() = 1">
            <div class="col-lg-6 big-box">
                <div class="item item--big">
                    <figure>
                        <a class="img">
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
                        <figcaption>
                            <!-- <a class="cate" href="">
                                    gfgjk
                                    <xsl:attribute name="href">
                                        <xsl:value-of select="Url"></xsl:value-of>
                                    </xsl:attribute>
                                    <xsl:attribute name="title">
                                        <xsl:value-of select="Title"></xsl:value-of>
                                    </xsl:attribute>
                                    
                                </a> -->
                            <a class="title">

                                <xsl:attribute name="href">
                                    <xsl:value-of select="Url"></xsl:value-of>
                                </xsl:attribute>
                                <xsl:attribute name="title">
                                    <xsl:value-of select="Title"></xsl:value-of>
                                </xsl:attribute>

                                <h3>
                                    <xsl:value-of disable-output-escaping="yes" select="Title">
                    
                                    </xsl:value-of>
                                    <xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
                                </h3>
                            </a>
                            <p>
                                <xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of>
                            </p>
                            <time>
                                <xsl:value-of disable-output-escaping="yes" select="CreatedDate"></xsl:value-of>
                            </time>
                        </figcaption>
                    </figure>
                </div>
            </div>
        </xsl:if>
    </xsl:template>
    <xsl:template match="News" mode="small">
        <xsl:if test="position() &gt; 1 and position() &lt; 6">
            <div class="col-md-6 item item--small">
                <figure><a class="img">

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
                    <figcaption>
                        <!-- <a class="cate" href="">
                                gfgjk
                                <xsl:attribute name="href">
                                    <xsl:value-of select="Url"></xsl:value-of>
                                </xsl:attribute>
                                <xsl:attribute name="title">
                                    <xsl:value-of select="Title"></xsl:value-of>
                                </xsl:attribute>
                                
                            </a> -->
                        <a class="title">

                            <xsl:attribute name="href">
                                <xsl:value-of select="Url"></xsl:value-of>
                            </xsl:attribute>
                            <xsl:attribute name="title">
                                <xsl:value-of select="Title"></xsl:value-of>
                            </xsl:attribute>

                            <h3>
                                <xsl:value-of disable-output-escaping="yes" select="Title">
                                    
                                </xsl:value-of>
                                <xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
                            </h3>
                        </a>
                        <time>
                            <xsl:value-of disable-output-escaping="yes" select="CreatedDate"></xsl:value-of>
                        </time>
                    </figcaption>
                </figure>
            </div>
        </xsl:if>
    </xsl:template>
    <xsl:template match="News" mode="list">
        <xsl:if test="position() &gt; 6">
            <div class="col-lg-4 item">
                <figure><a class="img">

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
                    <figcaption>
                        <!-- <a class="cate" href="">
                                gfgjk
                                <xsl:attribute name="href">
                                    <xsl:value-of select="Url"></xsl:value-of>
                                </xsl:attribute>
                                <xsl:attribute name="title">
                                    <xsl:value-of select="Title"></xsl:value-of>
                                </xsl:attribute>
                                
                            </a> -->
                        <a class="title">

                            <xsl:attribute name="href">
                                <xsl:value-of select="Url"></xsl:value-of>
                            </xsl:attribute>
                            <xsl:attribute name="title">
                                <xsl:value-of select="Title"></xsl:value-of>
                            </xsl:attribute>

                            <h3>
                                <xsl:value-of disable-output-escaping="yes" select="Title">
                                    
                                </xsl:value-of>
                                <xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
                            </h3>
                        </a>
                        <p>
                            <xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of>
                        </p>
                        <time>
                            <xsl:value-of disable-output-escaping="yes" select="CreatedDate"></xsl:value-of>
                        </time>
                    </figcaption>
                </figure>
            </div>
        </xsl:if>
    </xsl:template>
</xsl:stylesheet>