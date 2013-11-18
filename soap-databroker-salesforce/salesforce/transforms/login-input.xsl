<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
		<soapenv:Envelope xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/" xmlns:urn="urn:enterprise.soap.sforce.com">
		   <soapenv:Header/>
		   <soapenv:Body>
		      <urn:login>
		         <urn:username><xsl:value-of select="parameters/datasource/key[@name='username']/@value" /></urn:username>
		         <urn:password><xsl:value-of select="parameters/datasource/key[@name='password']/@value" /></urn:password>
		      </urn:login>
		   </soapenv:Body>
		</soapenv:Envelope>
    </xsl:template>
</xsl:stylesheet>

