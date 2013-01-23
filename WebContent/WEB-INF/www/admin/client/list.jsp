<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="/admin/inc/top.jsp"/>

<script type="text/javascript">
var view = function(seq, value){
	
	var url = "admClientView.do?seq="+seq;
	open(url, "confirm",
			"toolbar=no, location=no, status=no, menubar=no, scrolbar=yes" +
	"resizeble=no, width=700, height=345");
}


function managerhref(managerID, span_brc_id){
	
	var count = document.listForm.count.value + 1;	
	
	var salesID = document.listForm.sales.value;
	var Mpg = document.listForm.Mpg.value;
	var Spg = document.listForm.Spg.value;
	var Cpg = document.listForm.Cpg.value;
	
	location.href="admClientList.do?managerID="+managerID+"&salesID="+salesID+"&count="+count+"&Mpg="+Mpg+"&Spg="+Spg+"&Cpg="+Cpg;

	document.listForm.manager_span_brc_id.value = span_brc_id;  
	
}

function saleshref(salesID, span_brc_id){
	var count = document.listForm.count.value + 1;
	
	var managerID = document.listForm.manager.value;
	var Mpg = document.listForm.Mpg.value;
	var Spg = document.listForm.Spg.value;
	var Cpg = document.listForm.Cpg.value;
	
	
	
	location.href="admClientList.do?managerID="+managerID+"&salesID="+salesID+"&count="+count+"&Mpg="+Mpg+"&Spg="+Spg+"&Cpg="+Cpg;
	
	document.listForm.sales_span_brc_id.value = span_brc_id;
	
}

window.onload = function(){
	var manager_id = document.listForm.manager.value;
	var sales_id = document.listForm.sales.value;
	
	manager_id = eval("document.getElementById('brc_id_"+manager_id+"')");
	manager_id.style.fontWeight = "bold";
	
	sales_id = eval("document.getElementById('brc_id_"+sales_id+"')");
	sales_id.style.fontWeight = "bold";
			
	
}
//Insert div
function Insert(hidden, seem){
	if (!(document.listForm.sales.value == "")) {
		document.getElementById(hidden).style.display="block";
		document.getElementById(seem).style.display="none";
		
	} else{
		alert("대리점과 판매점 목록을 선택해주세요.");
	}
	
}
//Check
var customInput = function() {
	var frm = document.result_forms;
	
	if(frm.cust_name.value == ""){
		alert("고객명을 입력하세요");
		frm.cust_name.focus();
		return false;
	}
	if(frm.cust_name.value.length < 2){
		alert("고객명을 2자 이상 입력하세요");
		frm.cust_name.focus();
		return false;
	}
	if ((frm.cust_phone2.value.length < 3) || (frm.cust_phone2.value == ""))
	{
		alert("핸드폰번호 앞번호를 입력해 주세요.");
		frm.cust_phone2.focus();
		return false;
	}
	if ((frm.cust_phone3.value.length < 4) || (frm.cust_phone3.value == ""))
	{
		alert("핸드폰번호 뒷번호를 입력해 주세요.");
		frm.cust_phone3.focus();
		return false;
	}

	frm.action="admClientInsertAct.do";
	frm.submit();
}

</script>
<form name="listForm">
<input type="hidden" name="count">
<input type="hidden" name="manager" value="${managerID}">
<input type="hidden" name="sales" value="${salesID}">
<input type="hidden" name="Mpg" value="${Mpg}">
<input type="hidden" name="Spg" value="${Spg}">
<input type="hidden" name="Cpg" value="${Cpg}">

<input type="hidden" name="manager_span_brc_id">
<input type="hidden" name="sales_span_brc_id">

