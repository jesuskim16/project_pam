<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>${site_name}</title>
<link href="css/style.css" rel="stylesheet" type="text/css">
<style type="text/css">
<!--
body {
	background-color: #000000;
}
-->
</style>
</head>
<body>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="15"><img src="img/box_sub_coner1.jpg" width="15" height="74"></td>
        <td align="center" background="img/box_sub_top_bg.jpg"><img src="img/logo.gif" width="360" height="44"></td>
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
                    <td height="700" align="center"><table border="0" cellspacing="5" cellpadding="0">
                      <tr>
<!-- 1 판매점정보/고객정보-->                        
                        <td width="150" height="120" align="center"><table border="0" cellspacing="0" cellpadding="0">
                        <c:choose>
   					    <c:when test="${brc_lev==1}">
                          <tr>
                            <td align="center"><a href="salesList.do"><img src="img/main_icon12.gif" width="57" height="57"></a></td> 
                          </tr>
                          <tr>
                            <td height="30" align="center"><span class="Text_gray4_12px">판매점정보</span></td>
                          </tr>
                        </c:when>
                        <c:when test="${brc_lev==2}">
                          <tr>
                            <td align="center"><a href="clientList.do"><img src="img/main_icon10.gif" width="57" height="57"></a></td> 
                          </tr>
                          <tr>
                            <td height="30" align="center"><span class="Text_gray4_12px">고객정보</span></td>
                          </tr>  
                        </c:when>
                        </c:choose>  
                        </table></td>
                        <td width="15"></td>
<!-- 2-->                        
                        <td width="150" height="120" align="center"><table border="0" cellspacing="0" cellpadding="0">
                        <c:choose>
   					    <c:when test="${brc_lev==1}">
                          <tr>
                            <td align="center"><a href="salesRank.do"><img src="img/main_icon07.gif" width="57" height="57"></a></td>
                          </tr>
                          <tr>
                            <td height="30" align="center"><span class="Text_gray4_12px">판매점순위</span></td>
                          </tr>
                        </c:when>
                        <c:when test="${brc_lev==2}">
                          <tr>
                            <td align="center"><a href="clientInsert.do"><img src="img/main_icon09.gif" width="57" height="57"></a></td>
                          </tr>
                          <tr>
                            <td height="30" align="center"><span class="Text_gray4_12px">고객등록</span></td>
                          </tr>
                        </c:when>
                        </c:choose>
                        </table></td>
                        <td width="15"></td>
<!-- 3-->
                        <td width="150" height="120" align="center"><table border="0" cellspacing="0" cellpadding="0">
                          <tr>
                            <td align="center"><a href="salesRcd.do"><img src="img/main_icon08.gif" width="57" height="57"></a></td>
                          </tr>
                          <tr>
                            <td height="30" align="center"><span class="Text_gray4_12px">주요실적</span></td>
                          </tr>
                        </table></td>

<!-- /3-->                        
                      </tr>
                      <tr><td height="20"></td></tr>
                      <tr>
<!-- 4-->                      
                        <td width="150" height="120" align="center"><table border="0" cellspacing="0" cellpadding="0">
                          <tr>
                            <td align="center"><a href="noticeList.do"><img src="img/main_icon01.gif" width="57" height="57"></a></td>
                          </tr>
                          
                          <tr>
                            <td height="30" align="center"><span class="Text_gray4_12px">공지사항</span></td>
                          </tr>
                        </table></td>
                        <td width="15"></td>
<!-- 5-->
                        <td width="150" height="120" align="center"><table border="0" cellspacing="0" cellpadding="0">
                          <tr>
                            <td align="center"><a href="priceInfoList.do"><img src="img/main_icon06.gif" width="57" height="57"></a></td>
                          </tr>
                          <tr>
                            <td height="30" align="center"><span class="Text_gray4_12px">단가표</span></td>
                          </tr>
                        </table></td>
                        <td width="15"></td>
<!-- 6-->
                        <td width="150" height="120" align="center"><table border="0" cellspacing="0" cellpadding="0">
                          <tr>
                            <td align="center"><a href="freeBoardList.do"><img src="img/main_icon03.gif" width="57" height="57"></a></td>
                          </tr>
                          <tr>
                            <td height="30" align="center"><span class="Text_gray4_12px">자유게시판</span></td>
                          </tr>
                        </table></td>
<!-- /6-->                        
                      </tr>
                      <tr><td height="20"></td></tr>                      
                      <tr>
<!-- 7-->                      
                        <td width="150" height="120" align="center"><table border="0" cellspacing="0" cellpadding="0">
                          <tr>
                            <td align="center"><a href="modelList.do"><img src="img/main_icon04.gif" width="57" height="57"></td>
                          </tr>
                          <tr>
                            <td height="30" align="center"><span class="Text_gray4_12px">모델정보</span></td>
                          </tr>
                        </table></td>
                        <td width="15"></td>
<!-- 8-->                        
                        <td width="150" height="120" align="center"><table border="0" cellspacing="0" cellpadding="0">
                          <tr>
                            <td align="center"><a href="#"><img src="img/main_icon11.gif" width="57" height="57"></a></td>
                          </tr>
                          <tr>
                            <td height="30" align="center"><span class="Text_gray4_12px">스케줄</span></td>
                          </tr>
                        </table></td>
                        <td width="15"></td>
<!-- 9-->                        
                        <td width="150" height="120" align="center"><table border="0" cellspacing="0" cellpadding="0">
                          <tr>
                            <td align="center"><a href="logout.do"><img src="img/main_icon05.gif" width="57" height="57"></a></td>
                          </tr>
                          <tr>
                            <td height="30" align="center"><span class="Text_gray4_12px">로그아웃</span></td>
                          </tr>
                        </table></td>
<!-- /9-->                        
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
</body>
</html>