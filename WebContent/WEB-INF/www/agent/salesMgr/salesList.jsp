<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<jsp:include page="/inc/top1.jsp"/>    
<jsp:include page="/inc/menu2.jsp"/>

<script type="text/javascript">
/*
// CheckBox javascript
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
*/

//Div javascript
function HiddenSeem(hidden,seem) {
	if(document.chk.count.value == '0'){
	document.getElementById(hidden).style.display="none";
	document.getElementById(seem).style.display="table-row";
	document.chk.count.value='1';
	
	}	
} 

</script>

<script type="text/javascript" src="js/sales_insert.js" ></script>

<form name="chk">
<input type="hidden" name="count" value="0">
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
                           		<c:forEach items="${list}" var="sdto">
                           		<tr id="hidden_${sdto.seq}" style="display:table-row">
                                 
                                 <td height="28" align="center" bgcolor="#FFFFFF" >${ sdto.seq}</td>
                                 
                                 <td align="left" bgcolor="#FFFFFF" >${ sdto.brc_name}/${sdto.brc_id}</td>
                                 
                                 <td align="center" bgcolor="#FFFFFF" >${ sdto.brc_phone}</td>
                                 
                                 <td align="left" bgcolor="#FFFFFF" >${ sdto.brc_post} ${sdto.brc_addr1} ${sdto.brc_addr2}</td>
                                 
                                 <td align="left" bgcolor="#FFFFFF" >${ sdto.brc_boss}</td>
                                 
                                 <td align="center" bgcolor="#FFFFFF" >${ sdto.boss_phone}</td>
                                 
                                 <td align="center" bgcolor="#FFFFFF" >${ sdto.write_date}</td>
                                 
                                 <td align="center" bgcolor="#FFFFFF" >
                                 <input type="button" onclick="javascript:HiddenSeem('hidden_${sdto.seq}','seem_${sdto.seq}')" value="수정"></td>
                                 
                               </tr>
                               
                               <form name="reg" action="salesUpdate.do" method="post">
                               <tr id="seem_${sdto.seq}" style="display:none">
                               
                                 <td height="28" align="center" bgcolor="#FFFFFF" >${sdto.seq}<input type="hidden" name="seq" value="${sdto.seq}"></td>
                               
                                 <td align="left" bgcolor="#FFFFFF" ><input type="text" name="brc_name" value="${sdto.brc_name}" size="7"><input type="text" name="brc_id" value="${sdto.brc_id}" size="7"></td>
                               
                                 <td align="center" bgcolor="#FFFFFF" ><input type="text" name="brc_phone" value="${ sdto.brc_phone}" size="13"></td>
                               
                                 <td align="left" bgcolor="#FFFFFF" ><input type="text" name="brc_post" value="${ sdto.brc_post}" size="3"><input type="text" name="brc_addr1" value="${sdto.brc_addr1}" size="24"><input type="text" name="brc_addr2" value="${sdto.brc_addr2}" size="4">
                                 <input type="button" name="post" value="우편번호 검색" onclick="javascript:openZipcode();"></td>
                                
                                 <td align="left" bgcolor="#FFFFFF" ><input type="text" name="brc_boss" value="${ sdto.brc_boss}" size="5"></td>
                               
                                 <td align="center" bgcolor="#FFFFFF" ><input type="text" name="boss_phone" value="${ sdto.boss_phone}" size="10"></td>
                               
                                 <td align="center" bgcolor="#FFFFFF" ><input type="text" name="write_date" value="${ sdto.write_date}" size="7"></td>
                               
                                 <td align="center" bgcolor="#FFFFFF" ><input type="submit" value="완료"></td>
                               </tr>
                               </form>
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
                        
<a href="salesInfo_delete.do?="><jsp:include page="/inc/bottom.jsp"/></a> 
                         