</form>
<br>
<center>
<table width="800" border="0" align="center" cellpadding="0" cellspacing="0">
<!-- 대리점 목록 ---------------------------------------------------------------------------------------------------------------->    
 <tr valign="top">
 <form name="MSList">
  <td align="left"><table width="200" border="0" align="center" cellpadding="0" cellspacing="0">
	<tr>
  	  <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
      	<tr>
          <td width="16" valign="top"><img src="admin/img/sub.body.box.left.gif" width="16" height="170"></td>
          <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td height="5" background="admin/img/sub.body.bg01.gif"></td>
            </tr>
            <tr>
              <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                        
                        <tr>
                          <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                              <tr>
                                <td width="10"><img src="admin/img/board.bar.left.gif" width="10" height="35"></td>
                                <td background="admin/img/board.bar.bg.gif"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                    <tr>
                                      <th width="50" align="center"><span class="s_Text_gray2_12px_Bold">번호</span></th>
                                      <th width="60" align="center"><span class="s_Text_gray2_12px_Bold">대리점</span></th>
                                    </tr>
                                </table></td>
                                <td width="10"><img src="admin/img/board.bar.right.gif" width="10" height="35"></td>
                              </tr>
                          </table></td>
                        </tr>
                        
                        <tr>
                          <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                              <!-- 게시물없을때 -->
                              <c:if test="${ empty Mlist}">
                              <tr>
                                <td colspan="12" Height="200" align="center" bgColor="#ffffff">등록된 내용이 없습니다.</td>
                              </tr>
                              </c:if>
                              <!-- 반복문  -->
                            <c:forEach items="${Mlist}" var="Mcdto">
                              <tr onclick="javascript:managerhref('${Mcdto.brc_id}', 'brc_id_${Mcdto.brc_id}')" style="cursor:pointer">
                                <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                  <tr>                                      
                                    <td height="30"><table width="100%" border="0" cellspacing="0" cellpadding="0">        
                                      	<td width="50" align="center" class="s_Text_gray2_12px">${Mcdto.rnum}</td>
                                      	<td width="60" align="center" class="s_Text_gray2_12px"><span id="brc_id_${Mcdto.brc_id}">${Mcdto.brc_id}</span></td>
                                      </tr>                                        
                                    </table></td>                                      
                                  </tr>                             
                                </table></td>
                              </tr>
                              <tr>
                                <td height="1" bgcolor="e5e5e5"></td>
                              </tr>
                            </c:forEach>
                              
       				      </table></td>
                        </tr>
                        
                        <tr>      
                          <td height="30" align="center"><table>
                            <tr>
                              <td>${Mpage.pHtml}</td>
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
        <td width="16" valign="top"><img src="admin/img/sub.body.box.right.gif" width="16" height="170"></td>
      </tr>
    </table></td>
  </tr>  
</table></td>
<!-------------------------------------------------------------------------------------------------------------------------------->
<!------판매점 목록-------------------------------------------------------------------------------------------------------------------->
  <td align="left"><table width="200" border="0" align="center" cellpadding="0" cellspacing="0">
	<tr>
  	  <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
      	<tr>
          <td width="16" valign="top"><img src="admin/img/sub.body.box.left.gif" width="16" height="170"></td>
          <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td height="5" background="admin/img/sub.body.bg01.gif"></td>
            </tr>
            <tr>
              <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                        
                        <tr>
                          <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                              <tr>
                                <td width="10"><img src="admin/img/board.bar.left.gif" width="10" height="35"></td>
                                <td background="admin/img/board.bar.bg.gif"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                    <tr>
                                      <th width="50" align="center"><span class="s_Text_gray2_12px_Bold">번호</span></th>
                                      <th width="60" align="center"><span class="s_Text_gray2_12px_Bold">판매점</span></th>
                                    </tr>
                                </table></td>
                                <td width="10"><img src="admin/img/board.bar.right.gif" width="10" height="35"></td>
                              </tr>
                          </table></td>
                        </tr>
                        
                        <tr>
                          <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                              <!-- 게시물없을때 -->
                              <c:if test="${ empty Slist}">
                              <tr>
                                <td colspan="12" Height="200" align="center" bgColor="#ffffff">등록된 내용이 없습니다.</td>
                              </tr>
                              </c:if>
                              <!-- 반복문  -->
                            <c:forEach items="${Slist}" var="Scdto">
                              <tr onclick="javascript:saleshref('${Scdto.brc_id}', 'brc_id_${Scdto.brc_id}')" style="cursor:pointer">
                                <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                  <tr>                                      
                                    <td height="30"><table width="100%" border="0" cellspacing="0" cellpadding="0">        
                                      	<td width="50" align="center" class="s_Text_gray2_12px">${Scdto.rnum}</td>
                                      	<td width="60" align="center" class="s_Text_gray2_12px"><span id="brc_id_${Scdto.brc_id}">${Scdto.brc_id}</span></td>
                                      </tr>                                        
                                    </table></td>                                      
                                  </tr>                             
                                </table></td>
                              </tr>
                              <tr>
                                <td height="1" bgcolor="e5e5e5"></td>
                              </tr>
                            </c:forEach>
                              
       				      </table></td>
                        </tr>
                        
                        <tr>      
                          <td height="30" align="center"><table>
                            <tr>
                              <td>${Spage.pHtml}</td>
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
        <td width="16" valign="top"><img src="admin/img/sub.body.box.right.gif" width="16" height="170"></td>
      </tr>
    </table></td>
  </tr>  
