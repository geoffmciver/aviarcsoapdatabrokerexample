<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet exclude-result-prefixes="ns1" version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
 xmlns:ns1="http://soap.service.example.p0wdr.com/"
 xmlns:soap="http://schemas.xmlsoap.org/soap/envelope/">
    <xsl:template match="/soap:Envelope/soap:Body">
        <dataset>
            <row>       
                <xsl:element name="field">
                  <xsl:attribute name="name">return</xsl:attribute>
                  <xsl:attribute name="value"><xsl:value-of select="ns1:exampleOperationResponse/return" /></xsl:attribute>
                </xsl:element>
            </row>
        </dataset>
    </xsl:template>
</xsl:stylesheet>


