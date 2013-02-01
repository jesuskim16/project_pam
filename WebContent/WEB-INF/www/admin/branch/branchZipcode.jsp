<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>PAM::우편번호검색</title>
<link href="css/post.css" rel="stylesheet" type="text/css">
</head>
<body>
 <script type="text/javascript">
	var setZipcode = function (zipcode1 , zipcode2, addr1) {
		var f = opener.document.branch_form;
		
		f.br_post1.value = zipcode1;
		f.br_post2.value = zipcode2;
		f.brc_post.value = zipcode1+"-"+zipcode2;
		f.brc_addr1.value = addr1;

	self.close();		
	}
	

</script>

<body onload="document.form1.dong.focus();">
<table width="400" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td><img src="img/pop_title03.gif" width="400" height="50"></td>
  </tr>
  <tr>
    <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="3" bgcolor="d8d8d8"></td>
        <td align="center"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="10"></td>
                <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                      <td height="1" bgcolor="eaeaea"></td>
                    </tr>
                    <tr>
                      <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                          <tr>
                            <td><img src="img/pop.text01.gif" width="380" height="45"></td>
                          </tr>
                          <tr>
                            <td><table width="100%" border="0" cellpadding="0" cellspacing="3" bgcolor="#e1e1e1">
                                <tr>
                                  <td bgcolor="#FFFFFF"><table width="100%" border="0" cellspacing="10" cellpadding="0">
                                      <tr>
                                        <td align="center"><form action="BranchZipcodeAction.do" method="post" name="zip" style="margin:0">
                                          <input type="hidden" value="<%//=gubun%>" name="gubun">
                                          <table border="0" cellspacing="0" cellpadding="0">
                                            <tr>
                                              <td><img src="img/pop.name02.gif" width="43" height="26"></td>
                                              <td><table width="100%" border="0" cellpadding="0" cellspacing="1" bgcolor="cfcfcf">
                                                  <tr>
                                                    <td bgcolor="#FFFFFF"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                                        <tr>
                                                          <td width="10">&nbsp;</td>
                                                          <td><input name="dong" type="text" class="freeinput_white2" id="textfield" size="20" value="${dong}"></td>
                                                        </tr>
                                                    </table></td>
                                                  </tr>
                                              </table></td>
                                              <td width="50" align="right"><input type="image" src="img/bts.s03.gif" width="40" height="18"></td>
                                            </tr>
                                          </table>
                                        </form></td>
                                      </tr>
                                  </table></td>
                                </tr>
                            </table></td>
                          </tr>
                      </table></td>
                    </tr>
                    <tr>
                      <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                          <tr>
                            <td><img src="img/pop.text02.gif" alt="" width="380" height="31"></td>
                          </tr>
                          <tr>
                            <td><table width="100%" border="0" cellpadding="0" cellspacing="5" bgcolor="#e1e1e1">
                              <tr>
                                <td bgcolor="#FFFFFF"><table width="100%" border="0" cellspacing="1" cellpadding="0">
                                    <tr>
                                      <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                          <tr>
                                            <td height="26" bgcolor="ededed"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                                <tr>
                                                  <td width="100" align="center">
												    <strong class="text545454b">우편번호</strong>
											      </td>
                                                  <td width="2">
												    <img src="img/pop.table.line.gif" width="2" height="29">
											      </td>
                                                  <td align="center">
												    <strong class="text545454b">주소</strong>
											      </td>
                                                </tr>
                                            </table></td>
                                          </tr>
                                          <tr>
                                            <td height="1" bgcolor="d1d1d1"></td>
                                          </tr>
                                          
                                          	<c:if test="${empty brList}">

                                          <tr>
                                            <td align="center" colspan="2" height="45">조회하신 우편번호가 없거나 조회를 눌러주세요.<br>
                                              (건물명칭으로 조회도 가능합니다.)</td>
                                          </tr>
                                          </c:if>
                                          <c:forEach items="${brList}" var="zdto">
                                          
                                          
                                          
                                          <tr>
                                            <td onclick="javascript:setZipcode('${zdto.zipcode1}' , '${zdto.zipcode2}', '${zdto.addr1}');" style="cursor:hand">
											  <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                                <tr>
                                                  <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                                      <tr>
                                                        <td width="100" height="24" align="center">[${zdto.zipcode1} - ${zdto.zipcode2}]</td>
                                                        <td>&nbsp;${zdto.addr1}</td>
                                                      </tr>
                                                  </table></td>
                                                </tr>
                                                <tr>
                                                  <td height="1" bgcolor="d1d1d1"></td>
                                                </tr>
                                              </table>
											</td>
                                          </tr>
                    					</c:forEach>
                    				
                                      </table></td>
                                    </tr>
                                </table></td>
                              </tr>
                            </table></td>
                          </tr>
                      </table></td>
                    </tr>
                </table></td>
                <td width="10"></td>
              </tr>
            </table></td>
          </tr>
          <tr>
            <td align="right"><table border="0" cellspacing="8" cellpadding="0">
              <tr>
                <td><img src="img/btn_mini12.gif" width="54" height="22"  onClick="window.close();" style="cursor:hand"></td>
              </tr>
            </table></td>
          </tr>
        </table></td>
        <td width="3" bgcolor="d8d8d8"></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td height="3" bgcolor="d8d8d8"></td>
  </tr>
</table>

<%
//DbRec.Close
//set DbRec=nothing
%>

