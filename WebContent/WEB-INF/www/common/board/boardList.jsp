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

<script type="text/javascript">
<!--
var search = function(){
	var f = document.forms;
	f.action='${board_name}List.do';
	f.submit();
}
//-->
</script>
                        <td width="1"></td>
                        <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0" >
                          <tr>
<!-- {1(상단----------------------------------------------------------------------------------------------------------------------------------------->                            
<form name="forms" method="post" style="margin:0" >                            
                            <td bgcolor="#272727"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                              <tr>
                                <td width="99" class="Text_gray_14px"><img src="img/sub03_category${board_chk}.gif" width="99" height="60"></td>
                                <td align="right"><table border="0" cellspacing="0" cellpadding="0">
                                    <tr>
                                        <td><select name="searchCondition" id="select">
                                           <option value="title"   <c:if test="${pageDto.searchCondition == 'title'}">selected</c:if> >제목</option>
                                          <c:if test="${board_chk==1||board_chk==2}">
                                           <option value="content" <c:if test="${pageDto.searchCondition == 'content'}">selected</c:if> >내용</option>
                                          </c:if>
                                           <option value="brc_id"  <c:if test="${pageDto.searchCondition == 'brc_id'}">selected</c:if>>등록자</option>                                          
                                        </select></td>
                                      <td>&nbsp;</td>
                                      <td><input name="searchKeyword" type="text" id="textfield3" size="23" value="${pageDto.searchKeyword }"></td>
                                      <td width="5"></td>
                                      <td><input type="image" src="img/btn_search.gif" width="71" height="25" onclick="search()"></td>
                                      <td width="10">&nbsp;</td>
                                    </tr>
                                </table></td>
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
<!-- {2(게시판 상단)----------------------------------------------------------------------------------------------------------------------------------->                            
                                  <tr>
                                    <td width="40" width="40" height="30" align="center" bgcolor="e2e2e2" >번호</td>
                                    <td height="30" align="center" bgcolor="e2e2e2">제 목</td>
                                <c:choose>
                                  <c:when test="${board_chk==3}">                                    
                                    <td width="200" height="30" align="center" bgcolor="e2e2e2">파 일</td>
                                    <td width="40" height="30" align="center" bgcolor="e2e2e2">다운</td>
                                  </c:when>
                                  <c:otherwise>
                                    <td width="40" height="30" align="center" bgcolor="e2e2e2">첨부</td>
                                    <td width="40" height="30" align="center" bgcolor="e2e2e2">조회</td>
                                  </c:otherwise>
                                </c:choose>
                                    <td width="140" height="30" align="center" bgcolor="e2e2e2">등록자</td>                                    
                                    <td width="140" height="30" align="center" bgcolor="e2e2e2">등록일</td>
                                  </tr>
<!-- {2 )------------------------------------------------------------------------------------------------------------------------------------------>                                  
<!-- {3(게시판본문)------------------------------------------------------------------------------------------------------------------------------------>                             
                               	<c:if test="${empty fbList}">
                               	<tr>
                               		<td colspan="6" height="200" align="center" bgcolor="#FFFFFF"><h1>검색값이 없습니다.</h1></td>
                               	</tr>
                               	</c:if>
                               	<c:forEach items="${fbList }" var="fdto">
                                  <tr>
                                    <td height="28" align="center" bgcolor="#FFFFFF" >${fdto.rown}</td> 
                                <c:choose>
                                  <c:when test="${board_chk==3}">
                                    <td height="28" bgcolor="#FFFFFF">&nbsp;&nbsp;${fdto.title}</td>                                    
                                    <td height="28" align="left" bgcolor="#FFFFFF">&nbsp;&nbsp;<span class="Text_blue_12px_unberline"><a href="download.do?filename=${fdto.filename}?board_name=${board_name}" >${fdto.filename}</a></span></td>
                                  </c:when>
                                  <c:otherwise>
                                    <td height="28" bgcolor="#FFFFFF">&nbsp;&nbsp;<a href="${board_name}View.do?seq=${fdto.seq}&brc_id=${fdto.brc_id }">${fdto.title }
                                    <c:if test="${fdto.rp_cnt != 0}">
                                    [${fdto.rp_cnt}]
                                    </c:if>
                                    </a></td>
                                    <td height="28" align="center" bgcolor="#FFFFFF"><c:if test="${fdto.filename}"><img src="img/icon.file.gif" alt="첨부파일"/></c:if></td>
                                  </c:otherwise>
                                </c:choose>
                                	<td height="28" align="center" bgcolor="#FFFFFF">${fdto.readcount }</td>
                                    <td height="28" align="left" bgcolor="#FFFFFF">&nbsp;&nbsp;${fdto.brc_id }</td>                                    
                                    <td height="28" align="center" bgcolor="#FFFFFF">${fdto.write_date }</td>
                                  </tr> 
                                 </c:forEach>      
                            </table></td>
                          </tr>
                          <tr>
                            <td height="50"><table width="100%" border="0" cellpadding="0" cellspacing="0">
<!-- {4(PAGING)------------------------------------------------------------------------------------------------------------------------------------>                              
                              <tr>                            
		                        
                                <td width="300">
                                 <c:if test="${!((board_chk==1||board_chk==3)&&brc_lev==2)}">
                                  <a href="${board_name}Insert.do"><img src="img/btn_write.gif"></a>
                                 </c:if>  
                                </td>
                                <td align="center"><table border="0" cellspacing="0" cellpadding="0">
                                    <tr>
                                      <td>
										<table border='0' cellspacing='0' cellpadding='0'>
											<tr>
												<td class='Text_gray2_11px'>
												<c:forEach items="${page}" var="page">
												${page}
												</c:forEach>
												</td>
											</tr>
										</table>
									</td>
                                    </tr>
                                </table></td>
                                <td width="400">&nbsp;</td>
                              </tr>
<!-- {4 )-------------------------------------------------------------------------------------------------------------------------------------------->                               
                            </table></td>
                          </tr>
                        </table></td>
                        

                        
<jsp:include page="/inc/bottom.jsp"/>                            