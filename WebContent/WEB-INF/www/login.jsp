<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>PAM::LoginSystem</title>
<link href="css/style.css" rel="stylesheet" type="text/css">
<style type="text/css">
<!--
body {
	background-color: #000000;
}
-->
</style>
</head>
<script>
function login_branch(){	
	var frm = document.branch_login_form;	
	if(frm.brc_id.value == ""){
		alert("아이디를 입력하세요");
		frm.brc_id.focus();
		return false;
	}
	if(frm.password.value == ""){
		alert("비밀번호를 입력하세요");
		frm.password.focus();
		return false;
	}				
	frm.submit();		
}
var focusid = function(){
	document.branch_login_form.brc_id.focus();
}
</script>
<body leftmargin="0" topmargin="0" onload="javascript:focusid();">
<form action="loginAction.do" method="post" name="branch_login_form">	
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="15"><img src="img/box_coner1.jpg" width="15" height="14"></td>
        <td background="img/box_top.jpg">&nbsp;</td>
        <td width="15"><img src="img/box_coner2.jpg" width="15" height="14"></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="15" valign="top" background="img/box_left.jpg"><img src="img/box_left_up.jpg" width="15" height="100"></td>
        <td valign="top"><table width="100%" border="0" cellpadding="0" cellspacing="1" bgcolor="303030">
          <tr>
            <td bgcolor="#000000"><table width="100%" border="0" cellspacing="10" cellpadding="0">
              <tr>
                <td height="760"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td align="center"><img src="img/login_logo.jpg" width="360" height="170"></td>
                  </tr>
                  <tr>
                    <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                      <tr>
                        <td height="1" bgcolor="151515"></td>
                      </tr>
                      <tr>
                        <td height="1"></td>
                      </tr>
                      <tr>
                        <td align="center" bgcolor="151515" style="height: 114px"><table border="0" cellspacing="0" cellpadding="0">
                          <tr>
                            <td style="width: 226px"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                              <tr>
                                <td style="width: 241px"><table border="0" cellspacing="0" cellpadding="0" style="width: 101%">
                                  <tr>
                                    <td width="63"><img src="img/name01.gif" width="63" height="24"></td>
                                    <td align="left" style="width: 175px"><input name="brc_id" type="text" id="textfield" style="width: 169px"></td>
                                  </tr>
                                </table></td>
                              </tr>
                              <tr>
                                <td style="width: 241px"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                  <tr>
                                    <td width="63"><img src="img/name02.gif" width="63" height="24"></td>
                                    <td align="left" style="width: 175px"><input name="password" type="password" id="textfield2" style="width: 169px" onkeydown="if(event.keyCode==13){submit();}"></td>
                                  </tr>
                                </table></td>
                              </tr>
                            </table></td>
                            <td width="10"></td>
                            <td><img src="img/btn_login.gif" width="104" height="54" onclick="login_branch();" style="cursor:hand"></td>
                          </tr>
                        </table></td>
                      </tr>
                      <tr>
                        <td height="1"></td>
                      </tr>
                      <tr>
                        <td height="1" bgcolor="151515"></td>
                      </tr>
                    </table></td>
                  </tr>
                </table></td>
              </tr>
            </table></td>
          </tr>
        </table></td>
        <td width="15" valign="top" background="img/box_right.jpg"><img src="img/box_right_up.jpg" width="15" height="100"></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="15"><img src="img/box_coner3.jpg" width="15" height="14"></td>
        <td background="img/box_bottom.jpg">&nbsp;</td>
        <td width="15"><img src="img/box_coner4.jpg" width="15" height="14"></td>
      </tr>
    </table></td>
  </tr>
</table>
</form>
</body>
</html>