<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet exclude-result-prefixes="ns1" version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ns1="http://soap.service.example.p0wdr.com/"
xmlns:soap="http://schemas.xmlsoap.org/soap/envelope/">
<xsl:template match="/soap:Envelope/soap:Body">
    <dataset>
        <xsl:for-each select="ns1:exampleOperationReturningListComplexTypeResponse/return">
            <row>
            <xsl:element name="field">
              <xsl:attribute name="name">bar</xsl:attribute>
              <xsl:attribute name="value"><xsl:value-of select="bar" /></xsl:attribute>
            </xsl:element>
            <xsl:element name="field">
              <xsl:attribute name="name">date</xsl:attribute>
              <xsl:attribute name="value"><xsl:value-of select="date" /></xsl:attribute>
            </xsl:element>
            <xsl:element name="field">
              <xsl:attribute name="name">foo</xsl:attribute>
              <xsl:attribute name="value"><xsl:value-of select="foo" /></xsl:attribute>
            </xsl:element>
            <xsl:element name="field">
              <xsl:attribute name="name">number</xsl:attribute>
              <xsl:attribute name="value"><xsl:value-of select="number" /></xsl:attribute>
            </xsl:element>
            </row>
        </xsl:for-each>
    </dataset>
    </xsl:template>
</xsl:stylesheet>
