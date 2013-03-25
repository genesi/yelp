<?xml version='1.0' encoding='UTF-8'?><!-- -*- indent-tabs-mode: nil -*- -->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:yelp="http://www.gnome.org/yelp/ns"
                xmlns="http://www.w3.org/1999/xhtml"
                extension-element-prefixes="yelp"
                version="1.0">

<xsl:import href="/usr/share/xml/gnome/xslt/gettext/gettext.xsl"/>

<xsl:param name="help_icon"/>
<xsl:param name="help_icon_size"/>

<xsl:param name="theme.color.text"/>
<xsl:param name="theme.color.background"/>
<xsl:param name="theme.color.text_light"/>
<xsl:param name="theme.color.link"/>
<xsl:param name="theme.color.link_visited"/>
<xsl:param name="theme.color.gray_background"/>
<xsl:param name="theme.color.gray_border"/>
<xsl:param name="theme.color.blue_background"/>
<xsl:param name="theme.color.blue_border"/>
<xsl:param name="theme.color.red_background"/>
<xsl:param name="theme.color.red_border"/>
<xsl:param name="theme.color.yellow_background"/>
<xsl:param name="theme.color.yellow_border"/>

<xsl:template match="toc">
  <xsl:variable name="direction">
    <xsl:call-template name="l10n.direction"/>
  </xsl:variable>
  <xsl:variable name="left">
    <xsl:call-template name="l10n.align.start">
      <xsl:with-param name="direction" select="$direction"/>
    </xsl:call-template>
  </xsl:variable>
  <xsl:variable name="right">
    <xsl:call-template name="l10n.align.end">
      <xsl:with-param name="direction" select="$direction"/>
    </xsl:call-template>
  </xsl:variable>
  <yelp:document href="{@id}">
    <html>
      <head>
        <title>
          <xsl:value-of select="title[1]"/>
        </title>
        <style type="text/css"><xsl:text>
        body {
          margin: 0px;
          padding: 0px;
        }
        h1 {
          font-size: 1.6em;
          margin-bottom: 0.4em;
          margin-top: 12px;
          margin-left: 12px;
          margin-right: 12px;
          padding-</xsl:text><xsl:value-of select="$left"/><xsl:text>: 204px;
          padding-top: 0.2em;
          padding-bottom: 0.2em;
          -moz-border-radius: 6px;
          border: solid 1px </xsl:text>
          <xsl:value-of select="$theme.color.blue_border"/><xsl:text>;
          background-color: </xsl:text>
          <xsl:value-of select="$theme.color.blue_background"/><xsl:text>;
          color: </xsl:text>
          <xsl:value-of select="$theme.color.text"/><xsl:text>;
        }
        h1 img {
          float: </xsl:text><xsl:value-of select="$right"/><xsl:text>;
          margin-</xsl:text><xsl:value-of select="$right"/><xsl:text>: 18px;
        }
        h2 h3 {
          color: </xsl:text><xsl:value-of select="$theme.color.text"/><xsl:text>;
        }
        div[class~="body"] { }
        div[class~="leftbar"] {
          position: absolute;
          top: 4em;
          </xsl:text><xsl:value-of select="$left"/><xsl:text>: 12px;
          width: 192px;
          min-height: 192px;
          text-align: </xsl:text><xsl:value-of select="$left"/><xsl:text>;
          /* padding-top: </xsl:text>
          <xsl:value-of select="$help_icon_size"/><xsl:text>px;
          background-image: url("</xsl:text>
          <xsl:value-of select="$help_icon"/><xsl:text>");
          background-position: </xsl:text>
          <xsl:value-of select="(192 - $help_icon_size) div 2"/><xsl:text>px 0px;
          background-repeat: no-repeat;
          opacity: .3; */
        }
        div[class~="leftbackground"] {
          position: absolute;
          top: 4em;
          </xsl:text><xsl:value-of select="$left"/><xsl:text>: 1px;
          width: 210px;
          min-height: 192px;
          text-align: center;
          padding-top: 0px;
          background-image:url("</xsl:text>
          <xsl:value-of select="$help_icon"/><xsl:text>");
          background-position: </xsl:text>
          <xsl:value-of select="(192 - $help_icon_size) div 2"/><xsl:text>px 0px;
 
          background-repeat: no-repeat;
          opacity: .1;          
        }
        div[class~="rightbar"] {
          margin-</xsl:text><xsl:value-of select="$left"/><xsl:text>: 216px;
          margin-</xsl:text><xsl:value-of select="$right"/><xsl:text>: 12px;
          padding: 1em;
          background-color: </xsl:text><xsl:value-of select="$theme.color.background"/><xsl:text>;
          color: </xsl:text><xsl:value-of select="$theme.color.text"/><xsl:text>;
          -moz-border-radius: 8px;
        }
        ul { margin-left: 0em; padding-left: 0em; }
        li[class~="toclist"] {
          margin-top: 0.3em;
          margin-</xsl:text><xsl:value-of select="$left"/><xsl:text>: 0em;
          padding-</xsl:text><xsl:value-of select="$left"/><xsl:text>: 0em;
          font-size: 1.2em;
          list-style-type: none;
        }
	li li[class~="toclist"] {
	  padding-</xsl:text><xsl:value-of select="$left"/><xsl:text>: 0.8em;
	  font-size: 0.8em;
        }
	li li li[class~="toclist"] {
	  padding-</xsl:text><xsl:value-of select="$left"/><xsl:text>: 0.8em;
	  font-size: 0.6em;
        }
        li[class~="toc"] {
          margin-</xsl:text><xsl:value-of select="$left"/><xsl:text>: 0em;
          font-size: 1.2em;
          padding-top: 0.5em;
          list-style-type: none;
        }
        dl {
          margin-</xsl:text><xsl:value-of select="$left"/><xsl:text>: 0em;
          padding-</xsl:text><xsl:value-of select="$left"/><xsl:text>: 0em;
        }
        dt { font-size: 1.2em; margin-top: 1em; }
        dd {
          margin-</xsl:text><xsl:value-of select="$left"/><xsl:text>: 1em;
          margin-top: 0.5em;
        }
        a { text-decoration: none; color: </xsl:text><xsl:value-of select="$theme.color.link"/><xsl:text>; }
        a:hover { text-decoration: underline; }
        </xsl:text></style>
      </head>
      <body>
        <div>
          <xsl:if test="$direction = 'ltr' or $direction='rtl'">
            <xsl:attribute name="dir">
              <xsl:value-of select="$direction"/>
            </xsl:attribute>
          </xsl:if>
          <xsl:apply-templates mode="body.mode" select="."/>
        </div>
      </body>
    </html>
  </yelp:document>
</xsl:template>

<xsl:template name="print.documents">
  <div class="docs">
    <dl>
      <xsl:for-each select="doc">
        <xsl:sort order="ascending" data-type="number"
          select="normalize-space(@weight)"/>
        <xsl:sort select="normalize-space(title)"/>
        <dt class="doc">
          <a href="{@href}" title="{@href}">
            <xsl:if test="tooltip">
              <xsl:attribute name="title">
                <xsl:value-of select="tooltip"/>
              </xsl:attribute>
            </xsl:if>
            <xsl:value-of select="title"/>
          </a>
        </dt>
        <dd>
          <xsl:value-of select="description"/>
        </dd>
      </xsl:for-each>
    </dl>
  </div>
</xsl:template>

<xsl:template name="print.subsections">
  <div class="tocs">
    <ul>
      <xsl:for-each select="toc[../@id = 'index' or .//doc]">
        <xsl:sort select="number(../@id = 'index') * position()"/>
        <xsl:sort select="normalize-space(title)"/>
        <li class="toc">
          <a href="x-yelp-toc:{@id}">
            <xsl:apply-templates select="title[1]/node()"/>
          </a>
        </li>
      </xsl:for-each>
    </ul>
  </div>
</xsl:template>

<xsl:template mode="body.mode" match="toc">
  <div class="leftbackground">
  </div>
  <div class="body">
    <h1>
      <xsl:if test="icon">
        <img src="{icon/@file}"/>
      </xsl:if>
      <xsl:apply-templates select="title"/>
    </h1>
    <div class="leftbar">
      <xsl:choose>
      <xsl:when test="@id= 'index'">
        <h2><xsl:value-of select="/toc/title"/></h2>
      </xsl:when>
      <xsl:otherwise>
        <a href="x-yelp-toc:index"><h2><xsl:value-of select="/toc/title"/>
      </h2></a>
      </xsl:otherwise>        
      </xsl:choose>
      <xsl:apply-templates mode="leftbar.mode" select="/toc">
        <xsl:with-param name="curid" select="@id"/>
      </xsl:apply-templates>
    </div>
    <div class="rightbar">
      <h3><xsl:apply-templates select="description/node()"/></h3>
      <xsl:choose>
        <!-- if there are documents and subsections, only print documents -->
        <xsl:when test="doc[1] and toc[.//doc[1]]">
          <xsl:call-template name="print.documents"/>
        </xsl:when>
        <!-- if there are documents, print them -->
        <xsl:when test="doc[1]">
          <xsl:call-template name="print.documents"/>
        </xsl:when>
        <!-- if there are subsections, print them -->
        <xsl:when test="toc[.//doc[1]]">
          <xsl:call-template name="print.subsections"/>
        </xsl:when>
        <xsl:otherwise>
          <h3>No documents or subcategories found.</h3>
        </xsl:otherwise>
      </xsl:choose>
    </div>
  </div>
</xsl:template>

<!-- tricky recursive xslt -->
<xsl:template mode="leftbar.mode" match="toc">
  <xsl:param name="curid" select="0"/>
    <ul>
      <xsl:for-each select="toc[.//doc[1] or @protected]">
        <li class="toclist">
          <xsl:choose>
            <xsl:when test="@id != $curid">
              <a href="x-yelp-toc:{@id}">
                <xsl:value-of select="title[1]/node()"/>
              </a>
            </xsl:when>
            <xsl:otherwise>
              <xsl:value-of select="title[1]/node()"/>
            </xsl:otherwise>
          </xsl:choose>
          <xsl:if test="@id = $curid or .//toc[@id = $curid]">
            <xsl:apply-templates mode="leftbar.mode" select=".">
              <xsl:with-param name="curid" select="$curid"/>
            </xsl:apply-templates>
          </xsl:if>
        </li>
      </xsl:for-each>
    </ul>
</xsl:template>

<xsl:template match="/">
  <xsl:apply-templates select="//toc" />
</xsl:template>

</xsl:stylesheet>
