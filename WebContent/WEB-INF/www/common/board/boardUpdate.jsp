<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:choose>
<c:when test="${brc_lev==1}">
<jsp:include page="/inc/top1.jsp"/>    
<jsp:include page="/inc/menu3.jsp"/>
</c:when>
<c:when test="${brc_lev==2}">
<jsp:include page="/inc/top2.jsp"/>    
<jsp:include page="/inc/menu6.jsp"/>
</c:when>
</c:choose>

<script>
function write_ok(){

var frm = document.forms;

	if(frm.title.value == ""){
		alert("제목을 입력하세요");
		frm.title.focus();
		return false;
	}
	
	<c:choose><c:when test="${board_chk==3}"/>
	  <c:otherwise>   
	   Editor.save();	  
	  </c:otherwise>
	</c:choose>	
	
	frm.action = "${board_name}UpdateAction.do";
	frm.submit();
}
</script> 
 
<form name="forms" id="forms" method="post" accept-charset="utf-8" enctype="multipart/form-data" style="margin:0">                       
                          <td width="1"></td>
                          <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                              <tr>
                                <td bgcolor="#272727"><table width="100%" border="0" cellspacing="0" cellpadding="0">
<!-- {1(상단)----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------->                                
                                    <tr>
                                      <td width="113" class="Text_gray_14px"><img src="img/sub03_category${board_chk}.gif" alt="" width="99" height="60"></td>
                                      <td align="right">&nbsp;</td>
                                    </tr>
<!-- {1 )----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------->                                    
                                </table></td>
                              </tr>
                              <tr>
                                <td height="1"></td>
                              </tr>
                              <tr>
                                <td><table width="100%" border="0" cellpadding="0" cellspacing="1" bgcolor="cccccc">
<!-- {2(제목)----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------->                                    
                                    <tr>
                                      <td width="200" height="36" align="center" bgcolor="#FFFFFF" class="Text_gray2_12px_Bold"><table width="100%" border="0" cellspacing="5" cellpadding="0">
                                          <tr>
                                            <td width="12" align="right"><img src="img/icon.dot.orange.gif" alt="" width="5" height="5"></td>
                                            <td align="left" class="text545454b"><strong>제목</strong></td>
                                          </tr>
                                      </table></td>
                                      <td align="left" bgcolor="#FFFFFF" class="Text_gray2_12px_Bold"><table border="0" cellspacing="0" cellpadding="0">
                                          <tr>
                                            <td width="10">&nbsp;</td>
                                            <td><table width="100%" border="0" cellpadding="0" cellspacing="1" bgcolor="cfcfcf">
                                                <tr>
                                                  <td bgcolor="#FFFFFF"><input name="title" type="text" class="form878787" id="textfield3" size="50" value="${boardDto.title }"></td>
                                                  						<input name="seq" type="hidden" value="${boardDto.seq }">                                                  
                                                </tr>
                                            </table></td>
                                          </tr>
                                      </table></td>
                                    </tr>
<!-- {2 )----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------->
<!-- {3(첨부파일)----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------->                                    
                                    <tr>
                                      <td height="36" align="center" bgcolor="#FFFFFF"><table width="100%" border="0" cellspacing="5" cellpadding="0">
                                          <tr>
                                            <td width="12" align="right"><img src="/img/icon.dot.orange.gif" alt="" width="5" height="5"></td>
                                            <td align="left" class="text545454b"><strong>첨부파일</strong></td>
                                          </tr>
                                      </table></td>
                                      <td align="left" bgcolor="#FFFFFF"><table border="0" cellspacing="0" cellpadding="0">
                                          <tr>
                                            <td width="10">&nbsp;</td>
                                            <td style="width: 600px"><table width="100%" border="0" cellpadding="0" cellspacing="1" bgcolor="cfcfcf">
                                                <tr>
                                                  <td bgcolor="#FFFFFF"><input name="filename" type="file" class="form878787" id="textfield" size="20">등록된파일 :  ${boardDto.filename }</td>                                                                        
                                                </tr>
                                            </table></td>
                                            <td width="5">&nbsp;</td>
                                          </tr>
                                      </table></td>
                                    </tr>
<!-- {3 )----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------->  
<!-- {4(내용)----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------->                                    
                                    <tr>
                                      <td height="36" align="center" bgcolor="#FFFFFF"><table width="100%" border="0" cellspacing="5" cellpadding="0">
                                          <tr>
                                            <td width="12" align="right"><img src="img/icon.dot.orange.gif" alt="" width="5" height="5"></td>
                                            <td align="left" class="text545454b"><strong>내용</strong></td>
                                          </tr>
                                      </table></td>
                                      <td align="left" bgcolor="#FFFFFF"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                          <tr>
                                            <td>&nbsp;</td>
                                          </tr>
                                          <tr>
                                            <td><table border="0" cellspacing="0" cellpadding="0">
                                                <tr>
                                                  <td width="10">&nbsp;</td>
                                                  <td><table width="100%" border="0" cellpadding="0" cellspacing="1" bgcolor="cfcfcf">
                                                      <tr>
                                                        <td bgcolor="#FFFFFF">
<%--                                                         <textarea name="content" cols="130" rows="20" class="form878787" id="textarea2">${boardDto.content }</textarea> --%>
                                                        <jsp:include page="/editor/editor.jsp">
                                                          <jsp:param value="${boardDto.content}" name="content"/>
                                                        </jsp:include>
                                                        </td>
                                                      </tr>
                                                  </table></td>
                                                </tr>
                                            </table></td>
                                          </tr>
                                          <tr>
                                            <td>&nbsp;</td>
                                          </tr>
                                      </table></td>
                                    </tr>
<!-- {4 )-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------> 
                                </table></td>
                              </tr>
                              <tr>
                                <td height="50"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                    <tr>
                                      <td width="300" align="left">&nbsp;</td>
                                      <td align="center"><table border="0" cellspacing="4" cellpadding="0">
                                          <tr>
<!-- {5(확인,취소 버튼)----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------->                                          
                                            <td><img src="img/btn_enter.gif" onClick="write_ok();" style="cursor:pointer" width="54" height="25"></td>                                            
                                            <td><img src="img/btn_cancel.gif" onClick="history.back();" style="cursor:pointer" width="54" height="25"></td> 
<!-- {5 )-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------> 
                                          </tr>
                                      </table></td>
                                      <td width="300" align="right">&nbsp;</td>
                                    </tr>
                                </table></td>
                              </tr>
                          </table></td>
                          
</form>     

<jsp:include page="/inc/bottom.jsp"/>      