<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:template match="/">
<html>
<body>
<form action="edittool.php" method="post">
<h2>Tool Information (edit):</h2>
<table border="0">
<xsl:for-each select="tool/field">
<tr>
<td>
<xsl:value-of select="@id"/>
</td>
<td>
<input type="text">
<xsl:attribute name="id">
<xsl:value-of select="@id"/>
</xsl:attribute>
<xsl:attribute name="name">
<xsl:value-of select="@id"/>
</xsl:attribute>
<xsl:attribute name="value">
<xsl:value-of select="value"/>
</xsl:attribute>
</input>
</td>
</tr>
</xsl:for-each>
</table>
<br/>
<input id="btn_sub" type="submit" name="btn_sub" value="Submit"/>
<input id="btn_reset" type="reset" name="btn_reset" value="Reset"/>
</form>
</body>
</html>
</xsl:template>
</xsl:stylesheet>