<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>${title_name}</title>
<link href="css/style.css" rel="stylesheet" type="text/css">
<style type="text/css">
<!--
body {
	background-color: #000000;
}
-->
</style>
<script type="text/javascript">
<!--
	function MM_swapImgRestore() { //v3.0
	  var i,x,a=document.MM_sr; for(i=0;a&&i<a.length&&(x=a[i])&&x.oSrc;i++) x.src=x.oSrc;
	}
	function MM_preloadImages() { //v3.0
	  var d=document; if(d.images){ if(!d.MM_p) d.MM_p=new Array();
	    var i,j=d.MM_p.length,a=MM_preloadImages.arguments; for(i=0; i<a.length; i++)
	    if (a[i].indexOf("#")!=0){ d.MM_p[j]=new Image; d.MM_p[j++].src=a[i];}}
	}

	function MM_findObj(n, d) { //v4.01
	  var p,i,x;  if(!d) d=document; if((p=n.indexOf("?"))>0&&parent.frames.length) {
	    d=parent.frames[n.substring(p+1)].document; n=n.substring(0,p);}
	  if(!(x=d[n])&&d.all) x=d.all[n]; for (i=0;!x&&i<d.forms.length;i++) x=d.forms[i][n];
	  for(i=0;!x&&d.layers&&i<d.layers.length;i++) x=MM_findObj(n,d.layers[i].document);
	  if(!x && d.getElementById) x=d.getElementById(n); return x;
	}

	function MM_swapImage() { //v3.0
	  var i,j=0,x,a=MM_swapImage.arguments; document.MM_sr=new Array; for(i=0;i<(a.length-2);i+=3)
	   if ((x=MM_findObj(a[i]))!=null){document.MM_sr[j++]=x; if(!x.oSrc) x.oSrc=x.src; x.src=a[i+2];}
	}
-->
</script>
</head>
<body onLoad="MM_preloadImages('img/m01_over.gif','img/m02_over.gif','img/m03_over.gif','img/m04_over.gif','img/m05_over.gif')">
  <tr>
    <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="15"><img src="img/box_sub_coner1.jpg" width="15" height="74"></td>
        <td align="center" background="img/box_sub_top_bg.jpg">
        <td align="center" background="img/box_sub_top_bg.jpg"><a href="/project_pam/main.do"><img src="img/logo.gif" width="360" height="44"></a></td>
        <td width="15"><img src="img/box_sub_coner2.jpg" width="15" height="74"></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="15" valign="top" background="img/box_left.jpg"><img src="img/box_left_up.jpg" width="15" height="100"></td>
        <td valign="top"><table width="100%" border="0" cellpadding="0" cellspacing="1" bgcolor="303030">
          <tr>
            <td bgcolor="#000000"><table width="100%" border="0" cellspacing="1" cellpadding="0">
              <tr>
                <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                          <td width="10"><img src="img/bar_left.gif" width="10" height="40"></td>
                          <td align="center" background="img/bar_bg.gif"><table border="0" cellspacing="0" cellpadding="0">
                            <tr>
                            <!-- 주요실적 -->
                              <td width="150" align="center" class="Text_gray4_12px_Bold"><a href="salesRecord_list.do" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('Image22','','img/m01_over.gif',1)"><img src="img/m01.gif" name="Image22" width="100" height="40" border="0"></a></td>
                            <!-- 판매점 -->                             
                              <td width="150" align="center"><a href="salesInfo_list.do" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('Image24','','img/m02_over.gif',1)"><img src="img/m02.gif" name="Image24" width="100" height="40" border="0"></a></td>
                            <!-- 게시판 -->
                              <td width="150" align="center"><a href="notice_list.do" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('Image25','','img/m03_over.gif',1)"><img src="img/m03.gif" name="Image25" width="100" height="40" border="0"></a></td>
                            <!-- 모델정보 -->
                              <td width="150" align="center"><a href="modelRegister_list.do" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('Image26','','img/m04_over.gif',1)"><img src="img/m04.gif" name="Image26" width="100" height="40" border="0"></a></td>
                            </tr>
                          </table></td>
                          <td width="10"><img src="img/bar_right.gif" width="10" height="40"></td>
                        </tr>
                    </table></td>
                  </tr>
                  <tr>
                    <td height="30" align="center"><table border="0" cellspacing="0" cellpadding="0">
                    </table></td>
                  </tr>
