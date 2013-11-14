<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <soapenv:Envelope xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/"
        xmlns:exam="http://soap.service.example.p0wdr.com/">
            <soapenv:Header />
            <soapenv:Body>
                <exampleCreate>
                    <arg0>
                        <xsl:for-each select="store/row/field">
                            <xsl:variable name="name"><xsl:value-of select="@name"></xsl:value-of></xsl:variable>
                            <xsl:element name="{$name}">
                              <xsl:value-of select="@value" />
                            </xsl:element>
                        </xsl:for-each>
                    </arg0>
                </exampleCreate>
            </soapenv:Body>
        </soapenv:Envelope>
    </xsl:template>
</xsl:stylesheet>