</table></td>
</form>
<!-------------------------------------------------------------------------------------------------------------------------------->
<!--div insert-------------------------------------------------------------------------------------------------------------------->
<td><form name="result_forms" method="get"  style="margin:0"  ENCTYPE="multipart/form-data">
<div id="hidden" style="display: none;"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="16" valign="top"><img src="admin/img/sub.body.box.left.gif" width="16" height="170"></td>
          <td valign="top">
            <table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td height="5" background="admin/img/sub.body.bg01.gif"></td>
              </tr>
              <tr>
                <td height="10" background="admin/img/sub.body.bg02.gif"></td>
              </tr>
              <tr>
                <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                      <tr>
                        <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                          <tr>
                            <td><img src="admin/img/board.write.top.gif" width="626" height="11"></td>
                          </tr>
                          <tr>
                            <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                              <tr>
                                <td width="1" bgcolor="dadada"></td>
                                <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                  <tr>
                                    <td width="5">&nbsp;</td>
                                    <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                      <tr>
                                        <td width="102" valign="bottom"><table border="0" cellspacing="0" cellpadding="0" >
                                          <tr bgcolor="ffffff" >                                          
                                            <td ><img src="admin/img/board.write.intop.gif" width="102" height="10" align="bottom"></td>
                                          </tr>
                                          <tr>
                                            <td bgcolor="#EEEEEE"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                              <tr>
                                                <td width="5"></td>
                                                <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
<!-- 아이디 -->
                                                  <tr>
                                                    <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                                      <tr>
                                                        <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                                          <tr>
                                                            <td height="26" align="center">고객명</td>
                                                          </tr>
                                                        </table></td>
                                                      </tr>
                                                      <tr>
                                                        <td height="5"></td>
                                                      </tr>
                                                    </table></td>                                                  
                                                  </tr>
<!-- /아이디 -->
<!-- 핸드폰 번호 -->
                                                  <tr>
                                                    <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                                      <tr>
                                                        <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                                          <tr>
                                                            <td height="26" align="center">핸드폰 번호</td>
                                                          </tr>
                                                        </table></td>
                                                      </tr>
                                                      <tr>
                                                        <td height="5"></td>
                                                      </tr>
                                                    </table></td>                                                  
                                                  </tr>
<!-- /핸드폰 번호  -->
<!-- 생년 월 일 -->
                                                  <tr>
                                                    <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                                      <tr>
                                                        <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                                          <tr>
                                                            <td height="26" align="center">생년 월 일 </td>
                                                          </tr>
                                                        </table></td>
                                                      </tr>
                                                      <tr>
                                                        <td height="5"></td>
                                                      </tr>
                                                    </table></td>                                                  
                                                  </tr>
<!-- /생년 월 일 -->
<!-- 모델명 -->
                                                  <tr>
                                                    <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                                      <tr>
                                                        <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                                          <tr>
                                                            <td height="26" align="center">모델명 </td>
                                                          </tr>
                                                        </table></td>
                                                      </tr>
                                                      <tr>
                                                        <td height="5"></td>
                                                      </tr>
                                                    </table></td>                                                  
                                                  </tr>
