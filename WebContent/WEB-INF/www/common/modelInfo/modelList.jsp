<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="/inc/top1.jsp"/>    
<jsp:include page="/inc/menu4.jsp"/>
                        <td width="1"></td>
                        <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                          <tr>
<!-- {1(상단----------------------------------------------------------------------------------------------------------------------------------------->                            
<form name="forms" method="post" action="list.asp" style="margin:0">                            
                            <td bgcolor="#272727"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                              <tr>
                                <td width="99" class="Text_gray_14px"><img src="img/sub04_category1.gif" width="99" height="60"></td>                               
                              </tr>
                            </table></td>
</form>                            
<!-- {1 )------------------------------------------------------------------------------------------------------------------------------------------>                            
                            </tr>
                          <tr>
                            <td height="1"></td>
                          </tr>                          
                          <tr>
                            <td><table width="100%" border="0" cellpadding="0" cellspacing="1" bgcolor="cccccc">
<!-- {4(목록)----------------------------------------------------------------------------------------------------------------------------------->                            
                               <tr>
                                 <th align="center" bgcolor="e2e2e2">번호</th>
                                 <th width="100"  height="30" align="center" bgcolor="e2e2e2">이미지</th>
                                 <th align="center" bgcolor="e2e2e2">모델명</th>
                                 <th align="center" bgcolor="e2e2e2">제조사</th>              
                                 <th align="center" bgcolor="e2e2e2">출시일</th>
                                 <th align="center" bgcolor="e2e2e2">상태</th>        
                               </tr>
                                 
<!-- {5(내용)------------------------------------------------------------------------------------------------------------------------------------>
                             <c:if test="${empty MIList}"> 
                              <tr>
                                <td colspan="12" Height="200" align="center" bgColor="#ffffff">등록된 내용이 없습니다.</td>
                              </tr>
							 </c:if> 
                             
                            <c:forEach items="${MIList}" var="midto">
                               <tr>
                                 <td align="center" bgcolor="#FFFFFF" >${midto.rown}</td>
                                 <td height="100" align="center" bgcolor="#FFFFFF" ><img src="upload/model/${midto.filename}" alt="" width="65"/></td>
                                 <td align="center" bgcolor="#FFFFFF" >${midto.model_code}<br/>${midto.model_name}</td>
                                 <td align="center" bgcolor="#FFFFFF" >${midto.make_comp}</td>         
                                 <td align="center" bgcolor="#FFFFFF" >${midto.write_date}</td>                                 
                                 <c:choose>
                                 	<c:when test="${midto.state_chk == 0}"><td align="center" bgcolor="#FFFFFF" >판매예정</td></c:when>
                                 	<c:when test="${midto.state_chk == 1}"><td align="center" bgcolor="#FFFFFF" >판매중</td></c:when>
                                 	<c:when test="${midto.state_chk == 2}"><td align="center" bgcolor="#FFFFFF" >판매종료</td></c:when>
                                 	<c:when test="${midto.state_chk == 3}"><td align="center" bgcolor="#FFFFFF" >미정</td></c:when>
                                 </c:choose>                                                              					                                    
                               </tr> 
 							</c:forEach>
<!-- {5 )------------------------------------------------------------------------------------------------------------------------------------------>                  
                            </table></td>
                            <td width="300">&nbsp;</td>
                          </tr>
                          <tr>
                            <td height="50"><table width="100%" border="0" cellpadding="0" cellspacing="0">
<!-- {4(PAGING)------------------------------------------------------------------------------------------------------------------------------------>                              
                              <tr>                            		                        		                                       
                                <td width="200">&nbsp;</td>
                                <td align="center"><table border="0" cellspacing="0" cellpadding="0">
                                    <tr>
                                      <td>
		                                 ${MIPDto.pHtml}    
									  </td>
                                    </tr>
                                </table></td>
                                <td width="200">&nbsp;</td>
                              </tr>
<!-- {4 )-------------------------------------------------------------------------------------------------------------------------------------------->                               
                            </table></td>
                          </tr>
                        </table></td>
                        

                        
<jsp:include page="/inc/bottom.jsp"/>                            