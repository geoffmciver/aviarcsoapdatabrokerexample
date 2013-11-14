<?xml version="1.0" encoding="UTF-8"?>
<!--
        <soap:Fault>
            <faultcode>soap:Server</faultcode>
            <faultstring>exampleCreate - cannot create.... Argh!!!!!</faultstring>
            <detail>
                <ns1:ExampleServiceException xmlns:ns1="http://example.service.abstraction.vss.ibm.coretech.co.nz/">
                </ns1:ExampleServiceException>
            </detail>
        </soap:Fault>
-->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:soap="http://schemas.xmlsoap.org/soap/envelope/">
    <xsl:template match="/">
        <xsl:choose>
            <xsl:when test="//soap:Fault">
                   <xsl:element name="response">
                       <xsl:attribute name="success">false</xsl:attribute>
                       <xsl:attribute name="message"><xsl:value-of select="//soap:Fault/faultstring" /></xsl:attribute>
                   </xsl:element>
            </xsl:when>
            <xsl:otherwise>
                <xsl:element name="response">
                       <xsl:attribute name="success">true</xsl:attribute>
                       <xsl:attribute name="message"></xsl:attribute>
                   </xsl:element>
            </xsl:otherwise>
        </xsl:choose>
     </xsl:template>
</xsl:stylesheet>


