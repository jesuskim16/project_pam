<!-- --------------------------------------------------------고객 상세정보----------------------------------------------------------------------> 
<!-- --------------------------------------------------------고객 상세정보---------------------------------------------------------------------->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="/inc/top1.jsp"/>    
<jsp:include page="/inc/menu2.jsp"/>  

<form name="regiform" method = "POST" action = "/sub5/page2/CustMan2_OK.asp">
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
                                          <td width="200" height="40" class="line_bg_bottom2 pl5 pr10 fb">고객이름</td>
                                          <td class="line_bg_bottom2 pl10"><input name = "CUST_NM" type="text" class="input_gray"  size="25" value="" readonly></td>
                                        </tr>
                                        <tr>
                                          <td></td>
                                          <td height="40" class="line_bg_bottom2 pl5 pr10"><span class="fb">생년월일</span><span class="f11"></span></td>
                                          <td class="line_bg_bottom2 pl10"><input name = "CUST_ID" type="text" class="input_gray"  value="" size="25" readonly></td>
                                        </tr>
                                        
                                        <tr>
                                          <td></td>
                                          <td height="40" class="line_bg_bottom2 pl5 pr10"><span class="fb">모델명</span><span class="f11"></span></td>
                                          <td class="line_bg_bottom2 pl10"><input name = "CUST_ID" type="text" class="input_gray"  value="" size="25" readonly></td>
                                        </tr>
                                      
                                        <tr>
                                          <td class="bullet2"></td>
                                          <td height="40" class="line_bg_bottom2 pl5 pr10 fb">제품명</td>
                                          <td class="line_bg_bottom2 pl10"><input name = "CUST_ID" type="text" class="input_gray"  value="" size="25" readonly></td>
                                        </tr>
                                        
                                        <tr>
                                          <td class="bullet2"></td>
                                          <td height="40" class="line_bg_bottom2 pl5 pr10 fb">연락처</td>
                                          <td class="line_bg_bottom2 pl10"><table border="0" cellspacing="0" cellpadding="0">
                                              <tr>                                                 
                                                <td><input name = "TEL1" type="text" class="input_gray" size="4" maxlength="4" OnKeypress="OnlyNumber();" value="" readonly></td>                                                                                           
                                                <td class="pl5 pr5">-</td>
                                                <td><input name = "TEL2" type="text" class="input_gray" size="4" maxlength="4" OnKeypress="OnlyNumber();" value="" readonly></td>
                                                <td class="pl5 pr5">-</td>
                                                <td><input name = "TEL3" type="text" class="input_gray" size="4" maxlength="4" OnKeypress="OnlyNumber();" value="" readonly></td>
                                              </tr>
                                          </table></td>
                                        </tr>
                                        
                                        <tr>
                                          <td class="bullet2"></td>
                                          <td width="200" height="40" class="line_bg_bottom2 pl5 pr10 fb">요금제</td>
                                          <td class="line_bg_bottom2 pl10"><input name = "CUST_NM" type="text" class="input_gray"  size="25" value="" readonly></td>
                                        </tr>
                                      
                                      
                                        
                                        <tr>                                                                                	
                                          <td class="bullet2"></td>
                                          <td height="40" class="line_bg_bottom2 pl5 pr10 fb">상품가입일</td>
                                          <td class="line_bg_bottom2 pl10"><input name = "CUST_NM" type="text" class="input_gray"  size="25" value="" readonly></td>
                                        </tr>      
                                        

                                      </table></td>
                                    </tr>
                                </table></td>
                              </tr>
                                        <tr>
                                          <td colspan="3" align="center" class="pt20 pb20"><table border="0" cellspacing="0" cellpadding="0">
                                              <tr>  
                                                <td width="5"></td>
                                                <td><img src="img/btn_enter.gif" type="button" width="54" height="25" onclick="history.back();"></td>
                                              </tr>
                                          </table></td>
                                        </tr>
    </table></td>
</form>                      
<jsp:include page="/inc/bottom.jsp"/>                            