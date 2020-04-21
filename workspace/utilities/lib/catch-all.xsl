<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:exslt="http://exslt.org/common"
	exclude-result-prefixes="exslt">

<xsl:template match="*">
    <xsl:message terminate="no">
        Unexpected element: <xsl:value-of select="name()"/>
    </xsl:message>
</xsl:template>

</xsl:stylesheet>
