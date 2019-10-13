<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes" />
    <xsl:template match="/">
        <section class="tuyen-dung-td-1">
            <div class="container">
                <h1 class="title-h1">
                    <xsl:value-of disable-output-escaping="yes" select="/ZoneList/ZoneTitle"></xsl:value-of>
                </h1>
                <xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
            </div>
        </section>
    </xsl:template>
    <xsl:template match="Zone">
        <xsl:if test="position()=1">
            <xsl:apply-templates select="News" mode="mode1"></xsl:apply-templates>
        </xsl:if>
        <xsl:if test="position()=2">
            <xsl:apply-templates select="News" mode="mode2"></xsl:apply-templates>
        </xsl:if>
        <xsl:if test="position()=3">
            <section class="tuyen-dung-td-2">
                <div class="container">

                    <h1 class="title-h1">
                        <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                        <xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
                    </h1>
                    <div class="row">
                        <xsl:apply-templates select="News" mode="mode3"></xsl:apply-templates>
                    </div>
                </div>
            </section>
        </xsl:if>
        <xsl:if test="position()=4">
            <section class="tuyen-dung-td-3"> 
				<div class="container"> 
					<h1 class="title-h1"><xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of></h1>
					<div class="table-responsive">
						<table class="table">
							<thead>
								<tr>
									<th scope="col">Stt</th>
									<th class="noidung" scope="col">Vị trí công việc</th>
									<th scope="col">Số lượng</th>
									<th scope="col">Ngày đăng </th>
									<th scope="col">Ngày hết hạn</th>
								</tr>
							</thead>
							<tbody> 
								<xsl:apply-templates select="News" mode="mode4"></xsl:apply-templates>
							</tbody>
						</table>
					</div>
				</div>
			</section>
            
        </xsl:if>
    </xsl:template>
    <xsl:template match="News" mode="mode1">
        <div class="box box--1">
            <div class="box__img">
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
            <div class="box__content">
                <div class="content">
                    <h2>
                        <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                    </h2>
                    <div class="briefcontent">
                        <xsl:value-of disable-output-escaping="yes" select="FullContent"></xsl:value-of>
                    </div>
                </div>
            </div>
        </div>
    </xsl:template>
    <xsl:template match="News" mode="mode2">
        <div class="box box--2">
            <div class="box__content">
                <div class="content">
                    <h2>
                        <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                    </h2>
                    <xsl:value-of disable-output-escaping="yes" select="FullContent"></xsl:value-of>
                </div>
            </div>
            <div class="box__img">
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
        </div>
    </xsl:template>
    <xsl:template match="News" mode="mode3">

        <div class="col-6 col-lg-3">
            <div class="item">
                <figure>
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
                    <figcaption> <a class="title">

                            <xsl:attribute name="href">
                                <xsl:value-of select="Url"></xsl:value-of>
                            </xsl:attribute>
                            <xsl:attribute name="title">
                                <xsl:value-of select="Title"></xsl:value-of>
                            </xsl:attribute>

                            <h3>Ứng tuyển </h3>
                        </a>
                        <div class="content">
                            <p>
                                <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                            </p>
                        </div><span class="stt">
                            <xsl:value-of disable-output-escaping="yes" select="SubTitle"></xsl:value-of>
                        </span>
                    </figcaption>
                </figure>
            </div>
        </div>
        <!-- <xsl:apply-templates select="News" mode="mode3-news"></xsl:apply-templates> -->

    </xsl:template>
    <xsl:template match="News" mode="mode4">
         <tr> 
            <td><xsl:value-of select="position()"></xsl:value-of></td>
            <td class="noidung" title="Chức vụ"><a><xsl:attribute name="href">
                <xsl:value-of select="Url"></xsl:value-of>
            </xsl:attribute>
            <xsl:attribute name="title">
                <xsl:value-of select="Title"></xsl:value-of>
            </xsl:attribute>
            <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
            <xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
            </a></td>
            <td title="Số lượng"><xsl:value-of disable-output-escaping="yes" select="SubTitle"></xsl:value-of></td>
            <td title="Ngày đăng"><xsl:value-of disable-output-escaping="yes" select="CreatedDate"></xsl:value-of></td>
            <td title="Ngày hết hạn"><xsl:value-of disable-output-escaping="yes" select="EndDate"></xsl:value-of></td>
        </tr>
    </xsl:template>
</xsl:stylesheet>