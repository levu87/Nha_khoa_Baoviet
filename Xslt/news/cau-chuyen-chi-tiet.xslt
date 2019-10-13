<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes" />
    <xsl:template match="/">
        <section class="cau-chuyen-khach-hang-chi-tiet">
            <div class="container">
                <div class="row chi-tiet">
                    <div class="info col-lg-3">
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
                        <p class="title">
                            <xsl:value-of disable-output-escaping="yes" select="/NewsDetail/Title"></xsl:value-of>
                        </p><span>
                            <xsl:value-of disable-output-escaping="yes" select="/NewsDetail/SubTitle"></xsl:value-of>
                        </span>
                    </div>
                    <div class="content col-lg-9"><em class="mdi mdi-format-quote-open quote"></em>
                        <xsl:value-of disable-output-escaping="yes" select="/NewsDetail/FullContent"></xsl:value-of>
                    </div>
                </div>
            </div>
        </section>
        <section class="other-customer">
            <div class="container">
                <h1 class="title-h1">câu chuyện khách hàng khác </h1>
                <div class="list-item">
                    <div class="row">
                        <xsl:apply-templates select="/NewsDetail/NewsOther" mode="Other"></xsl:apply-templates>
                    </div>
                </div>
            </div>
        </section>
    </xsl:template>
    <xsl:template match="NewsOther" mode="Other">
        <xsl:if test="count(/NewsDetail/NewsOther)>0">
            <div class="col-6 col-lg-4">
                <div class="item"> <em class="mdi mdi-format-quote-open quote"></em>
                    <p>
                        <xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of>
                    </p>
                    <div class="button-view">
                        <a class="viewall">

                            <xsl:attribute name="href">
                                <xsl:value-of select="Url"></xsl:value-of>
                            </xsl:attribute>
                            <xsl:attribute name="title">
                                <xsl:value-of select="Title"></xsl:value-of>
                            </xsl:attribute>
                            <xsl:text disable-output-escaping="yes">Xem tất cả</xsl:text>
                            <em class="mdi mdi-arrow-right"></em>
                        </a></div>
                    <div class="avatar">
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
                        <p class="title">
                            <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                        </p><span>
                            <xsl:value-of disable-output-escaping="yes" select="SubTitle"></xsl:value-of>
                            <xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
                        </span>
                    </div>
                </div>
            </div>
        </xsl:if>


    </xsl:template>
</xsl:stylesheet>