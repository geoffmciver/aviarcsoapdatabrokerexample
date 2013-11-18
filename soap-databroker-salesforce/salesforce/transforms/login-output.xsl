<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ns1="urn:enterprise.soap.sforce.com">
    <xsl:template match="/">
        <dataset>
            <row>
                <xsl:element name="field">
                    <xsl:attribute name="name">session</xsl:attribute>
                    <xsl:attribute name="value">
                        <xsl:value-of select="soapenv:Envelope/soapenv:Body/ns1:loginResponse/ns1:result/ns1:sessionId" />
                    </xsl:attribute>
                </xsl:element>
                <xsl:element name="field">
                    <xsl:attribute name="name">serverurl</xsl:attribute>
                    <xsl:attribute name="value">
                        <xsl:value-of select="soapenv:Envelope/soapenv:Body/ns1:loginResponse/ns1:result/ns1:serverUrl" />
                    </xsl:attribute>
                </xsl:element>
            </row>
        </dataset>
    </xsl:template>
</xsl:stylesheet>
