<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="/inc/top1.jsp"/>    
<jsp:include page="/inc/menu1.jsp"/>
<script type="text/javascript" src="js/setDate.js"></script>
               <td width="1"></td>
                <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td bgcolor="#272727"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                      <tr>
                        <td width="97" class="Text_gray_14px"><img src="img/sub01_category2.gif" width="97" height="60"></td>
                        <td align="right">&nbsp;</td>
                      </tr>
                    </table></td>
                  </tr>
                  <tr>
                    <td height="1" bgcolor="#000000"></td>
                  </tr>
                  <tr>
                    <td><table width="100%" border="0" cellpadding="0" cellspacing="1" bgcolor="cccccc">
                      <tr>
                        <td align="center" bgcolor="#FFFFFF"><table width="100%" border="0" cellspacing="0" cellpadding="0">
<!----- --------------------------------------------------------------------------------------------------------------------------------------------------->
                          <form method="post" name="result_form" action="modelRcd.do" style="margin:0">
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
                              <td height="40" class="line_bg_bottom1"><table width="600" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                  <td><input type="date" name="s_sdate" size="10" value="${MRPdto.s_sdate}" />                                          
                                  	  ~
                                 	  <input type="date" name="s_edate" size="10" value="${MRPdto.s_edate}" /></td>
                                  <td width="80" valign="middle">모델 선택 : </td>                                           
                                  <td valign="middle">
                                                                   
                                  	<select name="model_code" id="">
                                  		<c:forEach items="${MList}" var="mdto">
											<option value="${mdto.model_code}" label="${mdto.model_name}" 
												<c:if test="${MRPdto.model_code == mdto.model_code}">selected</c:if>
											/>										
										</c:forEach> 
									</select>									
								  </td>
								  <td valign="bottom"><input type="image" src="img/btn_ok.gif"  width="40" height="21"></td>
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
                            <td><table width="100%" border="0" cellspacing="10" cellpadding="0">
                              <tr>
                                <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                             
                                  <tr>
                                    <td><table width="100%" border="0" cellpadding="0" cellspacing="5">
                                      <tr>                                      
                                        <td colspan="3"><table width="100%" border="0" cellpadding="0" cellspacing="1" bgcolor="eaeaea">
                                            <tr>
                                              <td bgcolor="#FFFFFF"><table width="100%" border="0" cellspacing="2" cellpadding="0">
                                                  <tr>
						                            <td><table width="100%" border="0" cellpadding="0" cellspacing="1" bgcolor="cccccc">
