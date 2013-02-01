<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>


<jsp:include page="/admin/inc/top.jsp"/>

<script type="text/javascript">
function listandinsert(){
	document.getElementById('list').style.display="none";
	document.getElementById('insert').style.display="block";
	
}

function priceinsert(){
	var frm = document.insertForm;
	
	if(frm.price_name.value == ""){
		alert("요금제를 입력하세요");
		frm.price_name.focus();
		return false;
	}
	if(frm.price.value == ""){
		alert("기본료를 입력하세요");
		frm.price.focus();
		return false;
	}
	if(frm.use_call.value == ""){
		alert("음성통화를 입력하세요");
		frm.use_call.focus();
		return false;
	}
	if(frm.use_sms.value == ""){
		alert("문자를 입력하세요");
		frm.use_sms.focus();
		return false;
	}
	if(frm.use_data.value == ""){
		alert("데이터를 입력하세요");
		frm.use_data.focus();
		return false;
	}
	
	document.insertForm.action="admPriceInsertAct.do";
	document.insertForm.submit();
	
}

function listclick(seq, price_name, count){
	document.getElementById('seq').value = seq;
	document.getElementById('price_name').value = price_name;
	
	for(i=0; i < 10; i++){
		document.getElementById('listBLOLD_'+i).style.fontWeight = "normal";
	} 
		document.getElementById('listBLOLD_'+count).style.fontWeight = "bold";
		
		
}

function deletechk(){
	var result = confirm("정말로 삭제하시겠습니까?");
	 
	if(result == true) {
		document.PriceForm.action="admPriceDeleteAct.do";
		document.PriceForm.submit();
	}
	
}

function updatechk(){
	if(document.PriceForm.seq.value == ""){
		alert("수정할 요금제를 선택 해주세요.");
	} else {
		document.PriceForm.action="admPriceUpdate.do";
		document.PriceForm.submit();
	}
	
}

function priceupdate(){
	var frm = document.updateForm;
	
	if(frm.price_name.value == ""){
		alert("요금제를 입력하세요");
		frm.price_name.focus();
		return false;
	}
	if(frm.price.value == ""){
		alert("기본료를 입력하세요");
		frm.price.focus();
		return false;
	}
	if(frm.use_call.value == ""){
		alert("음성통화를 입력하세요");
		frm.use_call.focus();
		return false;
	}
	if(frm.use_sms.value == ""){
		alert("문자를 입력하세요");
		frm.use_sms.focus();
		return false;
	}
	if(frm.use_data.value == ""){
		alert("데이터를 입력하세요");
		frm.use_data.focus();
		return false;
	}
	
	document.updateForm.action="admPriceUpdateAct.do";
	document.updateForm.submit();
	
}

window.onload = function(){
	if(!(document.PriceForm.seq.value == "")){
		document.getElementById('list').style.display="none";
		document.getElementById('update').style.display="block";
	} 
}
</script>

<form name="PriceForm" method="get">
<input type="hidden" name="seq" id="seq" value="${Selist.getSeq()}">
<input type="hidden" name="price_name"  id="price_name" value="${Selist.getPrice_name()}">

</form>


