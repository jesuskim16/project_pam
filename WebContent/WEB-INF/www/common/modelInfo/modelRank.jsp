<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:choose>
	<c:when test="${brc_lev==1}">
		<jsp:include page="/inc/top1.jsp"/> 
	</c:when>
	<c:when test="${brc_lev==2}">
		<jsp:include page="/inc/top2.jsp"/>  
	</c:when>
</c:choose>
<jsp:include page="/inc/menu4.jsp"/>   
<script type="text/javascript" src="js/setDate.js"></script>

                        <td width="1"></td>
                        <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                          <tr>
<!-- {1(상단----------------------------------------------------------------------------------------------------------------------------------------->
                           <td bgcolor="#272727"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                              <tr>
                                <td width="99" class="Text_gray_14px"><img src="img/sub04_category2.gif" width="100" height="60"></td>                               
                              </tr>
                            </table></td>
                    	</tr>
                    	<tr>
                          <form method="post" name="result_form" action="modelRank.do" style="margin:0">
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
                                  <td><input type="date" name="s_sdate" id="s_sdate" size="10" value="${MIRPDto.s_sdate}" />                                          
                                  	  ~
                                 	  <input type="date" name="s_edate" id="s_edate" size="10" value="${MIRPDto.s_edate}" />
                                 <div id="test">
                                 </div>  
                                  </td>                               
								  <td valign="bottom"><input type="image" src="img/btn_ok.gif" width="40" height="21"></td>
                                </tr>
                              </table></td>
                            </tr>
                            
                            <tr bgcolor="#272727">
                              <td height="1" colspan="2"></td>
                            </tr>                            
                          </table></td>                                                   
                          </form>                     
<!-- {1 )------------------------------------------------------------------------------------------------------------------------------------------>                            
                            </tr>                         
                          <tr>
                            <td><table width="100%" border="0" cellpadding="0" cellspacing="1" bgcolor="ffffff">
                              <tr>
                              <td width="30%" align="center" <c:if test="${empty MIRList}"> hidden= "true" </c:if>>                              
                              <img alt="" src="${chart}?s_sdate=${MIRPDto.s_sdate}&s_edate=${MIRPDto.s_edate}" <c:if test="${empty MIRList}"> hidden= "true" </c:if>></td>                                 
                            <td valign="top"><table width="100%" border="0" cellpadding="0" cellspacing="1" bgcolor="cccccc">
<!-- {4(목록)----------------------------------------------------------------------------------------------------------------------------------->                            
                               <tr >
                                 <th height="30" width="30" bgcolor="e2e2e2">순위</th>
                                 <th align="center" bgcolor="e2e2e2">판매대수</th>
                                 <th width="100" align="center" bgcolor="e2e2e2">이미지</th>
                                 <th align="center" bgcolor="e2e2e2">모델명</th>
                                 <th align="center" bgcolor="e2e2e2">제조사</th>              
                                 <th align="center" bgcolor="e2e2e2">출시일</th>        
                               </tr>
<!-- {4 )------------------------------------------------------------------------------------------------------------------------------------------>                                  
<!-- {5(내용)------------------------------------------------------------------------------------------------------------------------------------>                             
                            <c:if test="${empty MIRList}">
                              <tr>
                                 <th height="200" width="30" bgcolor="ffffff" colspan="6">검색값이 없습니다.</th>    
                               </tr>                            
                            </c:if>
                            <c:forEach items="${MIRList}" var="MIRdto">
                               <tr>
                                 <td align="center" bgcolor="#FFFFFF" >${MIRdto.rown}</td>
                                 <td align="center" bgcolor="#FFFFFF" >${MIRdto.cnt}</td>  
                                 <td height="40" align="center" bgcolor="#FFFFFF" ><img src="upload/model/${MIRdto.filename }" alt="" height="40"/></td>
                                 <td align="center" bgcolor="#FFFFFF" >${MIRdto.model_code}<br/>${MIRdto.model_name}</td>
                                 <td align="center" bgcolor="#FFFFFF" >${MIRdto.make_comp}</td>         
                                 <td align="center" bgcolor="#FFFFFF" >${MIRdto.open_date}</td>                                					                                    
                               </tr> 
							</c:forEach>
<!-- {5 )------------------------------------------------------------------------------------------------------------------------------------------>                  
                            </table></td>
                          </tr>
                        </table></td>                          
                      </tr>
                          <tr>
                            <td height="30"><table width="100%" border="0" cellpadding="0" cellspacing="0">
<!-- {4(PAGING)------------------------------------------------------------------------------------------------------------------------------------>                              
                              <tr>                          		                                       
                                <td width="30%" b>&nbsp;</td>
                                <td align="center"><table border="0" cellspacing="0" cellpadding="0">
                                    <tr>
                                      <td>
		                                  ${MIRPDto.pHtml}   
									  </td>
                                    </tr></table></td>                                
                              </tr><!-- {4 )-------------------------------------------------------------------------------------------------------------------------------------------->                               
                            </table>                                                
                            </td>
                          </tr>
                        </table></td>                     
<jsp:include page="/inc/bottom.jsp"/>                            