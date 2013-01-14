<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="/inc/top1.jsp"/>    
<jsp:include page="/inc/menu2.jsp"/>  
<script type="text/javascript" src="js/setDate.js"></script>
<script type="text/javascript">



//차트 
function RankChart(count, brc_name, salesnumber, salesrebate){
	document.result_form.count.value = count;
	document.result_form.brc_name.value = brc_name;
	document.result_form.salesnumber.value = salesnumber;
	document.result_form.salesrebate.value = salesrebate;
	document.result_form.action="salesRank.do";
	document.result_form.submit();
}

</script>



                        <td width="1"></td>
                        <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                          <tr>
<!-- 상단 1 ------------------------------------------------------------------------------------------------------------------------------------>
                          <form name="result_form" method="post" style="margin:0">
                          <input type="text" name="count">
                          
	<input type="text" name="brc_name">
	<input type="text" name="salesnumber">
	<input type="text" name="salesrebate">
	
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
                                  <input type="submit" value="확인">
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
                          </form>                                                    
<!----- --------------------------------------------------------------------------------------------------------------------------------------------------->
	                          <tr>
	                            <td height="100" bgcolor="FFFFFFF"><table width="100%" border="0" cellspacing="0" cellpadding="0">
	                          	  <tr>
<!-- 그래프 -------------------------------------------------------------------------------------------------------------------------------------->
	                          	  	
	                          	  	<td width="100">
	                          	  	<img src="${chart}" >
	                          	  	</td>
	                          	  	
	                          	  	<td><table width="100%" border="0" cellspacing="0" cellpadding="0">
<!-- 그래프 -------------------------------------------------------------------------------------------------------------------------------------->	                          	  	
<!-- 리스트 -------------------------------------------------------------------------------------------------------------------------------------->	                          	  	
	                          	  	  <tr>
		                          	  	<th height="40" width="30" bgcolor="e2e2e2">순위</th>
		                          	  	<th align="center" bgcolor="e2e2e2">판매점 이름</th>
		                          	  	<th align="center" bgcolor="e2e2e2">판매 개수</th>
		                          	  	<th align="center" bgcolor="e2e2e2">수익</th>
		                          	  	<th></th>
	                          	  	  </tr>
	                          	  	  <c:if test="${empty list}">
	                          	  	  <tr>
	                          	  	  	<td colspan="4" align="center" bgcolor="#FFFFFF" >검색값이 없습니다.</td>
	                          	  	  </tr>
	                          	  	  </c:if>
	                          	  	  
	                          	  	  <c:forEach items="${list}" var="rkdto" varStatus="Rank">
	                          	  	  <tr onclick="javascript:RankChart('${Rank.count}','${rkdto.brc_name}', '${rkdto.salesnumber}', '${rkdto.salesrebate}', '${SPDto.s_edate }', '${SPDto.s_sdate }')">
	                          	  	    <td align="center" bgcolor="#FFFFFF" >${Rank.count}</td>
	                          	  	  	<td align="center" bgcolor="#FFFFFF" >${rkdto.brc_name}</a></td>
	                          	  	  	<td align="center" bgcolor="#FFFFFF" >${rkdto.salesnumber} 대</td>
	                          	  	  	<td align="center" bgcolor="#FFFFFF" >${rkdto.salesrebate} 만원</td>
	                          	  	  </tr>
	                          	  	  </c:forEach>
	                          	  	  
<!-- {4(PAGING)------------------------------------------------------------------------------------------------------------------------------------>                              
                              <tr>                            
		                       <td width="200">&nbsp;</td>
                                <td align="center"><table border="0" cellspacing="0" s_edate="0">
                                    <tr>
                                      <td colspan="4" align="center">
		                                 	${page.pHtml}  
									  </td>
                                    </tr>
                                </table></td>
                                <td width="200">&nbsp;</td>
                              </tr>
<!-- {4 )-------------------------------------------------------------------------------------------------------------------------------------------->                               	                          	  	  
								  </table></td>
	                          	  </tr>
	                          	  
	                            </table></td>
	                          </tr>      	                                                      
                            </table></td>

                        <jsp:include page="/inc/bottom.jsp"/>                         