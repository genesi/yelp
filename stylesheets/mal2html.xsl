<?xml version='1.0' encoding='UTF-8'?><!-- -*- indent-tabs-mode: nil -*- -->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:yelp="http://www.gnome.org/yelp/ns"
                xmlns:mal="http://www.gnome.org/~shaunm/mallard"
                xmlns="http://www.w3.org/1999/xhtml"
                extension-element-prefixes="yelp"
                version="1.0">

<xsl:import href="/usr/share/xml/gnome/xslt/mallard/html/mal2xhtml.xsl"/>

<xsl:include href="yelp-common.xsl"/>

<xsl:param name="yelp.javascript"/>


<xsl:param name="mal.chunk.chunk_top" select="true()"/>
<xsl:param name="mal.chunk.extension" select="''"/>

<xsl:param name="mal.cache" select="yelp:input()"/>
<xsl:key name="mal.cache.key" match="mal:page | mal:section" use="@id"/>


<!-- == mal.chunk == -->
<xsl:template name="mal.chunk">
  <xsl:param name="node" select="."/>
  <xsl:param name="href" select="concat($node/@id, $mal.chunk.extension)"/>
  <yelp:document href="{$href}">
    <xsl:apply-templates mode="mal.chunk.content.mode" select="$node"/>
  </yelp:document>
</xsl:template>

<!-- == mal.link.target == -->
<xsl:template name="mal.link.target">
  <xsl:param name="node" select="."/>
  <xsl:param name="xref" select="$node/@xref"/>
  <xsl:param name="href" select="$node/@href"/>
  <xsl:choose>
    <xsl:when test="string($xref) = ''">
      <xsl:value-of select="$href"/>
    </xsl:when>
    <xsl:when test="contains($xref, '/')">
      <xsl:value-of select="$href"/>
    </xsl:when>
    <xsl:when test="contains($xref, '#')">
      <xsl:variable name="pageid" select="substring-before($xref, '#')"/>
      <xsl:variable name="sectionid" select="substring-after($xref, '#')"/>
      <xsl:value-of select="concat('xref:', $pageid, '/', $sectionid)"/>
    </xsl:when>
    <xsl:otherwise>
      <xsl:value-of select="concat('xref:', $xref)"/>
    </xsl:otherwise>
  </xsl:choose>
</xsl:template>

<!-- == mal2html.css.custom == -->
<xsl:template name="mal2html.css.custom">
  <xsl:call-template name="yelp.common.css"/>
  <xsl:text>
body { padding: 0; }
div.headbar {
  padding: 0.2em 0 0 0;
  margin: 0 0 1em 0;
  max-width: 100%;
  width: 100%;
  background-color: </xsl:text>
    <xsl:value-of select="$theme.color.gray_background"/><xsl:text>;
  border-bottom: solid 1px </xsl:text>
    <xsl:value-of select="$theme.color.gray_border"/><xsl:text>;
}
div.body {
  margin: 0 12px 0 12px;
}
  </xsl:text>
</xsl:template>

</xsl:stylesheet>