<br>
<center>
<table width="800" border="0" align="center" cellpadding="0" cellspacing="0">
<tr>
<!-- List -------------------------------------------------------------------------------------------------------------->
  <td><div id="list" style="display: block;">
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
                                      <th width="50" align="center"><span class="s_Text_gray2_12px_Bold">번호</span></th>
                                      <th width="200" align="center"><span class="s_Text_gray2_12px_Bold">요금제</span></th>
                                      <th width="100" align="center"><span class="s_Text_gray2_12px_Bold">기본료</span></th>
                                      <th width="100" align="center"><span class="s_Text_gray2_12px_Bold">음성통화</span></th>
                                      <th width="100" align="center"><span class="s_Text_gray2_12px_Bold">문자</span></th>
                                      <th width="100" align="center"><span class="s_Text_gray2_12px_Bold">데이터</span></th>
                                      <th width="100" align="center"><span class="s_Text_gray2_12px_Bold">상태</span></th>
                                      <th width="150" align="center"><span class="s_Text_gray2_12px_Bold">작성일</span></th>
                                    </tr>
                                </table></td>
                                <td width="10"><img src="admin/img/board.bar.right.gif" width="10" height="35"></td>
                              </tr>
                          </table></td>
                        </tr>
                        
                        <tr height="300" valign="top">
                          <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                              <!-- 게시물없을때 -->
                              <c:if test="${ empty list}">
                              <tr>
                                <td colspan="12" Height="200" align="center" bgColor="#ffffff">등록된 내용이 없습니다.</td>
                              </tr>
                              </c:if>
                              <!-- 반복문  -->
                            <c:forEach items="${list}" var="dto" varStatus="count">
                              <tr onMouseOver=style.background='#D2E3F8' onMouseOut=style.background='#ffffff'>
                                <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                  <tr>                                      
                                    <td height="30"><table width="100%" border="0" cellspacing="0" cellpadding="0">        
                                      <tr id="listBLOLD_${count.index}" onclick="javascript:listclick('${dto.seq}','${dto.price_name}','${count.index}')" style="cursor:pointer">
                                      	<td width="50" align="center" class="s_Text_gray2_12px">${dto.rnum}</td>
                                        <td width="200" align="center" class="s_Text_gray2_12px">${dto.price_name}</td>
                                        <td width="100" align="center" class="s_Text_gray2_12px">${dto.price}원</td>
                                        <td width="100" align="center" class="s_Text_gray2_12px">${dto.use_call}분</td>
                                        <td width="100" align="center" class="s_Text_gray2_12px">${dto.use_sms}건</td>
                                        <td width="100" align="center" class="s_Text_gray2_12px">${dto.use_data}</td>
                                        <td width="100" align="center" class="s_Text_gray2_12px">
                                        <c:if test="${dto.state_chk == 0}">비활성화</c:if>
                                        <c:if test="${dto.state_chk == 1}">활성화</c:if> 
                                        <c:if test="${dto.state_chk == 2}">대기</c:if></td>
                                        <td width="150" align="center" class="s_Text_gray2_12px">${dto.write_date}</td>
                                        <td width="200" align="center" class="s_Text_gray2_12px" style="display: none;">${dto.state_chk}</td>
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
                              <td>${page.pHtml}</td>
                            </tr> 
                          </table></td>
                        </tr>
                        
                        <tr>
                          <td height="30" align="right">
                          <a href="javascript:listandinsert()" ><img src="admin/img/bts.enter.gif">&nbsp;</a>
                          <a href="javascript:updatechk()" ><img src="admin/img/bts.edit.gif">&nbsp;</a>
                          <a href="javascript:deletechk()" ><img src="admin/img/bts.del.gif"></a>
                          </td>
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
</table></div></td></tr>
<!------------------------------------------------------------------------------------------------------------------------>

<!-- Insert -------------------------------------------------------------------------------------------------------------->
<tr>
<td><form name="insertForm" method="get"  style="margin:0"  ENCTYPE="multipart/form-data">
<div id="insert" style="display: none;"><table width="100%" border="0" cellspacing="0" cellpadding="0">
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
                            <td><img src="admin/img/board.write.top.gif" width="800" height="11"></td>
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
<!-- 요금제 -->
                                                  <tr>
                                                    <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                                      <tr>
                                                        <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                                          <tr>
                                                            <td height="26" align="center">요금제</td>
                                                          </tr>
                                                        </table></td>
                                                      </tr>
                                                      <tr>
                                                        <td height="5"></td>
                                                      </tr>
                                                    </table></td>                                                  
                                                  </tr>
<!-- /요금제 -->
<!-- 기본료 -->
                                                  <tr>
                                                    <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                                      <tr>
                                                        <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                                          <tr>
                                                            <td height="26" align="center">기본료</td>
                                                          </tr>
                                                        </table></td>
                                                      </tr>
                                                      <tr>
                                                        <td height="5"></td>
                                                      </tr>
                                                    </table></td>                                                  
                                                  </tr>
<!-- /기본료  -->
<!-- 음성통화 -->
                                                  <tr>
                                                    <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                                      <tr>
                                                        <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                                          <tr>
                                                            <td height="26" align="center">음성통화 </td>
                                                          </tr>
                                                        </table></td>
                                                      </tr>
                                                      <tr>
                                                        <td height="5"></td>
                                                      </tr>
                                                    </table></td>                                                  
                                                  </tr>
