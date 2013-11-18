<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
		<soapenv:Envelope xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/" xmlns:urn="urn:enterprise.soap.sforce.com">
			<soapenv:Header>
				<urn:SessionHeader>
					<urn:sessionId><xsl:value-of select="parameters/parameter[@name='session']/@value"/></urn:sessionId>
				</urn:SessionHeader>
			</soapenv:Header>
			<soapenv:Body>
				<urn:delete>
					<urn:Id><xsl:value-of select="parameters/parameter[@name='id']/@value" /></urn:Id>
				</urn:delete>
			</soapenv:Body>
		</soapenv:Envelope>
    </xsl:template>
</xsl:stylesheet>
