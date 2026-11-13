<?xml version="1.0"?>
<!-- XSLT Document  QXDStylesheet.xsl-->
<!-- This displays the QXD format    -->
<!-- Multiple pages supported    -->
<!-- (c) 2004 Qusoft and QBS Software -->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt"
    xmlns:user="www.sharpreports.com">

  <msxsl:script implements-prefix="user" >
     <![CDATA[
     pageheight = 297.0;
     pagenumber = 0.0;
     pageoffset = 0.0;
     function setpageheight(ph)
     {
         pageheight = ph;
         return 'rot';
     };
     function getpageheight(ph)
     {
         return pageheight;
     };
     function getpageoffset(z)
     {
         pageoffset = z + (pageheight*(pagenumber-1.0));
         return pageoffset;
     };
     
     function setpagenumber(pn)
     {
         pagenumber++;
         return 'rot';
     };
 ]]>
   </msxsl:script>

<!-- root template -->
<xsl:template match ="QXDocument">
<html>
<head>
  <title>QXD Document display</title>
</head>
<body>
   <xsl:apply-templates select="Header"/> 
   <xsl:apply-templates select="Page"/> 
</body>
</html>
</xsl:template>

<!-- header template -->
<xsl:template match="Header">
  <xsl:variable name = "pageheight"><xsl:value-of select="@Pageheight" /></xsl:variable>
   <div class="{user:setpageheight(number($pageheight))}"></div>
</xsl:template>
  
  
<!-- page template -->
<xsl:template match="Page">
  <xsl:variable name = "pagenumber"><xsl:value-of select="@PageNumber" /></xsl:variable>
  
  <div ID="ptext" class="{user:setpagenumber(number($pagenumber))}"></div>
  
  <xsl:apply-templates select="Item"/> 
</xsl:template>


<!-- item template -->
<xsl:template match="Item">
  <xsl:variable name = "itemtype"><xsl:value-of select="@Type" /></xsl:variable>
  <xsl:variable name = "xpos"><xsl:value-of select="@XPos" /></xsl:variable>
  <xsl:variable name = "ypos"><xsl:value-of select="@YPos" /></xsl:variable>
  <xsl:variable name = "fcolor"><xsl:value-of select="@Color" /></xsl:variable>
  <xsl:variable name = "bcolor"><xsl:value-of select="@BackColor" /></xsl:variable>
  <xsl:if test="$itemtype = 'Text'">
     <xsl:variable name = "fsize"><xsl:value-of select="@Height" /></xsl:variable>
     <xsl:variable name = "fname"><xsl:value-of select="@Font" /></xsl:variable>
     <xsl:variable name = "fweight"><xsl:value-of select="@Weight" /></xsl:variable>
     <!-- this is the important line - makes a HTML div tag -->
     <DIV style="position:absolute;left:{$xpos}mm;
     top:{string(user:getpageoffset(number($ypos)))}mm;font-family:{$fname};font-size:{$fsize}pt;font-weight:{$fweight};
     color:{$fcolor}"><xsl:value-of select="." /></DIV>
  </xsl:if>
  
  <xsl:if test="$itemtype = 'Graphic'">
     <xsl:variable name = "shape"><xsl:value-of select="@Shape" /></xsl:variable>
     <xsl:variable name = "width"><xsl:value-of select="@Width" /></xsl:variable>
     <xsl:variable name = "height"><xsl:value-of select="@Height" /></xsl:variable>
     <xsl:variable name = "linewidth"><xsl:value-of select="@Linewidth" /></xsl:variable>
     <xsl:variable name = "filltype"><xsl:value-of select="@FillType" /></xsl:variable>
     <xsl:if test="$shape='0'" >
       <xsl:if test="$filltype='Fill'" >
         <DIV style="position:absolute;left:{$xpos}mm;top:{string(user:getpageoffset(number($ypos)))}mm;width:{$width}mm;height:{$height}mm;
         background-color:{$bcolor};"> </DIV>
       </xsl:if>
       <xsl:if test="$filltype='Outline'" >
         <DIV style="position:absolute;left:{$xpos}mm;top:{string(user:getpageoffset(number($ypos)))}mm;width:{$width}mm;height:{$height}mm;
         border-style=solid;border-width={($linewidth)*3.77};border-color:{$fcolor};"> </DIV>
       </xsl:if>
     </xsl:if>
     <xsl:if test="$shape='2'" >
         <DIV style="position:absolute;left:{$xpos}mm;top:{string(user:getpageoffset(number($ypos)-2.0))}mm;width:{$width}mm;
           height:8mm;background-color:transparent;">
           <hr width="{string(number($width)*3.77)}" size="{string(number($linewidth)*3.77)}" color="{$fcolor}"/>
         </DIV>
     </xsl:if>
     <xsl:if test="$shape='3'" >
         <DIV style="position:absolute;left:{$xpos}mm;top:{string(user:getpageoffset(number($ypos)))}mm;width:{$linewidth}mm;
         height:{$height}mm;
         background-color:{$fcolor};"></DIV>
     </xsl:if>
  </xsl:if>

  <xsl:if test="$itemtype = 'Image'">
     <xsl:variable name = "width"><xsl:value-of select="@Width" /></xsl:variable>
     <xsl:variable name = "height"><xsl:value-of select="@Height" /></xsl:variable>
     <xsl:variable name = "xscale"><xsl:value-of select="@Xscale" /></xsl:variable>
     <xsl:variable name = "yscale"><xsl:value-of select="@Yscale" /></xsl:variable>
     <xsl:variable name = "imgsrc"><xsl:value-of select="@ImageFile" /></xsl:variable>
     <DIV style="position:absolute;left:{$xpos}mm;top:{string(user:getpageoffset(number($ypos)))}mm;width:{$width*$xscale}mm;height:{$height*$yscale}mm;
     background-color:#808080;"><IMG style="width:{$width*$xscale}mm;height:{$height*$yscale}mm;" SRC="{$imgsrc}"> </IMG></DIV>
  </xsl:if>
</xsl:template>

</xsl:stylesheet>