<!-- /음성통화 -->
<!-- 문자 -->
                                                  <tr>
                                                    <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                                      <tr>
                                                        <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                                          <tr>
                                                            <td height="26" align="center">문자 </td>
                                                          </tr>
                                                        </table></td>
                                                      </tr>
                                                      <tr>
                                                        <td height="5"></td>
                                                      </tr>
                                                    </table></td>                                                  
                                                  </tr>
<!-- /문자 -->
<!-- 데이터 -->
                                                  <tr>
                                                    <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                                      <tr>
                                                        <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                                          <tr>
                                                            <td height="26" align="center">데이터 </td>
                                                          </tr>
                                                        </table></td>
                                                      </tr>
                                                      <tr>
                                                        <td height="5"></td>
                                                      </tr>
                                                    </table></td>                                                  
                                                  </tr>
<!-- /데이터 -->
<!-- 상태 -->
                                                  <tr>
                                                    <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                                      <tr>
                                                        <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                                          <tr>
                                                            <td height="26" align="center">상태 </td>
                                                          </tr>
                                                        </table></td>
                                                      </tr>
                                                      <tr>
                                                        <td height="5"></td>
                                                      </tr>
                                                    </table></td>                                                  
                                                  </tr>
<!-- /상태 -->
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
												 </table></td>
                                                <td width="5">
                                              </tr>
                                            </table></td>
                                          </tr>
                                          <tr>
                                            <td><img src="admin/img/board.write.inbottom.gif" width="102" height="8"></td>
                                          </tr>
                                        </table></td>
<!-- -------------------------------------------------------------------------------------------------------------------------- -->
<!-- -------------------------------------------------------------------------------------------------------------------------- -->
<!-- -----------------------------------------           입력창 부분 시작                      ----------------------------------->
<!-- -------------------------------------------------------------------------------------------------------------------------- -->
<!-- -------------------------------------------------------------------------------------------------------------------------- -->
                                        <td width="5"></td>
                                        <td valign="top"><table width="100%" border="0" cellpadding="0" cellspacing="0">
                                          <tr>
                                            <td>
                                              <table width="100%" border="0" cellspacing="0" cellpadding="0">
<!-- 줄 맞춤 -->                                  
                                              <tr>
                                                <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                                  <tr>
                                                    <td height="26"><table border="0" cellpadding="0" cellspacing="2">
                                                      <tr>
                                                        <td height="20" valign="bottom">
                                                          <input type="hidden" class="input_bg_white" size="20">
                                                        </td>
                                                      </tr>
                                                    </table></td>
                                                  </tr>
                                                  <tr>
                                                    <td height="5"></td>
                                                  </tr>
                                                </table></td>
                                              </tr>
<!-- /줄 맞춤 -->
<!-- 요금제 -->                                  
                                              <tr>
                                                <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                                  <tr>
                                                    <td height="26"><table border="0" cellpadding="0" cellspacing="2" bgcolor="cdcdcd">
                                                      <tr>
                                                        <td height="20" valign="bottom" bgcolor="#FFFFFF">
                                                          <input name="price_name" type="text" class="input_bg_white" size="20">
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
<!-- 기본료 -->                                  
                                              <tr>
                                                <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                                  <tr>
                                                    <td height="26"><table border="0" cellpadding="0" cellspacing="2" bgcolor="cdcdcd">
                                                      <tr>
                                                        <td height="20" valign="bottom" bgcolor="#FFFFFF">
                                                          <input name="price" type="text" class="input_bg_white"  size="20"  style="ime-mode:disabled;"> 원
                                                        </td>
                                                      </tr>
                                                    </table></td>
                                                  </tr>
                                                  <tr>
                                                    <td height="5"></td>
                                                  </tr>
                                                </table></td>
                                              </tr>
<!-- /기본료 -->
<!-- 음성통화 -->                                  
                                              <tr>
                                                <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                                  <tr>
                                                    <td height="26"><table border="0" cellpadding="0" cellspacing="2" bgcolor="cdcdcd">
                                                      <tr>
                                                        <td height="20" valign="bottom" bgcolor="#FFFFFF">
                                                          <input name="use_call" type="text" class="input_bg_white" size="20" style="ime-mode:disabled;"> 분
                                                        </td>
                                                      </tr>
                                                    </table></td>
                                                  </tr>
                                                  <tr>
                                                    <td height="5"></td>
                                                  </tr>
                                                </table></td>
                                              </tr>
