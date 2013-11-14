<?xml version="1.0" encoding="UTF-8"?>
<!-- 
 <ns1:exampleOperationReturningComplexTypeResponse xmlns:ns1="http://example.service.abstraction.vss.ibm.coretech.co.nz/">
         <return>
            <bar>bar bar</bar>
            <date>2011-01-18T11:36:45+13:00</date>
            <foo>?</foo>
            <number>123456</number>
         </return>
      </ns1:exampleOperationReturningComplexTypeResponse>

 -->
 
<xsl:stylesheet exclude-result-prefixes="ns1" version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ns1="http://soap.service.example.p0wdr.com/"
xmlns:soap="http://schemas.xmlsoap.org/soap/envelope/">
<xsl:template match="/soap:Envelope/soap:Body">
    <dataset>
        <row>       
        <xsl:element name="field">
          <xsl:attribute name="name">bar</xsl:attribute>
          <xsl:attribute name="value"><xsl:value-of select="ns1:exampleOperationReturningComplexTypeResponse/return/bar" /></xsl:attribute>
        </xsl:element>
        <xsl:element name="field">
          <xsl:attribute name="name">date</xsl:attribute>
          <xsl:attribute name="value"><xsl:value-of select="ns1:exampleOperationReturningComplexTypeResponse/return/date" /></xsl:attribute>
        </xsl:element>
        <xsl:element name="field">
          <xsl:attribute name="name">foo</xsl:attribute>
          <xsl:attribute name="value"><xsl:value-of select="ns1:exampleOperationReturningComplexTypeResponse/return/foo" /></xsl:attribute>
        </xsl:element>
        <xsl:element name="field">
          <xsl:attribute name="name">number</xsl:attribute>
          <xsl:attribute name="value"><xsl:value-of select="ns1:exampleOperationReturningComplexTypeResponse/return/number" /></xsl:attribute>
        </xsl:element>
        </row>
    </dataset>
    </xsl:template>
</xsl:stylesheet>
      
      
