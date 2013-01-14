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
	
	var cDel = function(seq){
		var cfm = confirm(seq+"번 고객정보를 삭제하시겠습니까?");
		if(cfm){
			location.href='clientDel.do?seq='+seq;	
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
                                <td width="99" class="Text_gray_14px"><img src="img/sub05_category1.gif" width="99" height="60"></td>                               
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
                                 <th width="100" align="center" bgcolor="e2e2e2">고객이름</th>
                                 <th align="center" bgcolor="e2e2e2">생년월일</th>
                                 <th align="center" bgcolor="e2e2e2">제품명</th>
                                 <th width="170" align="center" bgcolor="e2e2e2">연락처</th>						                                    
                                 <th align="center" bgcolor="e2e2e2">요금제</th>
                                 <th align="60" "center" bgcolor="e2e2e2">약정기간</th>		
                                 <th align="center" bgcolor="e2e2e2">개통일</th>
                                 <th width="100" align="center" bgcolor="e2e2e2"></th>                                    					                                    
                               </tr>
<!-- {4 )------------------------------------------------------------------------------------------------------------------------------------------>                                  
<!-- {5(내용)------------------------------------------------------------------------------------------------------------------------------------>
						    <c:if test="${empty ciList}"><tr><td colspan="9" height="300" bgcolor="#ffffff" align="center"><h1>등록된 고객정보가 없습니다.</h1></td></tr></c:if>
 							<c:forEach items="${ciList}" var="client"> 							     
                               <tr id="layer1_${client.seq}" style="display:table-row; *display:block;">
                                 <td height="28" align="center" bgcolor="#FFFFFF" >${client.rowA}</td>
                                 <td align="left" bgcolor="#FFFFFF" >&nbsp;${client.cust_name}</td>
                                 <td align="center" bgcolor="#FFFFFF" >${client.cust_birth}</td>
                                 <td align="left" bgcolor="#FFFFFF" >&nbsp;${client.model_code}</td>
                                 <td align="center" bgcolor="#FFFFFF" >${client.cust_phone}</td>
                                 <td align="left" bgcolor="#FFFFFF" >&nbsp;${client.price_name}</td>
                                 <td align="right" bgcolor="#FFFFFF" >${client.cont_term}개월&nbsp;</td>						                                    
                                 <td align="center" bgcolor="#FFFFFF" >${client.open_date}</td>					
                                 <td align="center" bgcolor="#FFFFFF">
                                   <input type="button" value="수정" onclick="javascript:cEdit('layer1_${client.seq}','layer2_${client.seq}');"/>
                                   <input type="button" value="삭제" onclick="javascript:cDel('${client.seq}');"/>
                                 </td>	                                    
                               </tr>
                               
                             <form method="post" action="clientUpdate.do">
                             <input type="hidden" name="brc_id" value="${brc_id}"/>
                             <input type="hidden" name="seq" value="${client.seq}"/>
                               <tr id="layer2_${client.seq}" style="display:none;">
                                 <td height="28" align="center" bgcolor="#FFFFFF">${client.seq}</td>
                                 <td align="center" bgcolor="#FFFFFF"><input type="text" size="10" name="cust_name"  value="${client.cust_name}" class="input_gray"/></td>
                                 <td align="center" bgcolor="#FFFFFF"><input type="date" size="15" name="cust_birth"  value="${client.cust_birth}" class="select_140_2"/></td>
                                 <td align="center" bgcolor="#FFFFFF"><select name="model_code" class="select_140_2">                                 
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
                                 <c:forEach var="phone" items="${sphone}" varStatus="status" >
                                   <input type="text" size="4" name="cust_phone${status.count}" value="${phone}" class="input_gray"/>
                                 </c:forEach>
                                 </td>							  
                                 <td align="center" bgcolor="#FFFFFF"><select name="price_name" class="select_140_2">                                 
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
                                 
                                 <c:choose>
                                   <c:when test="${client.cont_term==12}"><c:set var="t12" value="selected='selected'"/></c:when>
                                   <c:when test="${client.cont_term==18}"><c:set var="t18" value="selected='selected'"/></c:when>
                                   <c:when test="${client.cont_term==24}"><c:set var="t24" value="selected='selected'"/></c:when>
                                   <c:when test="${client.cont_term==30}"><c:set var="t30" value="selected='selected'"/></c:when>
                                   <c:when test="${client.cont_term==36}"><c:set var="t36" value="selected='selected'"/></c:when>
                                   <c:otherwise><c:set var="t0" property="selected='selected'"/></c:otherwise>
                                 </c:choose>
                                 
                                 <td align="center" bgcolor="#FFFFFF">
                                   <select name="cont_term" class="select_140_2">
                                     <option value="0" ${t0}>0</option>
                                     <option value="12" ${t12}>12</option>
                                     <option value="18" ${t18}>18</option>
                                     <option value="24" ${t24}>24</option>
                                     <option value="30" ${t30}>30</option>
                                     <option value="36" ${t36}>36</option>
                                   </select><span class="Text_gray_12px ">&nbsp;개월
                                 </td>
                                 
                                  <c:set var="t12" value=""/>
								  <c:set var="t18" value=""/>
								  <c:set var="t24" value=""/>
								  <c:set var="t30" value=""/>
								  <c:set var="t36" value=""/>
								  
                                 <td align="center" bgcolor="#FFFFFF"><input type="date" size="15" name="open_date"  value="${client.open_date}" class="select_140_2"/></td>
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
                                <td width="200">&nbsp;</td>
                                <td align="center"><table border="0" cellspacing="0" cellpadding="0">
                                    <tr>
                                      <td>
                                      <c:set var="pageUrl" value="clientList.do"/>                                      
                                      <c:if test="${paging.startPage!=1}">
                                        <a href="${pageUrl}?pg=${paging.startPage-10}">
                                          <img src='img/arrow_left.gif' width='21' height='21'>
                                        </a>&nbsp;
                                      </c:if>                                      
                                        <c:forEach begin="${paging.startPage}" end="${paging.endPage}" varStatus="p">                                                                   
                                          <a href="${pageUrl}?pg=${paging.startPage+p.count-1}">${paging.startPage+p.count-1}</a>&nbsp;                                        
                                        </c:forEach> 
                                      <c:if test="${(paging.startPage+paging.pageSize)<=paging.pageCount}">
                                        <a href="${pageUrl}?pg=${paging.startPage+10}">
                                          <img src='img/arrow_right.gif' width='21' height='21'>
                                        </a>
                                      </c:if>
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