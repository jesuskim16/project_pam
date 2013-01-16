<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<script type="text/javascript">
function admNoticeDel(seq){
	var result = confirm("정말로 삭제하시겠습니까?");
	 
	if(result == true) {
		var frm = document.deleteForm;
		frm.action='admClientDelete.do';
		frm.submit();
		//opener.parent.location.href='admClientList.do';
		opener.parent.location.reload();		
	}	
}
<c:if test="${delete==true}">
window.onload = function(){window.close();}
</c:if>
</script>
 <form name="deleteForm" method="get">
 <input type="hidden" name="seq" value="${ACDto.getSeq()}"> 
 
 </form>
<table width="600" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="16" valign="top"><img src="admin/img/sub.body.box.left.gif" width="16" height="170"></td>
        <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td height="5" background="admin/img/sub.body.bg01.gif"></td>
              </tr>
              <tr>
                <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                      <tr>
                        <td><img src="admin/img/board.view.box01.gif" width="626" height="10"></td>
                      </tr>
                      <tr>
                        <td align="center"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                          <tr>
                            <td width="1" bgcolor="dadada"></td>
                            <td height="79" ><table width="100%" border="0" cellspacing="0" cellpadding="0">
                             
                              <tr>
                                <td width="10"></td>
                                <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                  <tr>
                                    <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                      <tr>
                                        <td height="5"></td>
                                      </tr>
                                      <tr>
                                        <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                          <tr>
                                            <td width="80"><table border="0" cellspacing="0" cellpadding="0">
                                              <tr>
                                                <td width="200" align="left">고객 이름</td>
                                                <td width="20" align="center"><img src="admin/img/icon.arrow02.gif" alt="" width="7" height="7"></td>
                                              </tr>
                                            </table></td>
                                            <td>${ACDto.getCust_name()}</td>
                                          </tr>
                                        </table></td>
                                      </tr>
                                      <tr>
                                        <td height="5"></td>
                                      </tr>
                                    </table></td>
                                  </tr>
                                  <tr>
                                    <td height="1" background="admin/img/line.point.gif"></td>
                                  </tr>
                                   <tr>
                                    <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                      <tr>
                                        <td height="5"></td>
                                      </tr>
                                      <tr>
                                        <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                          <tr>
                                            <td width="80"><table border="0" cellspacing="0" cellpadding="0">
                                              <tr>
                                                <td width="200" align="left">고객 번호</td>
                                                <td width="20" align="center"><img src="admin/img/icon.arrow02.gif" alt="" width="7" height="7"></td>
                                              </tr>
                                            </table></td>
                                            <td>${ACDto.getCust_phone()}</td>
                                            <td width="80"><table border="0" cellspacing="0" cellpadding="0">
                                              <tr>
                                                <td width="90" align="left">약정기간</td>
                                                <td width="20" align="center"><img src="admin/img/icon.arrow02.gif" alt="" width="7" height="7"></td>
                                              </tr>
                                            </table></td>
                                            <td width="200">${ACDto.getCont_term()}</td>
                                          </tr>
                                        </table></td>
                                      </tr>
                                      <tr>
                                        <td height="5"></td>
                                      </tr>
                                    </table></td>
                                  </tr>
                                  <tr>
                                    <td height="1" background="admin/img/line.point.gif"></td>
                                  </tr>
                                   <tr>
                                    <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                      <tr>
                                        <td height="5"></td>
                                      </tr>
                                      <tr>
                                        <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                          <tr>
                                            <td width="80"><table border="0" cellspacing="0" cellpadding="0">
                                              <tr>
                                                <td width="200" align="left">요금제</td>
                                                <td width="20" align="center"><img src="admin/img/icon.arrow02.gif" alt="" width="7" height="7"></td>
                                              </tr>
                                            </table></td>
                                            <td>${ACDto.getPrice_name()}</td>
                                            <td width="80"><table border="0" cellspacing="0" cellpadding="0">
                                              <tr>
                                                <td width="60" align="left">개통일</td>
                                                <td width="20" align="center"><img src="admin/img/icon.arrow02.gif" alt="" width="7" height="7"></td>
                                              </tr>
                                            </table></td>
                                            <td width="200">${ACDto.getOpen_date()}</td>
                                          </tr>
                                        </table></td>
                                      </tr>
                                      <tr>
                                        <td height="5"></td>
                                      </tr>
                                    </table></td>
                                  </tr>
                                  
                                  <tr>
                                    <td height="1" background="admin/img/line.point.gif"></td>
                                  </tr>
                                  <tr>
                                    <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                      <tr>
                                        <td height="5"></td>
                                      </tr>
                                      <tr>
                                        <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                          <tr>
                                            <td width="80"><table border="0" cellspacing="0" cellpadding="0">
                                              <tr>
                                                <td width="200" align="right">모델 코드</td>
                                                <td width="20" align="center"><img src="admin/img/icon.arrow02.gif" alt="" width="7" height="7"></td>
                                              </tr>
                                            </table></td>
                                            <td>${ACDto.getModel_code()}</td>
                                            <td width="80"><table border="0" cellspacing="0" cellpadding="0">
                                              <tr>
                                                <td width="120" align="left">판매점 ID</td>
                                                <td width="20" align="center"><img src="admin/img/icon.arrow02.gif" alt="" width="7" height="7"></td>
                                              </tr>
                                            </table></td>
                                            <td width="200">${ACDto.getBrc_id()}</td>
                                          </tr>
                                        </table></td>
                                      </tr>
                                      <tr>
                                        <td height="5"></td>
                                      </tr>
                                    </table></td>
                                  </tr>
                                  <tr>
                                    <td height="1" background="admin/img/line.point.gif"></td>
                                  </tr>
                                  <tr>
                                    <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                      <tr>
                                        <td height="5"></td>
                                      </tr>
                                      <tr>
                                        <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                           <tr>
                                             <td width="80"><table border="0" cellspacing="0" cellpadding="0">
                                               <tr>
	                                             <td width="120" align="left">작성일</td>
	                                             <td width="20" align="center"><img src="admin/img/icon.arrow02.gif" alt="" width="7" height="7"></td>
	                                           </tr>
	                                         </table></td>
	                                         <td>${ACDto.getWrite_date()}</td>
	                                         <td width="80"><table border="0" cellspacing="0" cellpadding="0">
                                              <tr>
                                                <td width="60" align="left">작성 IP</td>
                                                <td width="20" align="center"><img src="admin/img/icon.arrow02.gif" alt="" width="7" height="7"></td>
                                              </tr>
                                            </table></td>
                                            <td width="200">${ACDto.getWrite_ip()}</td>
	                                       </tr>
	                                    </table></td>
	                                  </tr>
                                    </table></td>
                                  </tr>
                                </table></td>
                                <td width="10"></td>
                              </tr>
                              
                            </table></td>
                            <td width="1" bgcolor="dadada"></td>
                          </tr>
                        </table></td>
                      </tr>
                      <tr>
                        <td align="center"><img src="admin/img/board.view.box02.gif" alt="" width="626" height="20"></td>
                      </tr>
                    </table></td>
                  </tr>
                  <tr>
                    <td><table width="100%" border="0" cellspacing="10" cellpadding="0">
                    
                      <tr>
                        <td>${ACDto.getMemo()}
                      </tr>
                    </table></td>
                  </tr>
                  <tr>
                    <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                      <tr>
                        <td height="10"></td>
                      </tr>
                      <tr>
                        <td align="right"><table border="0" cellspacing="0" cellpadding="0">
                          <tr>
                            <td><a href="admNoticeUpdate.do"><img src="admin/img/bts.edit.gif" width="69" height="33"></a>&nbsp;</td>
                            <td><a href="javascript:admNoticeDel(${ACDto.getSeq()})"><img src="admin/img/bts.del.gif" width="69" height="33"></a>&nbsp;</td>
                          </tr>
                        </table></td>
                      </tr>
                      
                    </table></td>
                  </tr>
                  
	            </table></td>
	          </tr>
	          <tr>
	            <td>&nbsp;</td>
	          </tr>
	        </table></td>
          </tr>
          <tr>
            <td>&nbsp;</td>
          </tr>
        </table></td>
        <td width="16" valign="top"><img src="admin/img/sub.body.box.right.gif" width="16" height="170"></td>
      </tr>
    </table></td>
  </tr>
</table>
<jsp:include page="/admin/inc/bottom.jsp"/>