<!-- /모델명 -->
<!-- 요금제 -->
                                                  <tr>
                                                    <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                                      <tr>
                                                        <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                                          <tr>
                                                            <td height="26" align="center">요금제 </td>
                                                          </tr>
                                                        </table></td>
                                                      </tr>
                                                      <tr>
                                                        <td height="5"></td>
                                                      </tr>
                                                    </table></td>                                                  
                                                  </tr>
<!-- /요금제 -->
<!-- 약정기간 -->
                                                  <tr>
                                                    <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                                      <tr>
                                                        <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                                          <tr>
                                                            <td height="26" align="center">약정기간 </td>
                                                          </tr>
                                                        </table></td>
                                                      </tr>
                                                      <tr>
                                                        <td height="5"></td>
                                                      </tr>
                                                    </table></td>                                                  
                                                  </tr>
<!-- /약정기간 -->
<!-- 개통일 -->
                                                  <tr>
                                                    <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                                      <tr>
                                                        <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                                          <tr>
                                                            <td height="26" align="center">개통일 </td>
                                                          </tr>
                                                        </table></td>
                                                      </tr>
                                                      <tr>
                                                        <td height="5"></td>
                                                      </tr>
                                                    </table></td>                                                  
                                                  </tr>
<!-- /개통일 -->
<!-- 메모 -->
                                                  <tr>
                                                    <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                                      <tr>
                                                        <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                                          <tr>
                                                            <td height="60" align="center">메모 </td>
                                                          </tr>
                                                        </table></td>
                                                      </tr>
                                                      <tr>
                                                        <td height="5"></td>
                                                      </tr>
                                                    </table></td>                                                  
                                                  </tr>
<!-- /메모 -->
<!-- 라인 -->                                      
                                                  <tr>
                                                    <td height="2" background="admin/img/board.write.inline.gif"></td>
                                                  </tr>
<!-- /라인 --> 

 
<!-- -------------------------------------------------------------------------------------------------------------------------- -->
<!-- -------------------------------------------------------------------------------------------------------------------------- -->
<!-- -----------------------------------------           입력창 부분 시작                      --------------------------------------------------- -->
<!-- -------------------------------------------------------------------------------------------------------------------------- -->
<!-- -------------------------------------------------------------------------------------------------------------------------- -->

                                                
                                               
<!-- 입력창 부분 시작 -->                                                  
                                                </table></td>
                                                <td width="5">
                                              </tr>
                                            </table></td>
                                          </tr>
                                          <tr>
                                            <td><img src="admin/img/board.write.inbottom.gif" width="102" height="8"></td>
                                          </tr>
                                        </table></td>
                                        <td width="5"></td>
                                        <td valign="top"><table width="100%" border="0" cellpadding="0" cellspacing="0">
                                          <tr>
                                            <td>
                                              <table width="100%" border="0" cellspacing="0" cellpadding="0">
<!-- 판매점 -->                                  
                                              <tr>
                                                <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                                  <tr>
                                                    <td><table border="0" cellpadding="0" cellspacing="2">
                                                      <tr>
                                                        <td height="20" valign="bottom" bgcolor="#FFFFFF"><input name="brc_id" type="hidden" class="input_bg_white" size="20" value="${salesID}" readonly="readonly"></td>
                                                      </tr>
                                                    </table></td>
                                                  </tr>
                                                  <tr>
                                                    <td height="5"></td>
                                                  </tr>
                                                </table></td>
                                              </tr>
<!-- /판매점 -->
<!-- 고객명 -->                                  
                                              <tr>
                                                <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                                  <tr>
                                                    <td height="26"><table border="0" cellpadding="0" cellspacing="2" bgcolor="cdcdcd">
                                                      <tr>
                                                        <td height="20" valign="bottom" bgcolor="#FFFFFF"><input name="cust_name" type="text" class="input_bg_white" size="20"></td>
                                                      </tr>
                                                    </table></td>
                                                  </tr>
                                                  <tr>
                                                    <td height="5"></td>
                                                  </tr>
                                                </table></td>
                                              </tr>
