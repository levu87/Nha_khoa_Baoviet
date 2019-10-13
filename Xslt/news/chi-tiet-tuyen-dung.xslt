<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <section class="chitiet-tuyendung"> 
				<div class="container"> 
					<div class="row"> 
						<div class="col-lg-9 contain">
							<h3><xsl:value-of select="/NewsDetail/Title"></xsl:value-of></h3>
							<p> <strong>Thông tin tuyển dụng</strong></p>
							<table class="table"> 
                                <xsl:apply-templates select="/NewsDetail/NewsAttributes" mode="Table"></xsl:apply-templates>
								
							</table>
							<xsl:value-of disable-output-escaping="yes" select="/NewsDetail/FullContent"></xsl:value-of>
							<div class="deadline">
								<p>Hạn nộp hồ sơ:<span><xsl:value-of disable-output-escaping="yes" select="/NewsDetail/EndDate"></xsl:value-of></span></p>
							</div>
							<div class="button"><a class="button-ungtuyen" href='javascript:void(0)'>
                                <xsl:text disable-output-escaping="yes">Ứng tuyển</xsl:text>
                            </a>
								<p>Hoặc</p><a class="button-down"> 
                                <xsl:attribute name="href">
                                        <xsl:value-of select="FileUrl"></xsl:value-of>
                                    </xsl:attribute>
                                <em class="lnr lnr-download"></em>Tải mẫu đơn xin việc</a>
                            </div>
                            <div class="form-apply">
                                    <iframe>
                                        <xsl:attribute name="src">
                                            <xsl:value-of select="/NewsDetail/ApplyUrl"></xsl:value-of>
                                        </xsl:attribute>
                                    </iframe>
                                <div class="button-out">
                                    <em class="mdi mdi-close"></em>
                                </div>
                                </div>
						</div>
						<div class="col-lg-3 other">
							<div class="head">
								<h2>tuyển dụng khác</h2>
							</div>
							<ul class="list-item">
                                <xsl:apply-templates select="/NewsDetail/NewsOther"></xsl:apply-templates>
								<li>
									<time>27/07/2019</time><a class="title" href="#"> 
										<h4>Nhân viên bảo trị hệ thống điện</h4></a>
								</li>
							</ul>
						</div>
					</div>
				</div>
			</section>
    </xsl:template>
    <xsl:template match="NewsAttributes" mode="Table">
       <tr>
            <td class="title">
                <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
            </td>
            <td>
                <xsl:value-of disable-output-escaping="yes" select="Content"></xsl:value-of>
            </td>
        </tr>
    </xsl:template>
    <xsl:template match="NewsOther">
       <xsl:if test="count(/NewsDetail/NewsOther)>0">
        <li>
            <time><xsl:value-of disable-output-escaping="yes" select="NewsOther/CreatedDate"></xsl:value-of></time>
            <a class="title" > 

                <h4>
                <xsl:attribute name="href">
                    <xsl:value-of select="Url"></xsl:value-of>
                </xsl:attribute>
                <xsl:attribute name="title">
                    <xsl:value-of select="Title"></xsl:value-of>
                </xsl:attribute>
                </h4></a>
        </li>
            
        </xsl:if>
    </xsl:template>
</xsl:stylesheet>