<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<c:choose>
	<c:when test="${brc_lev==1}">
		<jsp:include page="/inc/top1.jsp"/>
	</c:when>
	<c:when test="${brc_lev==2}">
		<jsp:include page="/inc/top2.jsp"/>
	</c:when>
</c:choose> 
<jsp:include page="/inc/menu4.jsp"/>  
                        <td width="1"></td>
                        <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                          <tr>
                            <td bgcolor="#272727"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                              <tr>
                                <td width="99" class="Text_gray_14px"><img src="img/sub01_category4.gif" width="99" height="60"></td>
                                <td align="right"></td>
                              </tr>
	                          <tr>
	                            <td height="1"></td>
	                          </tr>                          
	                          <tr>
	                            <td><table width="100%" border="0" cellpadding="0" cellspacing="1" bgcolor="cccccc">
	                              <tr>
                                    <td height="300" align="center" bgcolor="#FFFFFF" ></td>    
                                  </tr> 
	                            </table></td>
	                          </tr>      	                        
                              
                            </table></td>
                          </tr>
                        </table></td>                        
<jsp:include page="/inc/bottom.jsp"/>                            