<!-- / 음성통화  -->
<!-- 문자 -->                                  
                                              <tr>
                                                <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                                  <tr>
                                                    <td height="26"><table border="0" cellpadding="0" cellspacing="2" bgcolor="cdcdcd">
                                                      <tr>
                                                        <td height="20" valign="bottom" bgcolor="#FFFFFF">
                                                          <input name="use_sms" type="text" class="input_bg_white" size="20" style="ime-mode:disabled;"> 건
                                                        </td>
                                                      </tr>
                                                    </table></td>
                                                  </tr>
                                                  <tr>
                                                    <td height="5"></td>
                                                  </tr>
                                                </table></td>
                                              </tr>
<!-- /문자 -->
<!-- 데이터 -->                                  
                                              <tr>
                                                <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                                  <tr>
                                                    <td height="26"><table border="0" cellpadding="0" cellspacing="2" bgcolor="cdcdcd">
                                                      <tr>
                                                        <td height="20" valign="bottom" bgcolor="#FFFFFF">
                                                          <input name="use_data" type="text" class="input_bg_white" size="20" style="ime-mode:disabled;"> GB
                                                        </td>
                                                      </tr>
                                                    </table></td>
                                                  </tr>
                                                  <tr>
                                                    <td height="5"></td>
                                                  </tr>
                                                </table></td>
                                              </tr>
<!-- /데이터 -->
<!-- 상태 -->                                  
                                              <tr>
                                                <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                                  <tr>
                                                    <td height="26"><table border="0" cellpadding="0" cellspacing="2" bgcolor="cdcdcd">
                                                      <tr>
                                                        <td height="20" valign="bottom" bgcolor="#FFFFFF">
                                                          <input name="state_chk" type="radio" value="0" class="input_bg_white"  style="ime-mode:disabled;">비활성화
                                                          <input name="state_chk" type="radio" value="1" class="input_bg_white"  style="ime-mode:disabled;">활성화
                                                          <input name="state_chk" type="radio" value="2" class="input_bg_white"  style="ime-mode:disabled;">대기
                                                        </td>
                                                      </tr>
                                                    </table></td>
                                                  </tr>
                                                  <tr>
                                                    <td height="5"></td>
                                                  </tr>
                                                </table></td>
                                              </tr>
<!-- /상태 -->
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
                            <td><img src="admin/img/board.write.bottom.gif" width="800" height="11"></td>
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
                                <td><img src="admin/img/bts.enter.gif" width="69" height="33" onclick="javascript:priceinsert();"></td>
                                <td width="5"></td>
                                <td><img src="admin/img/bts.cancle.gif" width="69" height="33" onClick="javascript:location.href='admPriceList.do'" style="cursor:hand"></td>
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
</div></form></td></tr>
<!------------------------------------------------------------------------------------------------------------------------>

<!-- Update -------------------------------------------------------------------------------------------------------------->
<tr>
<td><form name="updateForm" method="get"  style="margin:0"  ENCTYPE="multipart/form-data">
<div id="update" style="display: none;"><table width="100%" border="0" cellspacing="0" cellpadding="0">
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
                            <td><img src="admin/img/board.write.top.gif" width="800" height="11"></td>
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
<!-- 요금제 -->
                                                  <tr>
                                                    <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                                      <tr>
                                                        <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                                          <tr>
                                                            <td height="26" align="center">요금제</td>
                                                          </tr>
                                                        </table></td>
                                                      </tr>
                                                      <tr>
                                                        <td height="5"></td>
                                                      </tr>
                                                    </table></td>                                                  
                                                  </tr>
<!-- /요금제 -->
<!-- 기본료 -->
                                                  <tr>
                                                    <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                                      <tr>
                                                        <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                                          <tr>
                                                            <td height="26" align="center">기본료</td>
                                                          </tr>
                                                        </table></td>
                                                      </tr>
                                                      <tr>
                                                        <td height="5"></td>
                                                      </tr>
                                                    </table></td>                                                  
                                                  </tr>
<!-- /기본료  -->
<!-- 음성통화 -->
                                                  <tr>
                                                    <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                                      <tr>
                                                        <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                                          <tr>
                                                            <td height="26" align="center">음성통화 </td>
                                                          </tr>
                                                        </table></td>
                                                      </tr>
                                                      <tr>
                                                        <td height="5"></td>
                                                      </tr>
                                                    </table></td>                                                  
                                                  </tr>