<!-- {2(집계)----------------------------------------------------------------------------------------------------------------------------------->                            
						                                  <tr>
						                                    <th width="40"height="30" align="center" bgcolor="aaaaaa" ></th>
						                                    <th width="100" height="30" align="center" bgcolor="aaaaaa">모델명</th>						                                    
						                                    <th width="80" height="30" align="center" bgcolor="aaaaaa">기간</th>
						                                    <th width="80" height="30" align="center" bgcolor="aaaaaa">판매대수</th>
						                                    <th width="140" height="30" align="center" bgcolor="aaaaaa">수익</th>						                                    
						                                  </tr>
<!-- {2 )------------------------------------------------------------------------------------------------------------------------------------------>                                  
<!-- {3(집계내용)------------------------------------------------------------------------------------------------------------------------------------>                             
						                           <c:choose>
														<c:when test="${empty mRList}">
						                                  <tr>
						                                    <th width="40"  height="50" align="center" bgcolor="aaaaaa">총계</th>
						                                    <td height="28" align="center" bgcolor="#FFFFFF">-</td>						                                    
						                                    <td height="28" align="center" bgcolor="#FFFFFF">-</td>
						                                    <td height="28" align="center" bgcolor="#FFFFFF">-</td>
						                                    <td height="28" align="center" bgcolor="#FFFFFF">-</td>						                                    
						                                  </tr>															
														</c:when>
														<c:when test="${!empty mRList}">
						                                  <tr>
						                                    <th width="40"  height="50" align="center" bgcolor="aaaaaa">총계</th>
						                                    <td height="28" align="center" bgcolor="#FFFFFF">${MRPdto.model_code}</td>						                                    
						                                    <td height="28" align="center" bgcolor="#FFFFFF">${MRPdto.s_sdate}<br>&nbsp;~${MRPdto.s_edate}</td>
						                                    <td height="28" align="center" bgcolor="#FFFFFF">${MRPdto.totalCount} 대</td>
						                                    <td height="28" align="center" bgcolor="#FFFFFF">825,000 원</td>						                                    
						                                  </tr>
						                                </c:when>
												   </c:choose>    
						                            </table></td>
						                          </tr>		
						                          <tr>
						                            <td height="10"></td>
						                          </tr>				                                                                     
						                          <tr>
						                            <td><table width="100%" border="0" cellpadding="0" cellspacing="1" bgcolor="cccccc">
<!-- {4(목록)----------------------------------------------------------------------------------------------------------------------------------->                            
						                                  <tr>
						                                    <th width="40" width="40" height="30" align="center" bgcolor="e2e2e2" >번호</th>
						                                    <th width="40" height="30" align="center" bgcolor="e2e2e2">고객명</th>
						                                    <th width="40" height="30" align="center" bgcolor="e2e2e2">모델명</th>
						                                    <th width="40" height="30" align="center" bgcolor="e2e2e2">요금제</th>
						                                    <th width="40" height="30" align="center" bgcolor="e2e2e2">약정기간</th>
						                                    <th width="40" height="30" align="center" bgcolor="e2e2e2">수익</th>
						                                    <th width="40" height="30" align="center" bgcolor="e2e2e2">개통일</th>						                                    
						                                  </tr>
<!-- {4 )------------------------------------------------------------------------------------------------------------------------------------------>                                  
<!-- {5(내용)------------------------------------------------------------------------------------------------------------------------------------>                             
						                               	<c:if test="${empty mRList}">
                               							<tr>
                            						   		<td colspan="7" height="28" align="center" bgcolor="#FFFFFF">검색값이 없습니다.</td>
                             						  	</tr>
                             						  	</c:if>
						                               <c:forEach items="${mRList}" var="mrDto">  
						                                  <tr>						                                  
						                                    <td height="28" align="center" bgcolor="#FFFFFF" >${mrDto.rown}</td>
						                                    <td height="28" align="center" bgcolor="#FFFFFF" >${mrDto.cust_name}</td>
						                                    <td height="28" align="center" bgcolor="#FFFFFF" >${mrDto.model_code}</td>
						                                    <td height="28" align="center" bgcolor="#FFFFFF" >${mrDto.price_name}</td>
						                                    <td height="28" align="center" bgcolor="#FFFFFF" >${mrDto.cont_term}</td>
						                                    <td height="28" align="center" bgcolor="#FFFFFF" >30,000원</td>
						                                    <td height="28" align="center" bgcolor="#FFFFFF" >${mrDto.open_date}</td>						                                    
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
                              </tr>                              
                            </table></td>
                          </tr>                         
  <!----- --------------------------------------------------------------------------------------------------------------------------------------------------->
                        </table></td>
                    </table></td>    
                  </tr>
												  <tr>
						                            <td height="50"><table width="100%" border="0" cellpadding="0" cellspacing="0">
						<!-- {6(PAGING)------------------------------------------------------------------------------------------------------------------------------------>                              
						                              <tr>                                       
						                                <td width="200">&nbsp;</td>
						                                <td align="center"><table border="0" cellspacing="0" cellpadding="0">
						                                    <tr>
						                                      <td>
						                                      		${MRPdto.pHtml}
<%-- 								                                  <jsp:include page="/inc/paging.jsp"/>     --%>
															  </td>
						                                    </tr>
						                                </table></td>
						                                <td width="200">&nbsp;</td>
						                              </tr>
						<!-- {6 )-------------------------------------------------------------------------------------------------------------------------------------------->                               
						                            </table></td>
						                          </tr>                  
                </table></td>  

<jsp:include page="/inc/bottom.jsp"/>  