<!-- /고객명 -->
<!-- 핸드폰 번호 -->                                  
                                              <tr>
                                                <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                                  <tr>
                                                    <td height="26"><table border="0" cellpadding="0" cellspacing="2" bgcolor="cdcdcd">
                                                      <tr>
                                                        <td height="20" valign="bottom" bgcolor="#FFFFFF">
                                                        <select class="input_bg_white" name="cust_phone1">
								                         	<option value="010">010</option>
								                         	<option value="011">011</option>
								                         	<option value="016">016</option>
								                         	<option value="018">018</option>
								                         	<option value="019">019</option>
								                         </select>-
                                                        <input name="cust_phone2" type="text" class="input_bg_white" id="" size="3" maxlength="4">-
                                                        <input name="cust_phone3" type="text" class="input_bg_white" id="" size="3" maxlength="4">
                                                        </td>
                                                      </tr>
                                                    </table></td>
                                                  </tr>
                                                  <tr>
                                                    <td height="5"></td>
                                                  </tr>
                                                </table></td>
                                              </tr>
<!-- /핸드폰 번호 -->
<!-- 생년 월 일 -->                                  
                                              <tr>
                                                <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                                  <tr>
                                                    <td height="26"><table border="0" cellpadding="0" cellspacing="2" bgcolor="cdcdcd">
                                                      <tr>
                                                        <td height="20" valign="bottom" bgcolor="#FFFFFF"><input name="cust_birth" type="date" class="input_bg_white" size="20"></td>
                                                      </tr>
                                                    </table></td>
                                                  </tr>
                                                  <tr>
                                                    <td height="5"></td>
                                                  </tr>
                                                </table></td>
                                              </tr>
<!-- / 생년 월 일  -->
<!-- 모델명 -->                                  
                                              <tr>
                                                <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                                  <tr>
                                                    <td height="26"><table border="0" cellpadding="0" cellspacing="2" bgcolor="cdcdcd">
                                                      <tr>
                                                        <td height="20" valign="bottom" bgcolor="#FFFFFF">
                                                          <select name="model_code" class="input_bg_white">
                                                            <c:forEach items="${Model}" var="mdto">
										                      <option value="${mdto.model_code}">${mdto.model_name}</option>
										                    </c:forEach>
                      									  </select>
                                                        </td>
                                                      </tr>
                                                    </table></td>
                                                  </tr>
                                                  <tr>
                                                    <td height="5"></td>
                                                  </tr>
                                                </table></td>
                                              </tr>
<!-- /모델명 -->
<!-- 요금제 -->                                  
                                              <tr>
                                                <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                                  <tr>
                                                    <td height="26"><table border="0" cellpadding="0" cellspacing="2" bgcolor="cdcdcd">
                                                      <tr>
                                                        <td height="20" valign="bottom" bgcolor="#FFFFFF">
                                                        <select name="price_name" class="input_bg_white">
                      									  <c:forEach items="${Pricelist}" var="pdto">
                        									<option value="${pdto.price_name}">${pdto.price_name}</option>
                      									  </c:forEach>
                    									</select>
                                                        </td>
                                                      </tr>
                                                    </table></td>
                                                  </tr>
                                                  <tr>
                                                    <td height="5"></td>
                                                  </tr>
                                                </table></td>
                                              </tr>