<!-- /음성통화 -->
<!-- 문자 -->
                                                  <tr>
                                                    <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                                      <tr>
                                                        <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                                          <tr>
                                                            <td height="26" align="center">문자 </td>
                                                          </tr>
                                                        </table></td>
                                                      </tr>
                                                      <tr>
                                                        <td height="5"></td>
                                                      </tr>
                                                    </table></td>                                                  
                                                  </tr>
<!-- /문자 -->
<!-- 데이터 -->
                                                  <tr>
                                                    <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                                      <tr>
                                                        <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                                          <tr>
                                                            <td height="26" align="center">데이터 </td>
                                                          </tr>
                                                        </table></td>
                                                      </tr>
                                                      <tr>
                                                        <td height="5"></td>
                                                      </tr>
                                                    </table></td>                                                  
                                                  </tr>
<!-- /데이터 -->
<!-- 상태 -->
                                                  <tr>
                                                    <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                                      <tr>
                                                        <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                                          <tr>
                                                            <td height="26" align="center">상태 </td>
                                                          </tr>
                                                        </table></td>
                                                      </tr>
                                                      <tr>
                                                        <td height="5"></td>
                                                      </tr>
                                                    </table></td>                                                  
                                                  </tr>
<!-- /상태 -->
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
												 </table></td>
                                                <td width="5">
                                              </tr>
                                            </table></td>
                                          </tr>
                                          <tr>
                                            <td><img src="admin/img/board.write.inbottom.gif" width="102" height="8"></td>
                                          </tr>
                                        </table></td>
<!-- -------------------------------------------------------------------------------------------------------------------------- -->
<!-- -------------------------------------------------------------------------------------------------------------------------- -->
<!-- -----------------------------------------           입력창 부분 시작                      ----------------------------------->
<!-- -------------------------------------------------------------------------------------------------------------------------- -->
<!-- -------------------------------------------------------------------------------------------------------------------------- -->
                                        <td width="5"></td>
                                        <td valign="top"><table width="100%" border="0" cellpadding="0" cellspacing="0">
                                          <tr>
                                            <td>
                                              <table width="100%" border="0" cellspacing="0" cellpadding="0">
<!-- 줄 맞춤 -->                                  
                                              <tr>
                                                <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                                  <tr>
                                                    <td height="26"><table border="0" cellpadding="0" cellspacing="2">
                                                      <tr>
                                                        <td height="20" valign="bottom">
                                                          <input name="seq" value="${Selist.getSeq()}" type="hidden" class="input_bg_white" size="20">
                                                        </td>
                                                      </tr>
                                                    </table></td>
                                                  </tr>
                                                  <tr>
                                                    <td height="5"></td>
                                                  </tr>
                                                </table></td>
                                              </tr>
<!-- /줄 맞춤 -->
<!-- 요금제 -->                                  
                                              <tr>
                                                <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                                  <tr>
                                                    <td height="26"><table border="0" cellpadding="0" cellspacing="2" bgcolor="cdcdcd">
                                                      <tr>
                                                        <td height="20" valign="bottom" bgcolor="#FFFFFF">
                                                          <input name="price_name" value="${Selist.getPrice_name()}" type="text" class="input_bg_white" size="20">
                                                          <input name="update_price_name" value="${Selist.getPrice_name()}" type="hidden" class="input_bg_white" size="20">
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
<!-- 기본료 -->                                  
                                              <tr>
                                                <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                                  <tr>
                                                    <td height="26"><table border="0" cellpadding="0" cellspacing="2" bgcolor="cdcdcd">
                                                      <tr>
                                                        <td height="20" valign="bottom" bgcolor="#FFFFFF">
                                                          <input name="price" value="${Selist.getPrice()}" type="text" class="input_bg_white"  size="20"  style="ime-mode:disabled;"> 원
                                                        </td>
                                                      </tr>
                                                    </table></td>
                                                  </tr>
                                                  <tr>
                                                    <td height="5"></td>
                                                  </tr>
                                                </table></td>
                                              </tr>
