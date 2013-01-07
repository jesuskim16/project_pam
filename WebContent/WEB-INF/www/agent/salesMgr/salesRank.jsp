<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="/inc/top1.jsp"/>    
<jsp:include page="/inc/menu2.jsp"/>  
                        <td width="1"></td>
                        <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                          <tr>
<!-- 상단 1 ------------------------------------------------------------------------------------------------------------------------------------>
                          <form method="post" name="result_form" action="salesRank.do" style="margin:0">
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
                                  <input type="date" name="s_sdate" size="10" value="${SRPDto.s_sdate }" />
                                  ~                                 
                                  <input type="date" name="s_edate" size="10" value="${SRPDto.s_edate }" /></td>
                                  <td width="80" valign="middle">지점 선택 : </td>
                                  <td valign="middle">                                                                   
                                  	<select name="brc_name" id="">
                                  		<c:forEach items="${BNList}" var="bndto">
											<option value="${bndto.brc_name}" label="${bndto.brc_name}"
											<c:if test="${SRPDto.brc_name == bndto.brc_name}">selected</c:if>
											 />
										</c:forEach> 
									</select>									
								  </td>                                                                                    
                                  <td><input type="image" src="img/btn_ok.gif"  width="40" height="21"></td>
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
	                          	  	<td width="100"><img src="upload/Chart.jpg" height="300"/></td>	 
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
	                          	  	  <tr>
	                          	  	    <td align="center" bgcolor="#FFFFFF" >1</td>
	                          	  	  	<td align="center" bgcolor="#FFFFFF" >서울점</td>
	                          	  	  	<td align="center" bgcolor="#FFFFFF" >100 대</td>
	                          	  	  	<td align="center" bgcolor="#FFFFFF" >1000 만원</td>
	                          	  	  </tr>
	                          	  	  <tr>
	                          	  	    <td align="center" bgcolor="#FFFFFF" >2</td>
	                          	  	  	<td align="center" bgcolor="#FFFFFF" >구로점</td>
	                          	  	  	<td align="center" bgcolor="#FFFFFF" >92 대</td>
	                          	  	  	<td align="center" bgcolor="#FFFFFF" >920 만원</td>
	                          	  	  </tr>
	                          	  	  <tr>
	                          	  	    <td align="center" bgcolor="#FFFFFF" >3</td>
	                          	  	  	<td align="center" bgcolor="#FFFFFF" >서현점</td>
	                          	  	  	<td align="center" bgcolor="#FFFFFF" >86 대</td>
	                          	  	  	<td align="center" bgcolor="#FFFFFF" >869 만원</td>
	                          	  	  </tr>
	                          	  	  <tr>
	                          	  	    <td align="center" bgcolor="#FFFFFF" >4</td>
	                          	  	  	<td align="center" bgcolor="#FFFFFF" >가산점</td>
	                          	  	  	<td align="center" bgcolor="#FFFFFF" >74 대</td>
	                          	  	  	<td align="center" bgcolor="#FFFFFF" >740 만원</td>
	                          	  	  </tr>
	                          	  	  <tr>
	                          	  	    <td align="center" bgcolor="#FFFFFF" >5</td>
	                          	  	  	<td align="center" bgcolor="#FFFFFF" >용산점</td>
	                          	  	  	<td align="center" bgcolor="#FFFFFF" >63 대</td>
	                          	  	  	<td align="center" bgcolor="#FFFFFF" >630 만원</td>
	                          	  	  </tr>
	                          	  	  <tr>
	                          	  	    <td align="center" bgcolor="#FFFFFF" >6</td>
	                          	  	  	<td align="center" bgcolor="#FFFFFF" >연신내점</td>
	                          	  	  	<td align="center" bgcolor="#FFFFFF" >60 대</td>
	                          	  	  	<td align="center" bgcolor="#FFFFFF" >600 만원</td>
	                          	  	  </tr>
	                          	  	  <tr>
	                          	  	    <td align="center" bgcolor="#FFFFFF" >7</td>
	                          	  	  	<td align="center" bgcolor="#FFFFFF" >불광점</td>
	                          	  	  	<td align="center" bgcolor="#FFFFFF" >53 대</td>
	                          	  	  	<td align="center" bgcolor="#FFFFFF" >530 만원</td>
	                          	  	  </tr>
	                          	  	  <tr>
	                          	  	    <td align="center" bgcolor="#FFFFFF" >8</td>
	                          	  	  	<td align="center" bgcolor="#FFFFFF" >원당점</td>
	                          	  	  	<td align="center" bgcolor="#FFFFFF" >43 대</td>
	                          	  	  	<td align="center" bgcolor="#FFFFFF" >430 만원</td>
	                          	  	  </tr>
	                          	  	  <tr>
	                          	  	    <td align="center" bgcolor="#FFFFFF" >9</td>
	                          	  	  	<td align="center" bgcolor="#FFFFFF" >복정점</td>
	                          	  	  	<td align="center" bgcolor="#FFFFFF" >32 대</td>
	                          	  	  	<td align="center" bgcolor="#FFFFFF" >320 만원</td>
	                          	  	  </tr>
	                          	  	  <tr>
	                          	  	    <td align="center" bgcolor="#FFFFFF" >10</td>
	                          	  	  	<td align="center" bgcolor="#FFFFFF" >강남점</td>
	                          	  	  	<td align="center" bgcolor="#FFFFFF" >31 대</td>
	                          	  	  	<td align="center" bgcolor="#FFFFFF" >312 만원</td>
	                          	  	  </tr>
<!-- {4(PAGING)------------------------------------------------------------------------------------------------------------------------------------>
	                          	  	  <tr>
	                          	  	  	<td></td>
	                          	  	  	<td></td>
	                          	  	  	<td align="center" bgcolor="#FFFFFF" ><jsp:include page="/inc/paging.jsp"/></td>
	                          	  	  	<td></td>
	                          	  	  </tr>
<!-- {4 )-------------------------------------------------------------------------------------------------------------------------------------------->	                          	  	  
								  </table></td>
	                          	  </tr>
	                          	  
	                            </table></td>
	                          </tr>      	                        
                              
                            </table></td>
                          </tr>
                        </table></td>                        
<jsp:include page="/inc/bottom.jsp"/>                            