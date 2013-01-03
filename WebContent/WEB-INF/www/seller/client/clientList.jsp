<!-- --------------------------------------------------------고객 리스트---------------------------------------------------------------------->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>     
<c:choose>
  <c:when test="${brc_lev==1}">    
    <jsp:include page="/inc/top1.jsp"/>    
    <jsp:include page="/inc/menu2.jsp"/>
  </c:when>
  <c:when test="${brc_lev==2}">    
    <jsp:include page="/inc/top2.jsp"/>    
    <jsp:include page="/inc/menu5.jsp"/>
  </c:when>    
</c:choose> 
	<script type="text/javascript">
	var cEdit = function(layer1,layer2){
		if(document.editChk.chk.value=='0'){
		document.editChk.chk.value='1';
		document.getElementById(layer1).style.display = "none";
		document.getElementById(layer2).style.display = "table-row";
		}
	}
	var cEditCancle = function(layer1,layer2){
		if(document.editChk.chk.value=='1'){
		document.editChk.chk.value='0';
		document.getElementById(layer1).style.display = "table-row";
		document.getElementById(layer2).style.display = "none";
		}
	}	
	</script>
	                 
	                    <form name="editChk">
	                      <input type="hidden" name="chk" value="0"/>
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
                            <td><table width="100%" border="0" cellpadding="0" cellspacing="1" bgcolor="cccccc">
<!-- {4(목록)----------------------------------------------------------------------------------------------------------------------------------->                            
                               <tr>
                                 <th height="30" width="40" align="center" bgcolor="e2e2e2" >번호</th>
                                 <th width="80" align="center" bgcolor="e2e2e2">고객이름</th>
                                 <th align="center" bgcolor="e2e2e2">생년월일</th>
                                 <th align="center" bgcolor="e2e2e2">제품명</th>
                                 <th width="170" align="center" bgcolor="e2e2e2">연락처</th>						                                    
                                 <th align="center" bgcolor="e2e2e2">요금제</th>
                                 <th align="60" "center" bgcolor="e2e2e2">약정기간</th>		
                                 <th align="center" bgcolor="e2e2e2">상품가입일</th>
                                 <th width="100" align="center" bgcolor="e2e2e2"></th>                                    					                                    
                               </tr>
<!-- {4 )------------------------------------------------------------------------------------------------------------------------------------------>                                  
<!-- {5(내용)------------------------------------------------------------------------------------------------------------------------------------>							
 							<c:forEach items="${ciList}" var="client">
                               <tr id="layer1_${client.seq}" style="display:table-row; *display:block">
                                 <td height="28" align="center" bgcolor="#FFFFFF" >${client.seq}</td>
                                 <td align="center" bgcolor="#FFFFFF" >${client.cust_name}</td>
                                 <td align="center" bgcolor="#FFFFFF" >${client.cust_birth}</td>
                                 <td align="center" bgcolor="#FFFFFF" >${client.model_code}</td>
                                 <td align="center" bgcolor="#FFFFFF" >${client.cust_phone}</td>
                                 <td align="center" bgcolor="#FFFFFF" >${client.price_name}</td>
                                 <td align="center" bgcolor="#FFFFFF" >${client.cont_term}개월</td>						                                    
                                 <td align="center" bgcolor="#FFFFFF" >${client.open_date}</td>					
                                 <td align="center" bgcolor="#FFFFFF">
                                   <input type="button" value="수정" onclick="javascript:cEdit('layer1_${client.seq}','layer2_${client.seq}');"/>
                                   <input type="button" value="삭제"/>
                                 </td>	                                    
                               </tr>
                             <form method="post" action="clientUpdate.do">
                             <input type="hidden" name="brc_id" value="${brc_id}"/>
                             <input type="hidden" name="seq" value="${client.seq}"/>
                               <tr id="layer2_${client.seq}" style="display:none;">
                                 <td align="center" bgcolor="#FFFFFF">${client.seq}</td>
                                 <td align="center" bgcolor="#FFFFFF"><input type="text" size="7" name="cust_name"  value="${client.cust_name}"/></td>
                                 <td align="center" bgcolor="#FFFFFF"><input type="date" size="9" name="cust_birth"  value="${client.cust_birth}"/></td>
                                 <td align="center" bgcolor="#FFFFFF"><select name="model_code">
                                 
                                   <c:forEach items="${modelInfo}" var="mdto">
                                     <c:choose>
                                       <c:when test="${client.model_code==mdto.model_code}">
                                         <option value="${mdto.model_code}" selected="selected">${mdto.model_name}</option>
                                       </c:when>
                                       <c:otherwise>
                                         <option value="${mdto.model_code}">${mdto.model_name}</option>
                                       </c:otherwise>
                                     </c:choose>
                                   </c:forEach>
                                   
                                 </select></td>                                 
                                 <td align="center" bgcolor="#FFFFFF">
                                 <c:set var="sphone" value="${fn:split(client.cust_phone,'-')}"/>
                                 <c:forEach var="phone" items="${sphone}" varStatus="status">
                                   <input type="text" size="1" name="cust_phone${status.count}" value="${phone}"/>
                                 </c:forEach>
                                 </td>							  
                                 <td align="center" bgcolor="#FFFFFF"><select name="price_name">
                                 
                                   <c:forEach items="${priceInfo}" var="pdto">  
                                     <c:choose>
                                       <c:when test="${client.price_name==pdto.price_name}">
                                         <option value="${pdto.price_name}" selected="selected">${pdto.price_name}</option>
                                       </c:when>
                                       <c:otherwise>
                                         <option value="${pdto.price_name}">${pdto.price_name}</option>
                                       </c:otherwise>
                                     </c:choose>                                           
                                   </c:forEach>  
                                   
                                 </select></td>
                                 <td align="center" bgcolor="#FFFFFF"><input type="text" size="2" name="cont_term"  value="${client.cont_term}"/>개월</td>
                                 <td align="center" bgcolor="#FFFFFF"><input type="date" size="9" name="open_date"  value="${client.open_date}"/></td>
                                 <td align="center" bgcolor="#FFFFFF">
                                   <input type="submit" value="완료"/>
                                   <input type="button" value="취소" onclick="javascript:cEditCancle('layer1_${client.seq}','layer2_${client.seq}');"/>
                                 </td>
                               </tr>
                             </form>
                            </c:forEach>
<!-- {5 )------------------------------------------------------------------------------------------------------------------------------------------>                 
                            </table></td>
                          </tr>
                          <tr>
                            <td height="50"><table width="100%" border="0" cellpadding="0" cellspacing="0">
<!-- {4(PAGING)------------------------------------------------------------------------------------------------------------------------------------>                              
                              <tr>                            
<!-- 		                        <a href="#"><img src="img/btn_edit.gif"></a>&nbsp;		                         -->
<!-- 		                        <a href="#"><img src="img/btn_del2.gif"></a>		                        		                                        -->
                                <td width="200">&nbsp;</td>
                                <td align="center"><table border="0" cellspacing="0" cellpadding="0">
                                    <tr>
                                      <td>
		                                  <jsp:include page="/inc/paging.jsp"/>    
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