<!-- /기본료 -->
<!-- 음성통화 -->                                  
                                              <tr>
                                                <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                                  <tr>
                                                    <td height="26"><table border="0" cellpadding="0" cellspacing="2" bgcolor="cdcdcd">
                                                      <tr>
                                                        <td height="20" valign="bottom" bgcolor="#FFFFFF">
                                                          <input name="use_call" value="${Selist.getUse_call()}" type="text" class="input_bg_white" size="20" style="ime-mode:disabled;"> 분
                                                        </td>
                                                      </tr>
                                                    </table></td>
                                                  </tr>
                                                  <tr>
                                                    <td height="5"></td>
                                                  </tr>
                                                </table></td>
                                              </tr>
<!-- / 음성통화  -->
<!-- 문자 -->                                  
                                              <tr>
                                                <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                                  <tr>
                                                    <td height="26"><table border="0" cellpadding="0" cellspacing="2" bgcolor="cdcdcd">
                                                      <tr>
                                                        <td height="20" valign="bottom" bgcolor="#FFFFFF">
                                                          <input name="use_sms" value="${Selist.getUse_sms()}" type="text" class="input_bg_white" size="20" style="ime-mode:disabled;"> 건
                                                        </td>
                                                      </tr>
                                                    </table></td>
                                                  </tr>
                                                  <tr>
                                                    <td height="5"></td>
                                                  </tr>
                                                </table></td>
                                              </tr>
<!-- /문자 -->
<!-- 데이터 -->                                  
                                              <tr>
                                                <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                                  <tr>
                                                    <td height="26"><table border="0" cellpadding="0" cellspacing="2" bgcolor="cdcdcd">
                                                      <tr>
                                                        <td height="20" valign="bottom" bgcolor="#FFFFFF">
                                                          <input name="use_data" value="${Selist.getUse_data()}" type="text" class="input_bg_white" size="20" style="ime-mode:disabled;"> GB
                                                        </td>
                                                      </tr>
                                                    </table></td>
                                                  </tr>
                                                  <tr>
                                                    <td height="5"></td>
                                                  </tr>
                                                </table></td>
                                              </tr>
<!-- /데이터 -->
<!-- 상태 -->                                  
                                              <tr>
                                                <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                                  <tr>
                                                    <td height="26"><table border="0" cellpadding="0" cellspacing="2" bgcolor="cdcdcd">
                                                      <tr>
                                                        <td height="20" valign="bottom" bgcolor="#FFFFFF">
                                                          <input name="state_chk" type="radio" value="0" class="input_bg_white"  style="ime-mode:disabled;"
                                                          <c:if test="${Selist.getState_chk() == 0}" > checked="checked"</c:if>>비활성화
                                                          <input name="state_chk" type="radio" value="1" class="input_bg_white"  style="ime-mode:disabled;"
                                                          <c:if test="${Selist.getState_chk() == 1}"> checked="checked"</c:if>>활성화
                                                          <input name="state_chk" type="radio" value="2" class="input_bg_white"  style="ime-mode:disabled;"
                                                          <c:if test="${Selist.getState_chk() == 2}"> checked="checked"</c:if>>대기
                                                        </td>
                                                      </tr>
                                                    </table></td>
                                                  </tr>
                                                  <tr>
                                                    <td height="5"></td>
                                                  </tr>
                                                </table></td>
                                              </tr>
<!-- /상태 -->
<!-- 메모 -->                                  
                                              <tr>
                                                <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                                  <tr>
                                                    <td height="26"><table border="0" cellpadding="0" cellspacing="2" bgcolor="cdcdcd">
                                                      <tr>
                                                        <td height="20" valign="bottom" bgcolor="#FFFFFF">
                                                        <textarea name="memo" rows="4" cols="55" class="input_bg_white">${Selist.getMemo()}</textarea>
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
                            <td><img src="admin/img/board.write.bottom.gif" width="800" height="11"></td>
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
                                <td><img src="admin/img/bts.enter.gif" width="69" height="33" onclick="javascript:priceupdate();"></td>
                                <td width="5"></td>
                                <td><img src="admin/img/bts.cancle.gif" width="69" height="33" onClick="javascript:location.href='admPriceList.do'" style="cursor:hand"></td>
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
</div></form></td></tr>
<!------------------------------------------------------------------------------------------------------------------------>
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
</tr>


</tr>
</table>
</center>

<jsp:include page="/admin/inc/bottom.jsp"/>