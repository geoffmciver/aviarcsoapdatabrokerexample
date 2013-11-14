<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <soapenv:Envelope xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/"
            xmlns:exam="http://soap.service.example.p0wdr.com/">
            <soapenv:Header />
            <soapenv:Body>
                <exam:exampleOperation>
                    <xsl:element name="arg0"><xsl:value-of select="parameters/parameter[@name='arg0']/@value"></xsl:value-of></xsl:element>
                </exam:exampleOperation>
            </soapenv:Body>
        </soapenv:Envelope>
    </xsl:template>
</xsl:stylesheet>
