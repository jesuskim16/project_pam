<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="/inc/top1.jsp"/>    
<jsp:include page="/inc/menu2.jsp"/> 


   <form name="regiform" method = "POST" action = "">
                          <td width="1"></td>
                          <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                              <tr>
                                <td bgcolor="#272727"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                    <tr>
                                      <td width="122" class="Text_gray_14px"><img src="img/sub02_category1.gif" width="100" height="60"></td>
                                      <td class="Text_gray_12px">&nbsp;</td>
                                      </tr>
                                </table></td>
                              </tr>
                              <tr>
                                <td height="1"></td>
                              </tr>
                              <tr>
                                <td><table width="100%" border="0" cellpadding="0" cellspacing="1" bgcolor="cccccc">
                                    <tr>
<!-- ()----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------->                                    
                                      <td height="700" align="center" valign="top" bgcolor="#FFFFFF"><table width="95%" border="0" cellspacing="0" cellpadding="0">
                                        <tr>
                                          <td height="20" colspan="3"></td>
                                        </tr>                                        
                                        <tr>
                                          <td class="bullet2"></td>
                                          <td width="200" height="40" class="line_bg_bottom2 pl5 pr10 fb">아이디</td>
                                          <td class="line_bg_bottom2 pl10"><input name="username" type="text" class="input_gray3" size="15" value="" onchange="HangulStrChk(document.forms.username);"></td>
                                        </tr>
                                        <tr>
                                          <td class="bullet2"></td>
                                          <td width="200" height="40" class="line_bg_bottom2 pl5 pr10 fb">비밀번호</td>
                                          <td class="line_bg_bottom2 pl10"><input name="username" type="password" class="input_gray3" size="15" value="" onchange="HangulStrChk(document.forms.username);"></td>
                                        </tr>
                                        <tr>
                                          <td class="bullet2"></td>
                                          <td width="200" height="40" class="line_bg_bottom2 pl5 pr10 fb">비밀번호확인</td>
                                          <td class="line_bg_bottom2 pl10"><input name="username" type="password" class="input_gray3" size="15" value="" onchange="HangulStrChk(document.forms.username);"></td>
                                        </tr>
                                        <tr>
                                          <td class="bullet2"></td>
                                          <td width="200" height="40" class="line_bg_bottom2 pl5 pr10 fb">판매점명</td>
                                          <td class="line_bg_bottom2 pl10"><input name="username" type="text" class="input_gray3" size="15" value="" onchange="HangulStrChk(document.forms.username);"></td>
                                        </tr>
                                        <tr>
                                          <td class="bullet2"></td>
                                          <td height="40" class="line_bg_bottom2 pl5 pr10 fb">판매점연락처</td>
                                          <td class="line_bg_bottom2 pl10"><table border="0" cellspacing="0" cellpadding="0">
                                            <tr>
                                              <td><select name="tel1" class="select_140" >
	                                            <option>02</option>
	                                            <option>031</option>
	                                          </select></td>
                                              <td class="pl5 pr5">-</td>
                                              <td><input name="tel2" type="text" class="input_gray3" size="4" value=""></td>
                                              <td class="pl5 pr5">-</td>
                                              <td><input name="tel3" type="text" class="input_gray3" size="4" value=""></td>
                                            </tr>
                                          </table></td>                                        
                                        </tr>                                        
                                        <tr>
                                          <td class="bullet2"></td>
                                          <td height="40" valign="middle" class="line_bg_bottom2 pl5 pr10 fb">판매점주소</td>
                                          <td class="pl10 pt10 pb10 line_bg_bottom2"><table border="0" cellspacing="0" cellpadding="0">
                                            <tr>
                                              <td class="pb10 "><input name="post1" type="text" class="input_gray3" size="5" value="" onClick="MM_openBrWindow('/program/pop_post.asp','post','scrollbars=yes,width=418,height=370,top=300,left=400')" style="cursor:hand"> -
                                               <input name="post2" type="text" class="input_gray3" size="5" value="" onClick="MM_openBrWindow('/program/pop_post.asp','post','scrollbars=yes,width=418,height=370,top=300,left=400')" style="cursor:hand">
                                               <img src="img/bts.add.gif" width="61" height="18"  onClick="MM_openBrWindow('/program/pop_post.asp','post','scrollbars=yes,width=418,height=370,top=300,left=400')" style="cursor:hand"></td>
                                            </tr>
                                            <tr>
                                              <td class="pb5 "><input name="address1" id="address1" type="text" class="input_gray3" size="60" value=""></td>
                                            </tr>
                                            <tr>
                                              <td><input name="address2" type="text" class="input_gray3" size="60" value=""></td>
                                            </tr>
                                          </table></td>
                                        </tr>
                                        <tr>
                                          <td class="bullet2"></td>
                                          <td width="200" height="40" class="line_bg_bottom2 pl5 pr10 fb">대표자</td>
                                          <td class="line_bg_bottom2 pl10"><input name="username" type="text" class="input_gray3" size="10" value="" onchange="HangulStrChk(document.forms.username);"></td>
                                        </tr>
                                        <tr>
                                          <td class="bullet2"></td>
                                          <td height="40" class="line_bg_bottom2 pl5 pr10 fb">대표자연락처</td>
                                          <td class="line_bg_bottom2 pl10"><table border="0" cellspacing="0" cellpadding="0">
                                            <tr>
                                              <td><select name="tel1" class="select_140">
	                                            <option>02</option>
	                                            <option>031</option>
	                                          </select></td>
                                              <td><input name="tel1" type="text" class="input_gray3" size="4" value=""></td>
                                              <td class="pl5 pr5">-</td>
                                              <td><input name="tel2" type="text" class="input_gray3" size="4" value=""></td>
                                              <td class="pl5 pr5">-</td>
                                              <td><input name="tel3" type="text" class="input_gray3" size="4" value=""></td>
                                            </tr>
                                          </table></td>                                        
                                        </tr>
                                      </table></td>
                                    </tr>
                                </table></td>
                              </tr>
                          </table></td>
  </form> 
<jsp:include page="/inc/bottom.jsp"/>       