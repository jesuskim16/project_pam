<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="/inc/top1.jsp"/>    
<jsp:include page="/inc/menu2.jsp"/>  

<script type="text/javascript" src="js/setDate.js"></script>
<script type="text/javascript" src="js/agent/salesMgr/salesRank.js"></script>


<form name="result_form" method="get" style="margin:0">
                        <td width="1"></td>
                        <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                          <tr>
<!-- 상단 1 ------------------------------------------------------------------------------------------------------------------------------------>
                          
                          <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                            <tr bgcolor="cccccc">
                              <td height="10" colspan="2"></td>
                            </tr>
                            <tr bgcolor="cccccc">
                              <td width="50"></td>
                              <td height="25"><table border="0" cellspacing="0" cellpadding="0">
                                <tr>
                     <!-- 당일 -->  <td class="pr10"><a href="javascript:pageLoad();"><img src="img/btn_01.gif" width="40" height="21"></a></td>
                     <!-- 전일 -->  <td class="pr10"><a href="javascript:m_yesterday();"><img src="img/btn_02.gif" width="40" height="21"></a></td>
                     <!-- 7일 -->  <td class="pr10"><a href="javascript:m_week();"><img src="img/btn_03.gif" width="40" height="21"></a></td>
                     <!-- 10일 --> <td class="pr10"><a href="javascript:m_tenDay();"><img src="img/btn_04.gif" width="40" height="21"></a></td>
                     <!-- 15일 --> <td class="pr10"><a href="javascript:m_ftDay();"><img src="img/btn_05.gif" width="40" height="21"></a></td>
                     <!-- 한달 -->  <td class="pr10"><a href="javascript:m_amonth();"><img src="img/btn_06.gif" width="40" height="21"></a></td>
                     <!-- 3달 -->  <td class="pr10"><a href="javascript:m_tmonth();"><img src="img/btn_07.gif" width="40" height="21"></a></td>
                     <!-- 6달 -->  <td><a href="javascript:m_smonth();"><img src="img/btn_08.gif" width="40" height="21"></a></td>
                                </tr>
                              </table></td>
                            </tr>
                            <tr bgcolor="cccccc">
                              <td width="50"></td>
                              <td height="40" class="line_bg_bottom1"><table width="500" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                  <td>
                                  <input type="date" name="s_sdate" size="10" value="${page.s_sdate}" />
                                  ~                                 
                                  <input type="date" name="s_edate" size="10" value="${page.s_edate}" />
                                  
                                  </td>
                                  <td valign="middle">
                                  <select name="SalesRankSelectBox" >
                                  	<option value="1" >판매 개수 순위</option>
                                  	<option value="2" 
                                  	<c:if test="${SRSB == 2}"> selected="selected"</c:if>
                                  	>판매 수익 순위</option>
                                  </select>
                                  <input type="button" value="확인" onclick="javascript:RankForm('charthidden')">
                                  </td>                                                                                    
                                </tr>
                              </table></td>
                            </tr>
                            <tr bgcolor="cccccc">
                              <td height="10" colspan="2"></td>
                            </tr>
                            <tr bgcolor="#272727">
                              <td height="1" colspan="2"></td>
                            </tr>                            
                          </table></td>
							</tr>                                                
<!----- --------------------------------------------------------------------------------------------------------------------------------------------------->
	                          <tr>
	                            <td height="100" bgcolor="FFFFFFF"><table width="100%" border="0" cellspacing="0" cellpadding="0">
	                          	  <tr valign="top">
<!-- 그래프 -------------------------------------------------------------------------------------------------------------------------------------->
	                          	  	<td valign="top">
	                          	  	<div id="charthidden" style="display:${hidden}">
	                          	  	<img src="${chart}" >
	                          	  	</div>
	                          	  	</td>
	                          	  	<td><table width="100%" border="0" cellspacing="0" cellpadding="0">
<!-- 그래프 -------------------------------------------------------------------------------------------------------------------------------------->	                          	  	
<!-- 리스트 -------------------------------------------------------------------------------------------------------------------------------------->	                          	  	
	                          	  	  <tr align="center" height="40">
	                          	  	  	<th width="10"></th>
		                          	  	<th align="center" bgcolor="e2e2e2">순위</th>
		                          	  	<th align="center" bgcolor="e2e2e2">판매점 이름</th>
		                          	  	<th align="center" bgcolor="e2e2e2">판매 개수</th>
		                          	  	<th align="center" bgcolor="e2e2e2">수익</th>
		                          	  	<th width="10"></th>
	                          	  	  </tr>
	                          	  	  <c:if test="${empty list}">
	                          	  	  <tr>
	                          	  	  	<td colspan="4" height="300" valign="middle" align="center" bgcolor="#FFFFFF" ><h1>검색값이 없습니다.</h1></td>
	                          	  	  </tr>
	                          	  	  </c:if>
	                          	  	  
	                          	  	  <c:forEach items="${list}" var="rkdto">
	                          	  	  <tr height="30">
	                          	  	  	<td></td>
	                          	  	    <td align="center" bgcolor="#FFFFFF" >${rkdto.rown}</td>
	                          	  	  	<td align="center" bgcolor="#FFFFFF" >${rkdto.brc_name}</td>
	                          	  	  	<td align="center" bgcolor="#FFFFFF" >${rkdto.salesnumber} 대</td>
	                          	  	  	<td align="center" bgcolor="#FFFFFF" >${rkdto.salesrebate} 만원</td>
	                          	  	  </tr>
	                          	  	  </c:forEach>
	                          	  	  
<!-- {4(PAGING)------------------------------------------------------------------------------------------------------------------------------------>                              
                              <tr >                            
		                       
                               <td colspan="5" width="800" align="center"><table border="0" cellspacing="0" s_edate="0">
                                    <tr>
                                      <td colspan="4" align="center">
		                                 	${page.pHtml}  
									  </td>
                                    </tr>
                                </table></td>
                                
                                
                              </tr>
<!-- {4 )-------------------------------------------------------------------------------------------------------------------------------------------->                               	                          	  	  
								  </table></td>
	                          	  </tr>
	                          	  
	                            </table></td>
	                          </tr>      	                                                      
                            </table></td>
</form>

                        <jsp:include page="/inc/bottom.jsp"/>                         