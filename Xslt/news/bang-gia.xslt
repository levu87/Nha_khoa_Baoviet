<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <section class="bang-gia"> 
            <div class="container"> 
                <h1 class="title-h1"><xsl:value-of disable-output-escaping="yes" select="/ZoneList/ZoneTitle"></xsl:value-of></h1>
                <p class="content"><xsl:value-of disable-output-escaping="yes" select="/ZoneList/Description"></xsl:value-of></p>
                <div class="table-responsive">
                    <table class="table">
                        <thead>
                            <tr>
                                <th class="noidung" scope="col">Dịch vụ</th>
                                <th scope="col">Đơn vị </th>
                                <th scope="col">Giá</th>
                            </tr>
                        </thead>
                        <tbody> 
                            <xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
                        </tbody>
                    </table>
                </div>
            </div>
        </section>
    </xsl:template>
    <xsl:template match="Zone">
        <xsl:if test="position()= 1">
            <tr> 
            <td class="cate" colspan="3"><xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of></td>
        </tr>
        <xsl:apply-templates select="News"></xsl:apply-templates>

        
        </xsl:if>
        
        <xsl:if test="position()= 2">
            <tr> 
            <td class="cate" colspan="3"><xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of></td>
        </tr>
        <xsl:apply-templates select="News"></xsl:apply-templates>
        </xsl:if>
        
        <xsl:if test="position()= 3">
            <tr> 
                <td class="cate" colspan="3"><xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of></td>
            </tr>
            <xsl:apply-templates select="News"></xsl:apply-templates>
        </xsl:if>
        
    </xsl:template>
    <xsl:template match="News">
        <tr> 
            <td class="noidung" title="Dịch vụ"><a><xsl:attribute name="href">
                <xsl:value-of select="Url"></xsl:value-of>
            </xsl:attribute>
            <xsl:attribute name="title">
                <xsl:value-of select="Title"></xsl:value-of>
            </xsl:attribute>
            <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
            <xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
            </a></td>
            <td title="Đơn vị"><xsl:value-of disable-output-escaping="yes" select="SubTitle"></xsl:value-of></td>
            <td title="Giá"><xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of></td>
        </tr>
    </xsl:template>
</xsl:stylesheet>