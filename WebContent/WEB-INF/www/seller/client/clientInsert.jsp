<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
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
<script type="text/javascript" src="js/httpRequest.js"></script>
<script type="text/javascript">
//common.js 
//숫자체크
function checkNumber(tobj) {
	var str = tobj.value;
	var str_len = str.length;
	var flag = true;

	if (str_len > 0) { 
		for (i = 0; i < str_len; i++) { 
			if (str.charAt(i) < '0' || str.charAt(i) > '9') { 
				flag = false;
			} 
		} 
	}
	if (!flag) {
		alert("숫자만 입력가능합니다.");
		tobj.value = "";
		tobj.focus();
	} 
}
//*ajax
// var searchRebate=function(){
// 	var f = document.form;	
// 	if (f.id.value == ''){
// 		//alert('ID를 입력하세요.');
// 		document.getElementById("regOk").innerHTML='';
// 		f.existId.value=0;
// 		f.id.focus();
// 		return;
// 	}
// 	var params = "model_code="+encodeURIComponent(f.model_code.value)+"&price_name="+encodeURIComponent(f.price_name.value);
// 	sendRequest("ajax/searchRebate.jsp",params, responseCanJoin, "GET");	
// }
// var responseCanJoin = function(){	
// 	var f=document.form;
	
// 	if(httpRequest.readyState==4){
// 		if(httpRequest.status==200){			
// // 			if(httpRequest.responseText==1){				
// // 			  document.getElementById("regOk").innerHTML = f.id.value +"가 이미 존재합니다.";
// // 			  f.existId.value=1;
// // 			}else if(httpRequest.responseText==2){				
// // 			  document.getElementById("regOk").innerHTML = f.id.value +"는 사용할수 있는 ID입니다.";
// // 			  f.existId.value=2;	
// // 			}
// 			document.getElementById("regOk").innerHTML =httpRequest.responseText+"=리베이트";
// 		}
// 	}
// }
</script>

<script type="text/javascript">
	var customInput = function() {
		var frm = document.form;
		
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
// 		if(frm.birth_date.value == ''){
// 			alert("생년월일을 입력하세요");
// 			frm.birth_date.focus();
// 			return false;
// 		}
// 		if(frm.open_date.value == ''){
// 			alert("개통일을 입력하세요");
// 			frm.open_date.focus();
// 			return false;
// 		}
		
		frm.action = 'clientInsertAct.do';
		frm.submit();
	}
	

</script>
<!-- <div id="regOk"></div> //ajax-->
<form name="form" method="post">
    <td width="1"></td>
    <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td bgcolor="#272727"><table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td width="97" class="Text_gray_14px"><img src="img/sub05_category2.gif" width="100" height="60"></td>
              <td align="right">&nbsp;</td>
            </tr>
        </table></td>
      </tr>
<!-- ()----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------->
      <tr>
        <td><table width="100%" border="0" cellpadding="0" cellspacing="1" bgcolor="cccccc">
            <tr>
              <td align="center" valign="top" bgcolor="#FFFFFF"><table width="95%" border="0" cellspacing="0" cellpadding="0">
                 <tr>
                  <td class="bullet2"></td>
                  <td width="200" height="40" class="line_bg_bottom2 pl5 pr10 fb">고객명</td>
                  <td class="line_bg_bottom2 pl10"><input name="cust_name" type="text" class="input_gray" size="25"></td>
                </tr>
               
                <tr>
                  <td class="bullet2"></td>
                  <td height="40" class="line_bg_bottom2 pl5 pr10 fb">핸드폰번호</td>
                  <td class="line_bg_bottom2 pl10"><table border="0" cellspacing="0" cellpadding="0">
                      <tr>
                        <td>
                         <select class="select_140_2" name="cust_phone1">
                         	<option value="010">010</option>
                         	<option value="011">011</option>
                         	<option value="016">016</option>
                         	<option value="018">018</option>
                         	<option value="019">019</option>
                         </select>
                        </td>
                        <td class="pl5 pr5">-</td>
                        <td><input name = "cust_phone2" type="text" class="input_gray" size="4" maxlength="4" OnKeypress="checkNumber(this);"></td>
                        <td class="pl5 pr5">-</td>
                        <td><input name = "cust_phone3" type="text" class="input_gray" size="4" maxlength="4" OnKeypress="checkNumber(this);"></td>
                      </tr>
                  </table></td>
                </tr>
                <tr>
                  <td class="bullet2"></td>
                  <td height="40" class="line_bg_bottom2 pl5 pr10"><span class="fb">생년월일</span><span class="f11"/></td>
                  <td class="line_bg_bottom2 pl10"><input name="cust_birth" type="date" class="input_gray" size="25"/></td>
                </tr>
                <tr>
                  <td class="bullet2"></td>
                  <td width="200" height="40" class="line_bg_bottom2 pl5 pr10 fb">모델명</td>
                  <td class="line_bg_bottom2 pl10">
                    <select name="model_code" class="select_140">
                      <c:forEach items="${modelInfo}" var="mdto">
                        <option value="${mdto.model_code}">${mdto.model_name}</option>
                      </c:forEach>
                    </select>
                  </td>
                </tr>
                <tr>
                  <td class="bullet2"/>
                  <td width="200" height="40" class="line_bg_bottom2 pl5 pr10 fb">요금제</td>
                  <td class="line_bg_bottom2 pl10">
                    <select name="price_name" class="select_140">
                      <c:forEach items="${priceInfo}" var="pdto">
                        <option value="${pdto.price_name}">${pdto.price_name}</option>
                      </c:forEach>  
                    </select>
                  </td>
                </tr>
                <tr>
                  <td class="bullet2"/>
                  <td width="200" height="40" class="line_bg_bottom2 pl5 pr10 fb">약정기간</td>
                  <td class="line_bg_bottom2 pl10">
                    <select name="cont_term" class="select_140_2">
                      <option value="0">0</option>
                      <option value="12">12</option>
                      <option value="18">18</option>
                      <option value="24" selected="selected">24</option>
                      <option value="30">30</option>
                      <option value="36">36</option>
                    </select><span class="Text_gray_12px ">&nbsp;개월</span>
                  </td>
                </tr>
                <tr>
                  <td class="bullet2"></td>
                  <td height="40" class="line_bg_bottom2 pl5 pr10 fb"><span class="fb">개통일</span><span class="f11"/></td>
                  <td class="line_bg_bottom2 pl10"><input name="open_date" type="date" class="input_gray" size="25"/></td>
                </tr>
                <tr><td>&nbsp;</td></tr>
                <tr>
                  <td>&nbsp;</td>
                  <td height="40" class="pl5 pr10 fb"><span class="fb">메모</span><span class="f11"/></td>
                  <td class="pl10"><textarea name="memo" rows="4" cols="50" class="input_gray"></textarea></td>
                </tr>
                <tr><td>&nbsp;</td></tr>
              </table></td>
            </tr>
        </table></td>
      </tr>
      <tr>
        <td colspan="3" align="center" class="pt20 pb20"><table border="0" cellspacing="0" cellpadding="0">
            <tr>  
              <td width="5"></td>
              <td><img src="img/btn_enter.gif" type="button" width="54" height="25" onclick="javascript:customInput();"></td>
            </tr>
        </table></td>
      </tr>
    </table></td>
</form>
<jsp:include page="/inc/bottom.jsp"/>                            