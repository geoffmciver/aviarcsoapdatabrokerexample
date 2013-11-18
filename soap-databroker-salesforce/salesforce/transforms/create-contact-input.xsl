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
				<urn:create>
					<urn:sObjects xsi:type="urn:Contact">
						<xsl:for-each select="parameters/parameter[@name!='session']">
							<xsl:element name="urn:{@name}"><xsl:value-of select="@value"/></xsl:element>
						</xsl:for-each>
					</urn:sObjects>
				</urn:create>
			</soapenv:Body>
		</soapenv:Envelope>
    </xsl:template>
</xsl:stylesheet>
