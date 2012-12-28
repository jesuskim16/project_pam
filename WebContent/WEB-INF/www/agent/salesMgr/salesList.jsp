<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<script type="text/javascript">
function chkAll() 
{ 
 var check;
 if (document.frmCheck.allcheckbtn.checked) 
 {
     check=true;
 }
 else
 {
     check=false;
 }
 for(i = 0; i < document.frmCheck.elements.length;++i) 
 { 
  if(document.frmCheck.elements[i].name == 'chk')
  { 
   if(document.frmCheck.elements[i].disabled==false) 
   document.frmCheck.elements[i].checked = check;
       
  } 
 } 
} 

</script>
<form name="frmCheck">
<jsp:include page="/inc/top1.jsp"/>    
<jsp:include page="/inc/menu2.jsp"/>    
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
                                 <th height="40" width="30" bgcolor="e2e2e2"><input type="checkbox" name="allcheckbtn" onclick="chkAll();"/></th>
                                 <th width="40" align="center" bgcolor="e2e2e2" >번호</th>
                                 <th align="center" bgcolor="e2e2e2">판매점명/아이디</th>
                                 <th align="center" bgcolor="e2e2e2">연락처</th>
                                 <th align="center" bgcolor="e2e2e2">주소</th>
                                 <th align="center" bgcolor="e2e2e2">대표</th>
                                 <th align="center" bgcolor="e2e2e2">대표 연락처</th>						                                    
                                 <th align="center" bgcolor="e2e2e2">생성일</th>						                                    
                               </tr>
<!-- {4 )------------------------------------------------------------------------------------------------------------------------------------------>                                  
<!-- {5(내용)------------------------------------------------------------------------------------------------------------------------------------>                             
                           		<c:forEach items="${list}" var="sdto">
                           		
                               <tr>
                                 <td align="center" bgcolor="#FFFFFF" ><input type="checkbox" name="chk" /></td>
                                 <td height="28" align="center" bgcolor="#FFFFFF" >${ sdto.seq}</td>
                                 <td align="left" bgcolor="#FFFFFF" >${ sdto.brc_name}</td>
                                 <td align="center" bgcolor="#FFFFFF" >${ sdto.brc_phone}</td>
                                 <td align="left" bgcolor="#FFFFFF" >${ sdto.brc_post}</td>
                                 <td align="center" bgcolor="#FFFFFF" >${ sdto.brc_boss}</td>
                                 <td align="center" bgcolor="#FFFFFF" >${ sdto.boss_phone}</td>						                                    
                                 <td align="center" bgcolor="#FFFFFF" >${ sdto.write_date}</td>						                                    
                               </tr> 
                               </c:forEach>                  
                            </table></td>
                          </tr>
                          <tr>
                            <td height="50"><table width="100%" border="0" cellpadding="0" cellspacing="0">
                            
<!-- {4(PAGING)------------------------------------------------------------------------------------------------------------------------------------>                              
                              <tr>                            
		                        		                        
		                        <a href="#"><img src="img/btn_del2.gif"></a>		                        		                                       
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
                        

</form>
<a href="salesInfo_delete.do?="><jsp:include page="/inc/bottom.jsp"/></a> 
                         