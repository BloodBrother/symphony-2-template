<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:variable name="site-name">
	<xsl:choose>
		<xsl:when test="count($config/site-titre/item) != 0">
			<xsl:value-of select="$config/site-titre/item[@lang=$url-language]"/>
		</xsl:when>
		<xsl:otherwise>
			<xsl:value-of select="$config/site-titre"/>
		</xsl:otherwise>
	</xsl:choose>
</xsl:variable>
<xsl:variable name="site-description" select="$config/description" />
<xsl:variable name="site-share-image" select="$config/image-partage" />

<!-- Dates -->
<xsl:variable name="date-format">
	<xsl:choose>
		<xsl:when test="$url-language = 'en'">M D Y</xsl:when>
		<xsl:otherwise>d M Y</xsl:otherwise>
	</xsl:choose>
</xsl:variable>

<xsl:variable name="default-share-page-title" >
	<xsl:call-template name="default-master-title" />
</xsl:variable>

<!-- Site URLs -->
<xsl:variable name="page-index-url">
	<xsl:call-template name="create-page-url-by-id">
		<xsl:with-param name="id" select="$page-index-id" />
	</xsl:call-template>
</xsl:variable>

<!-- Google Analytics -->
<xsl:variable name="ga-ua" select="''" />
<xsl:variable name="ga-domain" select="'auto'" />

<!-- Twitter Card -->
<xsl:variable name="twitter-card-site" select="$config/twitter-url" />
<xsl:variable name="twitter-card-creator">
	<xsl:choose>
		<xsl:when test="starts-with($config/twitter-user, '@')">
			<xsl:value-of select="$config/twitter-user" />
		</xsl:when>
		<xsl:otherwise>
			<xsl:value-of select="concat('@', $config/twitter-user)" />
		</xsl:otherwise>
	</xsl:choose>
</xsl:variable>
<xsl:variable name="twitter-card-domain" select="$config/twitter-site-domain" />


<!-- Default langue if fl-languages not found -->
<xsl:variable name="default-langue" select="'fr'" />

<!-- Default Path -->
<xsl:variable name="css-path" select="'/workspace/assets/css/'" />
<xsl:variable name="js-path" select="'/workspace/assets/js/'" />

<!-- Default Path -->
<xsl:variable name="page-index-id" select="'1'" />

</xsl:stylesheet>