<!-- /요금제 -->
<!-- 약정기간 -->                                  
                                              <tr>
                                                <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                                  <tr>
                                                    <td height="26"><table border="0" cellpadding="0" cellspacing="2" bgcolor="cdcdcd">
                                                      <tr>
                                                        <td height="20" valign="bottom" bgcolor="#FFFFFF">
                                                        <select name="cont_term" class="input_bg_white">
									                      <option value="0">0</option>
									                      <option value="12">12</option>
									                      <option value="18">18</option>
									                      <option value="24" selected="selected">24</option>
									                      <option value="30">30</option>
									                      <option value="36">36</option>
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
<!-- /약정기간 -->
<!-- 개통일 -->                                  
                                              <tr>
                                                <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                                  <tr>
                                                    <td height="26"><table border="0" cellpadding="0" cellspacing="2" bgcolor="cdcdcd">
                                                      <tr>
                                                        <td height="20" valign="bottom" bgcolor="#FFFFFF"><input name="open_date" type="date" class="input_bg_white" size="20"></td>
                                                      </tr>
                                                    </table></td>
                                                  </tr>
                                                  <tr>
                                                    <td height="5"></td>
                                                  </tr>
                                                </table></td>
                                              </tr>
<!-- /개통일 -->
<!-- 메모 -->                                  
                                              <tr>
                                                <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                                  <tr>
                                                    <td height="26"><table border="0" cellpadding="0" cellspacing="2" bgcolor="cdcdcd">
                                                      <tr>
                                                        <td height="20" valign="bottom" bgcolor="#FFFFFF">
                                                        <textarea name="memo" rows="4" cols="55" class="input_bg_white">내용을 입력해주세요.</textarea>
                                                        </td>
                                                      </tr>
                                                    </table></td>
                                                  </tr>
                                                  <tr>
                                                    <td height="5"></td>
                                                  </tr>
                                                </table></td>
                                              </tr>
<!-- /메모 -->                                                  
                                            </table></td>
                                          </tr>
                                          <tr>
                                            <td height="8"></td>
                                          </tr>
                                        </table></td>
                                      </tr>
                                    </table></td>
                                    <td width="5">&nbsp;</td>
                                  </tr>
                                </table></td>
                                <td width="1" bgcolor="dadada"></td>
                              </tr>
                            </table></td>
                          </tr>
                          <tr>
                            <td><img src="admin/img/board.write.bottom.gif" width="626" height="11"></td>
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
                                <td><img src="admin/img/bts.enter.gif" width="69" height="33" onclick="javascript:customInput();"></td>
                                <td width="5"></td>
                                <td><img src="admin/img/bts.cancle.gif" width="69" height="33" onClick="javascript:location.href='admClientList.do'" style="cursor:hand"></td>
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
            </table>                              
        </td>
        <td width="16" valign="top"><img src="admin/img/sub.body.box.right.gif" width="16" height="170" onclick="saveContent();"></td>
      </tr>
    </table>
</div></form></td>
<!--div insert-------------------------------------------------------------------------------------------------------------------->

