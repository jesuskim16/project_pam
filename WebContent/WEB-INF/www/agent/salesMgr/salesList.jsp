<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<jsp:include page="/inc/top1.jsp"/>    
<jsp:include page="/inc/menu2.jsp"/>
<script type="text/javascript" src="js/agent/salesMgr/salesList.js"></script>




<!-- 보이기/숨기기 개수제한 -->
<form name="count" method="post">
<input type="hidden" name="countvalue" value="0">
<input type="hidden" name="sendseq" value="0">
</form>
                        <td width="1"></td>
                        <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                          <tr>
<!-- {1(상단----------------------------------------------------------------------------------------------------------------------------------------->                            
                            
                            <td bgcolor="#272727"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                              <tr>
                                <td width="99" class="Text_gray_14px"><img src="img/sub02_category2.gif" width="99" height="60"></td>                               
                              </tr>
                            </table></td>

<!-- {1 )------------------------------------------------------------------------------------------------------------------------------------------>                            
                            </tr>
                          <tr>
                            <td height="1"></td>
                          </tr>                          
                          <tr>
                            <td>
                            <table width="100%" border="0" cellpadding="0" cellspacing="1" bgcolor="cccccc">
<!-- {4(목록)----------------------------------------------------------------------------------------------------------------------------------->                            
                               <tr>
                                 <th width="40" height="40" align="center" bgcolor="e2e2e2" >번호</th>
                                 <th align="center" bgcolor="e2e2e2">판매점명/아이디</th>
                                 <th align="center" bgcolor="e2e2e2">연락처</th>
                                 <th align="center" bgcolor="e2e2e2">주소</th>
                                 <th align="center" bgcolor="e2e2e2">대표</th>
                                 <th align="center" bgcolor="e2e2e2">대표 연락처</th>						                                    
                                 <th align="center" bgcolor="e2e2e2">생성일</th>						                                    
                                 <th align="center" bgcolor="e2e2e2"></th>
                               </tr>
<!-- {4 )------------------------------------------------------------------------------------------------------------------------------------------>                                  
<!-- {5(내용)------------------------------------------------------------------------------------------------------------------------------------>                             
                           		<c:if test="${empty list}">
	                          	  	  <tr>
	                          	  	  	<td colspan="7" height="300" valign="middle" align="center" bgcolor="#FFFFFF" ><h1>검색값이 없습니다.</h1></td>
	                          	  	  </tr>
	                          	</c:if>
	                          	  	  
                           		<c:forEach items="${list}" var="sdto">
                           		<tr id="hidden_${sdto.seq}" style="display:table-row">
                                <td height="28" align="center" bgcolor="#FFFFFF" >${ sdto.rown}</td>
                                <td align="center" bgcolor="#FFFFFF" ><h5>${ sdto.brc_name}</h5>${sdto.brc_id}</td>
                                <td align="center" bgcolor="#FFFFFF" >${ sdto.brc_phone}</td>
                                <td align="left" bgcolor="#FFFFFF" >${ sdto.brc_post} ${sdto.brc_addr1} ${sdto.brc_addr2}</td>
                                <td align="left" bgcolor="#FFFFFF" >${ sdto.brc_boss}</td>
                                <td align="center" bgcolor="#FFFFFF" >${ sdto.boss_phone}</td>
                                <td align="center" bgcolor="#FFFFFF" >${ sdto.write_date}</td>
                                <td align="center" bgcolor="#FFFFFF" >
                                 	<input type="button" onclick="javascript:HiddenSeem('hidden_${sdto.seq}','seem_${sdto.seq}')" value="수정">
                                 	<input type="button" onclick="javascript:listdelete('${sdto.seq}')" value="삭제">
                                 </td>
                               </tr>
                               <form name="reg_${sdto.seq}" action="salesUpdate.do" method="post">
                               <tr id="seem_${sdto.seq}" style="display:none">
                               
                                 <td height="28" align="center" bgcolor="#FFFFFF" >${sdto.rown}
                                 <input type="hidden" name="seq" value="${sdto.seq}" class="input_gray3"></td>
                               
                                 <td align="center" bgcolor="#FFFFFF" ><table>
                                 <tr>
                                 <td><input type="text" name="brc_name" value="${sdto.brc_name}" size="10" class="input_gray3"></td>
                                 </tr>
                                 <tr>
                                 <td><input type="text" name="brc_id" value="${sdto.brc_id}" size="10" class="input_gray3"></td></tr>
                                 </table></td>
                                 
                               
                                 <td align="center" bgcolor="#FFFFFF" >
                                 <input type="text" name="brc_phone" value="${ sdto.brc_phone}" size="13" class="input_gray3"></td>
                               
                                 <td align="left" bgcolor="#FFFFFF" >
                                 <input type="text" name="brc_post" value="${ sdto.brc_post}" size="8" class="input_gray3" readonly="readonly">
                                 <input type="text" name="brc_addr1" value="${sdto.brc_addr1}" size="60" class="input_gray3" readonly="readonly"><br/>
                                 <input type="text" name="brc_addr2" value="${sdto.brc_addr2}" size="53" class="input_gray3">
                                 <input type="button" name="post" value="우편번호 검색" onclick="javascript:openZipcode('reg_${sdto.seq}');" /></td>
                               
                                 <td align="left" bgcolor="#FFFFFF" >
                                 <input type="text" name="brc_boss" value="${ sdto.brc_boss}" size="5" class="input_gray3"></td>
                               
                                 <td align="center" bgcolor="#FFFFFF" >
                                 <input type="text" name="boss_phone" value="${ sdto.boss_phone}" size="12" class="input_gray3"></td>
                               
                                 <td align="center" bgcolor="#FFFFFF" >
                                 <input type="text" name="write_date" value="${ sdto.write_date}" size="10" class="input_gray3"></td>
                               
                                 <td align="center" bgcolor="#FFFFFF" >
                                 <input type="submit" value="완료">
                                 <input type="button" value="취소" onclick="javascript:location.href='salesList.do?pg=${page.pg}'">l
                                 </td>
                               </tr>
                               </form>
                               </c:forEach>
                                                 
                            </table></td>
                          </tr>
                          <tr>
                            <td height="50"><table width="100%" border="0" cellpadding="0" cellspacing="0">
                            
<!-- {6(PAGING)------------------------------------------------------------------------------------------------------------------------------------>                              
                              <tr>                            
		                        
                                <td align="center"><table border="0" cellspacing="0" cellpadding="0">
                                    <tr>
                                      <td>
		                                 	${page.pHtml}  
									  </td>
                                    </tr>
                                </table></td>
                                
                              </tr>
<!-- {6 )-------------------------------------------------------------------------------------------------------------------------------------------->                               
                            </table></td>
                          </tr>
                        </table></td>
                        
<jsp:include page="/inc/bottom.jsp"/>  
                         