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
                                          <td width="200" height="40" class="line_bg_bottom2 pl5 pr10 fb">아이디</td>
                                          <td class="line_bg_bottom2 pl10"><input name = "CUST_NM" type="text" class="input_gray"  size="25" value=""></td>
                                        </tr>
                                        <tr>
                                          <td></td>
                                          <td height="40" class="line_bg_bottom2 pl5 pr10"><span class="fb">비밀번호</span><span class="f11"></span></td>
                                          <td class="line_bg_bottom2 pl10"><input name = "CUST_ID" type="text" class="input_gray"  value="" size="25" readonly></td>
                                        </tr>
                                        
                                        <tr>
                                          <td></td>
                                          <td height="40" class="line_bg_bottom2 pl5 pr10"><span class="fb">대표자 이름</span><span class="f11"></span></td>
                                          <td class="line_bg_bottom2 pl10"><input name = "CUST_ID" type="text" class="input_gray"  value="" size="25" readonly></td>
                                        </tr>
                                      
                                        <tr>
                                          <td class="bullet2"></td>
                                          <td height="40" class="line_bg_bottom2 pl5 pr10 fb">휴대폰번호</td>
                                          <td class="line_bg_bottom2 pl10"><table border="0" cellspacing="0" cellpadding="0">
                                              <tr>
                                                <td>
	                                                <select>
	                                                	<option>010</option>
	                                                	<option>011</option>
	                                                </select>
                                                </td>
                                                <td class="pl5 pr5">-</td>
                                                <td><input name = "CEL2" type="text" class="input_gray" size="4" maxlength="4" OnKeypress="OnlyNumber();" value=""></td>
                                                <td class="pl5 pr5">-</td>
                                                <td><input name = "CEL3" type="text" class="input_gray" size="4" maxlength="4" OnKeypress="OnlyNumber();" value=""></td>
                                              </tr>
                                          </table></td>
                                        </tr>
                                        
                                          <tr>
                                          <td class="bullet2"></td>
                                          <td width="200" height="40" class="line_bg_bottom2 pl5 pr10 fb">판매점 이름</td>
                                          <td class="line_bg_bottom2 pl10"><input name = "CUST_NM" type="text" class="input_gray"  size="25" value=""></td>
                                        </tr>
                                      
                                                                                
                                        
                                        <tr>
                                          <td class="bullet2"></td>
                                          <td height="40" class="line_bg_bottom2 pl5 pr10 fb">전화번호</td>
                                          <td class="line_bg_bottom2 pl10"><table border="0" cellspacing="0" cellpadding="0">
                                              <tr>
                                                <td>
	                                                <select>
	                                                	<option>02</option>
	                                                	<option>031</option>
	                                                </select>
                                                </td>
                                                <td class="pl5 pr5">-</td>
                                                <td><input name = "TEL2" type="text" class="input_gray" size="4" maxlength="4" OnKeypress="OnlyNumber();" value=""></td>
                                                <td class="pl5 pr5">-</td>
                                                <td><input name = "TEL3" type="text" class="input_gray" size="4" maxlength="4" OnKeypress="OnlyNumber();" value=""></td>
                                              </tr>
                                          </table></td>
                                        </tr>
                                      
                                      
                                        
                                        <tr>                                                                                	
                                          <td class="bullet2"></td>
                                          <td height="40" class="line_bg_bottom2 pl5 pr10 fb">우편번호</td>
                                          <td class="line_bg_bottom2 pl10"><table border="0" cellspacing="0" cellpadding="0">
                                              <tr>
                                                <td><input name = "POST1" type="text" class="input_gray" size="4" maxlength="3" OnKeypress="OnlyNumber();" value=""></td>
                                                <td class="pl5 pr5">-</td>
                                                <td><input name = "POST2" type="text" class="input_gray" size="4" maxlength="3" OnKeypress="OnlyNumber();" value=""></td>
                                                <td><input type="submit" value="우편주소찾기"></td>
                                                </tr>
                                          </table></td>
                                        </tr>
                                        
                                        <tr>
                                          <td valign="middle" class="bullet2"></td>
                                          <td height="40" valign="middle" class="line_bg_bottom2 pl5 pr10 fb">주소</td>
                                          <td class="pl10 pt10 pb10 line_bg_bottom2"><table border="0" cellspacing="0" cellpadding="0">
                                              <tr>
                                                <td class="pb10 "><input name = "ADDRESS1" type="text" class="input_gray" size="60" value=""></td>
                                              </tr>
                                              <tr>
                                                <td><input name = "ADDRESS2" type="text" class="input_gray" size="60" value=""></td>
                                              </tr>
                                          </table></td>
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