<!--div list---------------------------------------------------------------------------------------------------------------------->
<td><div id="seem" style="display: block;">
<table width="800" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
  <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="16" valign="top"><img src="admin/img/sub.body.box.left.gif" width="16" height="170"></td>
        <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td height="5" background="admin/img/sub.body.bg01.gif"></td>
            </tr>
            <tr>
              <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                        
                        <tr>
                          <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                              <tr>
                                <td width="10"><img src="admin/img/board.bar.left.gif" width="10" height="35"></td>
                                <td background="admin/img/board.bar.bg.gif"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                    <tr>
                                      <th width="30" align="center"><span class="s_Text_gray2_12px_Bold">번호</span></th>
                                      <th width="90" align="center"><span class="s_Text_gray2_12px_Bold">고객이름</span></th>
                                      <th width="100" align="center"><span class="s_Text_gray2_12px_Bold">고객번호</span></th>
                                      <th width="90"  align="center"><span class="s_Text_gray2_12px_Bold">약정기간</span></th>
                                      <th width="90" align="center"><span class="s_Text_gray2_12px_Bold">요금제</span></th>
                                      <th width="120" align="center"><span class="s_Text_gray2_12px_Bold">모델 코드</span></th>
                                      <th width="150" align="center"><span class="s_Text_gray2_12px_Bold">작성일</span></th>
                                    </tr>
                                </table></td>
                                <td width="10"><img src="admin/img/board.bar.right.gif" width="10" height="35"></td>
                              </tr>
                          </table></td>
                        </tr>
                        
                        <tr>
                          <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                              <!-- 게시물없을때 -->
                              <c:if test="${ empty Clist}">
                              <tr>
                                <td colspan="12" Height="200" align="center" bgColor="#ffffff">등록된 내용이 없습니다.</td>
                              </tr>
                              </c:if>
                              <!-- 반복문  -->
                            <c:forEach items="${Clist}" var="cdto">
                              <tr onMouseOver=style.background='#D2E3F8' onMouseOut=style.background='#ffffff'>
                                <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                  <tr>                                      
                                    <td height="30"><table width="100%" border="0" cellspacing="0" cellpadding="0">        
                                      <tr onclick="javascript:view('${cdto.seq}');" >
                                      	<td width="40" align="center" class="s_Text_gray2_12px">${cdto.rnum}</td>
                                        <td width="90" align="center" class="s_Text_gray2_12px">${cdto.cust_name}</td>
                                        <td width="100" align="center" class="s_Text_gray2_12px">${cdto.cust_phone}</td>
                                        <td width="90"  align="center" class="s_Text_gray2_12px">${cdto.cont_term}</td>
                                        <td width="90" align="center" class="s_Text_gray2_12px">${cdto.price_name}</td>
                                        <td width="120" align="center" class="s_Text_gray2_12px">${cdto.model_code}</td>
                                        <td width="150" align="center" class="s_Text_gray2_12px">${cdto.write_date}</td>
                                      </tr>                                        
                                    </table></td>                                      
                                  </tr>                             
                                </table></td>
                              </tr>
                              <tr>
                                <td height="1" bgcolor="e5e5e5"></td>
                              </tr>
                            </c:forEach>
                              
       				      </table></td>
                        </tr>
                        
                        <tr>      
                          <td height="30" align="center"><table>
                            <tr>
                              <td>${Cpage.pHtml}</td>
                            </tr> 
                          </table></td>
                        </tr>
                        
                        <tr>
                          <td height="30" align="right"><img src="admin/img/bts.write2.gif" onclick="javascript:Insert('hidden','seem')"></td>
                        </tr>
                    </table></td>
                  </tr>
				  <tr>
                    <td align="center"><form name="forms" method="post" action="list.asp" style="margin:0">
                        <input type="hidden" name="table_name" value="sub5_page2_board2">
                        <table border="0" cellspacing="0" cellpadding="0">
                          <tr>
                            <td><img src="admin/img/board.search.img01.gif" width="41" height="42"></td>
                            <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                  <td height="1" bgcolor="cfcfcf"></td>
                                </tr>
                                <tr>
                                  <td height="40"><table border="0" cellspacing="0" cellpadding="0">
                                      <tr>
                                        <td><table border="0" cellpadding="0" cellspacing="1" bgcolor="cacaca">
                                            <tr>
                                              <td bgcolor="#FFFFFF"><select name="search" class="input_bg_white">
                                                  <option value="TITLES" >제목</option>
                                                  <option valwue="USERNAME" >글쓴이</option>
                                              </select></td>
                                            </tr>
                                          </table>
                                            <label></label></td>
                                        <td width="5"></td>
                                        <td><table width="100%" border="0" cellpadding="0" cellspacing="2" bgcolor="cdcdcd">
                                          <tr>
                                            <td height="20" valign="bottom" bgcolor="#FFFFFF"><input name="se_string" type="text" class="input_bg_white" id="textfield3" size="46" value=""></td>
                                          </tr>
                                        </table></td>
                                        <td width="5"></td>
                                        <td><input type="image" src="admin/img/bts.search.gif" width="45" height="21"></td>
                                      </tr>
                                  </table></td>
                                </tr>
                                <tr>
                                  <td height="1" bgcolor="cfcfcf"></td>
                                </tr>
                            </table></td>
                            <td><img src="admin/img/board.search.img02.gif" width="11" height="42"></td>
                          </tr>
                        </table>
                    </form></td>
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
</table></div></td>
<!--div list---------------------------------------------------------------------------------------------------------------------->
</tr>
</table> 
</center> 
<jsp:include page="/admin/inc/bottom.jsp"/>