<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<script type="text/javascript">
function admClientDel(seq){
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

function admClientUpdate(hidden, seem){
	document.getElementById(hidden).style.display="block";
	document.getElementById(seem).style.display="none";
}

function Update(){
	document.updateForm.action="admClientUpdateAct.do";
	document.updateForm.submit();
}

function modelchange(model_name, model_code){
	var name_code = document.getElementById(model_name).value;
	
	document.getElementById( model_code).value = name_code; 
		
	
	
}

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
            <td><div id="seem" style="display:block;">
              <table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td height="5" background="admin/img/sub.body.bg01.gif"></td>
              </tr>
              <!--  -->
              <tr>
<!-- view  ------------------------------------------------------------------------------------------------>
                <td>
                  <table width="100%" border="0" cellspacing="0" cellpadding="0">
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
                                            <td width="80"><table border="0" cellspacing="0" cellpadding="0">
                                              <tr>
                                                <td width="200" align="left">고객 번호</td>
                                                <td width="20" align="center"><img src="admin/img/icon.arrow02.gif" width="7" height="7"></td>
                                              </tr>
                                            </table></td>
                                            <td width="200">${ACDto.getCust_phone()}</td>
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
                                                <td width="60" align="left">요금제</td>
                                                <td width="20" align="center"><img src="admin/img/icon.arrow02.gif" alt="" width="7" height="7"></td>
                                              </tr>
                                            </table></td>
                                            <td align="left">${ACDto.getPrice_name()}</td>
                                            <td width="80"><table border="0" cellspacing="0" cellpadding="0">
                                              <tr>
                                                <td width="200" align="left">약정기간</td>
                                                <td width="20" align="center"><img src="admin/img/icon.arrow02.gif" alt="" width="7" height="7"></td>
                                              </tr>
                                            </table></td>
                                            <td width="200">${ACDto.getCont_term()} 개 월</td>
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
                                                <td width="200" align="left">판매점 ID</td>
                                                <td width="20" align="center"><img src="admin/img/icon.arrow02.gif" alt="" width="7" height="7"></td>
                                              </tr>
                                            </table></td>
                                            <td width="248">${ACDto.getBrc_id()}</td>
                                            <td width="80"><table border="0" cellspacing="0" cellpadding="0">
                                              <tr>
                                                <td width="200" align="left">수익금</td>
                                                <td width="20" align="center"><img src="admin/img/icon.arrow02.gif" alt="" width="7" height="7"></td>
                                              </tr>
                                            </table></td>
                                            <td width="200">${ACDto.getRebate()} 원</td>
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
                                                <td align="left">모델명</td>
                                                <td width="20" align="center"><img src="admin/img/icon.arrow02.gif" alt="" width="7" height="7"></td>
                                              </tr>
                                            </table></td>
                                            <td align="left">${ACDto.getModel_name()}</td>

                                            <td width="80"><table border="0" cellspacing="0" cellpadding="0">
                                              <tr>
                                                <td align="left">모델 코드</td>
                                                <td align="center"><img src="admin/img/icon.arrow02.gif" alt="" width="7" height="7"></td>
                                              </tr>
                                            </table></td>
                                            <td width="200" align="left">${ACDto.getModel_code()}</td>
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
                                                <td align="left">개통일</td>
                                                <td width="20" align="center"><img src="admin/img/icon.arrow02.gif"  width="7" height="7"></td>
                                              </tr>
                                            </table></td>
                                            <td width="245" align="left">${ACDto.getOpen_date()}</td>
	                                         <td width="80"><table border="0" cellspacing="0" cellpadding="0">
                                              <tr>
                                                <td width="200" align="left">고객 생일</td>
                                                <td width="20" align="center"><img src="admin/img/icon.arrow02.gif"  width="7" height="7"></td>
                                              </tr>
                                            </table></td>
                                            <td align="left">${ACDto.getCust_birth()}</td>
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
                                       <td width="80"><table border="0" cellspacing="0" cellpadding="0">
                                              <tr>
                                                <td align="left">작성일</td>
                                                <td width="20" align="center"><img src="admin/img/icon.arrow02.gif"  width="7" height="7"></td>
                                              </tr>
                                            </table></td>
                                            <td width="245" align="left">${ACDto.getWrite_date()}</td>
                                        <td width="80"><table border="0" cellspacing="0" cellpadding="0">
                                          <tr>
                                            <td align="left">작성 IP</td>
                                            <td width="20" align="center"><img src="admin/img/icon.arrow02.gif" alt="" width="7" height="7"></td>
                                          </tr>
                                         </table></td>
                                         <td align="left">${ACDto.getWrite_ip()}</td>
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
                            <td><a href="javascript:admClientUpdate('hidden', 'seem');"><img src="admin/img/bts.edit.gif" width="69" height="33"></a>&nbsp;</td>
                            <td><a href="javascript:admClientDel(${ACDto.getSeq()})"><img src="admin/img/bts.del.gif" width="69" height="33"></a>&nbsp;</td>
                          </tr>
                        </table></td>
                      </tr>
                      
                    </table></td>
                  </tr>
	            </table></div></td>
<!-- view  ------------------------------------------------------------------------------------------------>


<!-- update  ------------------------------------------------------------------------------------------------>
	            <td><form name="updateForm" method="get">
	             <input type="hidden" name="seq" value="${ACdto.getSeq()}">
                  <div id="hidden" style="display:none;"><table width="100%" border="0" cellspacing="0" cellpadding="0">
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
                                            <td><input type="text" name="cust_name" value="${ACDto.getCust_name()}" ></td>
                                            <td width="80"><table border="0" cellspacing="0" cellpadding="0">
                                              <tr>
                                                <td width="200" align="left">고객 번호</td>
                                                <td width="20" align="center"><img src="admin/img/icon.arrow02.gif" width="7" height="7"></td>
                                              </tr>
                                            </table></td>
                                             <td align="left" width="200">
                                              <c:set var="sphone" value="${fn:split(ACDto.getCust_phone(),'-')}"/>
                                 			  <c:forEach var="phone" items="${sphone}" varStatus="status" >
                                 			    <c:choose><c:when test="${ status.index == 0}">
                                 			      <select class="input_bg_white" name="cust_phone1">
								                	<option value="010" <c:if test="${phone == 010}">selected="selected"</c:if>>010</option>
								                	<option value="011" <c:if test="${phone == 011}">selected="selected"</c:if>>011</option>
								                	<option value="016" <c:if test="${phone == 016}">selected="selected"</c:if>>016</option>
								                	<option value="018" <c:if test="${phone == 018}">selected="selected"</c:if>>018</option>
								                	<option value="019" <c:if test="${phone == 019}">selected="selected"</c:if>>019</option>
								              	</select>
                                   			    </c:when>
                                   			    <c:otherwise>
                                   			    -<input type="text" size="4" name="cust_phone${status.count}" value="${phone}" class="input_gray"/>
                                   			    </c:otherwise></c:choose>
                                 			  </c:forEach>
                                            </td>
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
                                                <td width="60" align="left">요금제</td>
                                                <td width="20" align="center"><img src="admin/img/icon.arrow02.gif" alt="" width="7" height="7"></td>
                                              </tr>
                                            </table></td>
                                            <td align="left">
                                              <select name="price_name">
                                                <c:forEach items="${Price}" var="pdto">
                        						  <option value="${pdto.price_name}">${pdto.price_name}</option>
                      						    </c:forEach>
                      						   </select>
                                            </td>
                                            <td width="80"><table border="0" cellspacing="0" cellpadding="0">
                                              <tr>
                                                <td width="200" align="left">약정기간</td>
                                                <td width="20" align="center"><img src="admin/img/icon.arrow02.gif" alt="" width="7" height="7"></td>
                                              </tr>
                                            </table></td>
                                            <td width="200" align="left">
                                            <select name="cont_term" class="input_bg_white">
									          <option value="0"  <c:if test="${ACDto.getCont_term() == 0}">selected="selected"</c:if>>0</option>
									          <option value="12" <c:if test="${ACDto.getCont_term() == 12}">selected="selected"</c:if>>12</option>
									          <option value="18" <c:if test="${ACDto.getCont_term() == 18}">selected="selected"</c:if>>18</option>
									          <option value="24" <c:if test="${ACDto.getCont_term() == 24}">selected="selected"</c:if>>24</option>
									          <option value="30" <c:if test="${ACDto.getCont_term() == 30}">selected="selected"</c:if>>30</option>
									          <option value="36" <c:if test="${ACDto.getCont_term() == 36}">selected="selected"</c:if>>36</option>
									        </select>&nbsp;개월
                                            </td>
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
                                                <td width="200" align="left">판매점 ID</td>
                                                <td width="20" align="center"><img src="admin/img/icon.arrow02.gif" alt="" width="7" height="7"></td>
                                              </tr>
                                            </table></td>
                                            <td width="248">
                                              <input type="text" name="brc_id" value="${ACDto.getBrc_id()}" size="10" readonly="readonly">
                                              <input type="button" value="선택" onclick="javascript:salesupdate();">
                                            </td>
                                            <td width="80"><table border="0" cellspacing="0" cellpadding="0">
                                              <tr>
                                                <td width="200" align="left">수익금</td>
                                                <td width="20" align="center"><img src="admin/img/icon.arrow02.gif" alt="" width="7" height="7"></td>
                                              </tr>
                                            </table></td>
                                            <td width="200"><input type="text" name="rebate" value="${ACDto.getRebate()}" size="5"> 원</td>
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
                                                <td width="200" align="left">모델명</td>
                                                <td width="20" align="center"><img src="admin/img/icon.arrow02.gif" alt="" width="7" height="7"></td>
                                              </tr>
                                            </table></td>
                                            <td>
                                             <select id="model_name" name="model_name" class="input_bg_white" onchange="javascript:modelchange('model_name', 'model_code');">
                                               <c:forEach items="${Model}" var="mdto">
										         <option value="${mdto.model_code}" <c:if test="${ACDto.getModel_code() == mdto.model_code}">selected="selected"</c:if>>${mdto.model_name}</option>
										       </c:forEach>
                      						</select>
                                            </td>
                                            <td width="80"><table border="0" cellspacing="0" cellpadding="0">
                                              <tr>
                                                <td width="200" align="right">모델 코드</td>
                                                <td width="20" align="center"><img src="admin/img/icon.arrow02.gif" alt="" width="7" height="7"></td>
                                              </tr>
                                            </table></td>
                                            <td width="200"><input type="text" name="model_code" id="model_code" value="${ACDto.getModel_code()}" readonly="readonly"></td>
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
                                                <td width="200" align="left">고객 생일</td>
                                                <td width="20" align="center"><img src="admin/img/icon.arrow02.gif"  width="7" height="7"></td>
                                              </tr>
                                            </table></td>
                                            <td width="245" align="left"><input type="date" name="cust_birth" value="${ACDto.getCust_birth()}"></td>
                                             <td width="80"><table border="0" cellspacing="0" cellpadding="0">
                                               <tr>
	                                             <td align="left">개통일</td>
	                                             <td width="20" align="center"><img src="admin/img/icon.arrow02.gif" alt="" width="7" height="7"></td>
	                                           </tr>
	                                         </table></td>
	                                         <td align="left"><input type="text" name="write_date" value="${ACDto.getOpen_date()}" readonly="readonly"></td>
	                                          
	                                       </tr>
	                                    </table></td>
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
	                                             <td align="left">작성일</td>
	                                             <td width="20" align="center"><img src="admin/img/icon.arrow02.gif" alt="" width="7" height="7"></td>
	                                           </tr>
	                                         </table></td>
	                                         <td width="245" align="left"><input type="text" name="write_date" value="${ACDto.getWrite_date()}" readonly="readonly"></td>
	                                         <td width="80"><table border="0" cellspacing="0" cellpadding="0">
                                              <tr>
                                                <td align="left">작성 IP</td>
                                                <td width="20" align="center"><img src="admin/img/icon.arrow02.gif" alt="" width="7" height="7"></td>
                                              </tr>
                                            </table></td>
                                            <td align="left"><input type="text" name="write_ip" value="${ACDto.getWrite_ip()}" readonly="readonly"></td>
                                            
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
                        <td><textarea name="memo" rows="7" cols="80" >${ACDto.getMemo()}</textarea></td>
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
                            <td><a href="javascript:Update();"><img src="admin/img/bts.enter2.gif" width="69" height="33"></a>&nbsp;</td>
                            <td><a href="admClientView.do?seq=${ACDto.getSeq()}"><img src="admin/img/bts.cancle.gif" width="69" height="33"></a>&nbsp;</td>
                          </tr>
                        </table></td>
                      </tr>
                      
                    </table></td>
                  </tr>
	            </table></div></form></td>
<!-- update  ------------------------------------------------------------------------------------------------>
	          </tr>
	          <tr>
	            <td>&nbsp;</td>
	          </tr>
	        </table></form></td>
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