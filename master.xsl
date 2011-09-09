<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	
<xsl:output method="xml" doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd" omit-xml-declaration="yes" encoding="UTF-8" indent="yes"/>
	
<xsl:template match="/">
	<xsl:comment><![CDATA[[if IE 6]> <html lang="en" class="no-js ie ie6 lte-ie9 lte-ie8 lte-ie7 lte-ie6 gte-ie6"> <![endif]]]></xsl:comment>
	<xsl:comment><![CDATA[[if IE 7]> <html lang="en" class="no-js ie ie7 lte-ie9 lte-ie8 lte-ie7 gte-ie7 gte-ie6"> <![endif]]]></xsl:comment>
	<xsl:comment><![CDATA[[if IE 8]> <html lang="en" class="no-js ie ie8 lte-ie9 lte-ie8 gte-ie8 gte-ie7 gte-ie6"> <![endif]]]></xsl:comment>
	<xsl:comment><![CDATA[[if IE 9]> <html lang="en" class="no-js ie ie9 lte-ie9 gte-ie9 gte-ie8 gte-ie7 gte-ie6"> <![endif]]]></xsl:comment>
	<xsl:comment><![CDATA[[if (gte IE 10)|!(IE)]]]></xsl:comment> <html lang="en" class="no-js"> <xsl:comment><![CDATA[[endif]]]></xsl:comment>
		<head>
			<title><xsl:value-of select="$page-title"/><xsl:text> &#8212; </xsl:text><xsl:value-of select="$website-name"/></title>
			<link rel="stylesheet" href="{$workspace}/styles/style.css" />
			<script src="{$workspace}/scripts/modernizr.js"></script>
		</head>
		<body>
			<xsl:attribute name="class"><xsl:value-of select="concat('page-',$current-page)"/></xsl:attribute>
			<a href="#content-main" class="skip">Skip to main content</a>
			<header>
				<h1><xsl:value-of select="$page-title"/></h1>
			</header>
			<div id="content-main">
				<xsl:apply-templates select="/data"/>
			</div>
			<footer>
			</footer>
		</body>
	</html>
</xsl:template>
	
</xsl:stylesheet>
