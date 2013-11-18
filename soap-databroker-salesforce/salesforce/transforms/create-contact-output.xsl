<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:ns1="urn:enterprise.soap.sforce.com">
	<xsl:template match="/">
        <dataset>
        	<xsl:if test="soapenv:Envelope/soapenv:Body/ns1:createResponse/ns1:result/ns1:success = 'true'">
	            <row>
	                <xsl:element name="field">
	                    <xsl:attribute name="name">id</xsl:attribute>
	                    <xsl:attribute name="value">
	                        <xsl:value-of select="soapenv:Envelope/soapenv:Body/ns1:createResponse/ns1:result/ns1:id"/>
	                    </xsl:attribute>
	                </xsl:element>
	            </row>
            </xsl:if>
            <xsl:if test="soapenv:Envelope/soapenv:Body/ns1:createResponse/ns1:result/ns1:success = 'false'">
				<row>
					<xsl:element name="field">
						<xsl:attribute name="name">success</xsl:attribute>
						<xsl:attribute name="value">false</xsl:attribute>
					</xsl:element>
				</row>
            </xsl:if>
        </dataset>
	</xsl:template>
</xsl:stylesheet>

