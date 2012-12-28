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
    <jsp:include page="/inc/menu6.jsp"/>
  </c:when>    
</c:choose>

<script type="text/javascript">
	var customInput = function() {
		var frm = document.form;
		frm.action = 'clientInsertAct.do';
		frm.submit();
	}
</script>

<form name="form" method="post">
    <td width="1"></td>
    <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td bgcolor="#272727"><table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td width="97" class="Text_gray_14px"><img src="img/sub02_category1.gif" width="100" height="60"></td>
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
                  <td class="line_bg_bottom2 pl10"><input name="cust_name" type="text" class="input_gray"  size="25"></td>
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
                        <td><input name = "cust_phone2" type="text" class="input_gray" size="4" maxlength="4" OnKeypress="OnlyNumber();" value=""></td>
                        <td class="pl5 pr5">-</td>
                        <td><input name = "cust_phone3" type="text" class="input_gray" size="4" maxlength="4" OnKeypress="OnlyNumber();" value=""></td>
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
                    <select name="model_name" class="select_140">
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
                  <td class="line_bg_bottom2 pl10"><input name="cont_term" type="text" class="input_gray" size="6" value="">개월</td>
                </tr>
                <tr>
                  <td class="bullet2"></td>
                  <td height="40" class="line_bg_bottom2 pl5 pr10 fb"><span class="fb">개통일</span><span class="f11"/></td>
                  <td class="line_bg_bottom2 pl10"><input name="open_date" type="date" class="input_gray" size="25"/></td>
                </tr>
                <tr><td>&nbsp;</td></tr>
                <tr>
                  <td class="bullet2"></td>
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