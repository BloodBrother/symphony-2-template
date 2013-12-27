<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template name="menu-admin">
		<xsl:if test="/data/events/login-info/@logged-in = 'true'">
		<div id="menu-admin">
			<span><xsl:value-of select="/data/events/login-info/name" /></span>
			
			<span><xsl:text> - </xsl:text></span>
			
			<a href="/symphony/">Symphony</a>
			
			<xsl:if test="/data/events/login-info/@user-type = 'developer'">
				<a href="?debug">debug</a>
			</xsl:if>
			
			<a href="/symphony/logout/">déconnection</a>
		</div>
	</xsl:if>
</xsl:template>

</xsl:stylesheet>