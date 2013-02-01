<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<jsp:include page="/inc/top1.jsp"/>    
<jsp:include page="/inc/menu2.jsp"/> 

<script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="js/agent/salesMgr/salesInsert.js"></script>




   <form method = "POST"  name="reg">
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
                                      <td align="center" valign="top" bgcolor="#FFFFFF"><table width="95%" border="0" cellspacing="0" cellpadding="0">
                                        <tr>
                                          <td height="20" colspan="3"></td>
                                        </tr>                                        
                                        <tr>
                                          <td class="bullet2"></td>
                                          <td width="200" height="40" class="line_bg_bottom2 pl5 pr10 fb">아이디</td>
                                          <td class="line_bg_bottom2 pl10">
                                          <input name="brc_id" id="brc_id" type="text" class="input_gray3" size="15" style="ime-mode:disabled;">
                                          <div id="idCheck"></div>
                                          </td>
                                          
                                        </tr>
                                        <tr>
                                          <td class="bullet2"></td>
                                          <td width="200" height="40" class="line_bg_bottom2 pl5 pr10 fb">비밀번호</td>
                                          <td class="line_bg_bottom2 pl10"><input name="password" type="password" class="input_gray3" size="15" value="" onchange="HangulStrChk(document.forms.username);"></td>
                                        </tr>
                                        <tr>
                                          <td class="bullet2"></td>
                                          <td width="200" height="40" class="line_bg_bottom2 pl5 pr10 fb">비밀번호확인</td>
                                          <td class="line_bg_bottom2 pl10"><input name="password_check" type="password" class="input_gray3" size="15" value="" onchange="HangulStrChk(document.forms.username);"></td>
                                        </tr>
                                        <tr>
                                          <td class="bullet2"></td>
                                          <td width="200" height="40" class="line_bg_bottom2 pl5 pr10 fb">판매점명</td>
                                          <td class="line_bg_bottom2 pl10"><input name="brc_name" type="text" class="input_gray3" size="15" value="" onchange="HangulStrChk(document.forms.username);"></td>
                                        </tr>
                                        <tr>
                                          <td class="bullet2"></td>
                                          <td height="40" class="line_bg_bottom2 pl5 pr10 fb">판매점연락처</td>
                                          <td class="line_bg_bottom2 pl10"><table border="0" cellspacing="0" cellpadding="0">
                                            <tr>
                                              <td><select name="brc_phone1" class="select_140_2" >
	                                            <option>02</option><option>031</option><option>032</option>
	                                            <option>033</option><option>041</option><option>042</option>
	                                            <option>043</option><option>051</option><option>052</option>
	                                            <option>053</option><option>054</option><option>055</option>
	                                            <option>061</option><option>062</option><option>063</option>
	                                            <option>064</option><option>070</option>
	                                          </select></td>
                                              <td class="pl5 pr5">-</td>
                                              <td><input name="brc_phone2" type="text" class="input_gray3" size="4" maxlength="4" style="ime-mode:disabled;"></td>
                                              <td class="pl5 pr5">-</td>
                                              <td><input name="brc_phone3" type="text" class="input_gray3" size="4" maxlength="4" style="ime-mode:disabled;"></td>
                                            </tr>
                                          </table></td>                                        
                                        </tr>                                        
                                        <tr>
                                          <td class="bullet2"></td>
                                          <td height="40" valign="middle" class="line_bg_bottom2 pl5 pr10 fb">판매점주소</td>
                                          <td class="pl10 pt10 pb10 line_bg_bottom2"><table border="0" cellspacing="0" cellpadding="0">
                                            <tr>
                                              <td class="pb10 ">
                                               <input name="brc_post1" type="text" class="input_gray3" size="5" readonly="readonly"> -
                                               <input name="brc_post2" type="text" class="input_gray3" size="5" readonly="readonly">
                                               <input type="button" name="post" value="우편번호 검색" onclick="javascript:openZipcode();" />
                                               <input type="hidden" name="brc_post" />
                                            </tr>
                                            <tr>                                              
                                              <td class="pb5 "><input name="brc_addr1" id="address1" type="text" class="input_gray3" size="60" readonly="readonly"></td>
                                            </tr>
                                            
                                            <tr>
                                              <td class="pb5 "><input name="brc_addr2" type="text" class="input_gray3" size="60" value=""></td>
                                            </tr>
                                          </table></td>
                                        </tr>
                                        <tr>
                                          <td class="bullet2"></td>
                                          <td width="200" height="40" class="line_bg_bottom2 pl5 pr10 fb">대표자</td>
                                          <td class="line_bg_bottom2 pl10"><input name="brc_boss" type="text" class="input_gray3" size="10" value="" onchange="HangulStrChk(document.forms.username);"></td>
                                        </tr>
                                        <tr>
                                          <td class="bullet2"></td>
                                          <td height="40" class="line_bg_bottom2 pl5 pr10 fb">대표자연락처</td>
                                          <td class="line_bg_bottom2 pl10"><table border="0" cellspacing="0" cellpadding="0">
                                            <tr>
                                              <td><select name="boss_phone1" class="select_140_2">
	                                            <option>010</option><option>011</option><option>016</option>
	                                            <option>017</option><option>018</option><option>019</option>
	                                          </select></td>
                                              <td class="pl5 pr5">-</td>
                                              <td><input name="boss_phone2" type="text" class="input_gray3" size="4" maxlength="4" style="ime-mode:disabled;"></td>
                                              <td class="pl5 pr5">-</td>
                                              <td><input name="boss_phone3" type="text" class="input_gray3" size="4" maxlength="4" style="ime-mode:disabled;"></td>
                                          </table></td>
                                        </tr>
                                        </tr>
                                            <tr height="60">
                                            </tr>
                                      </table></td>
                                    </tr>
                                </table></td>
                                <tr><!-- 확인 버튼 -->
                                  <td align="center"><input type="image" src="img/btn_enter.gif" onclick="javascript:customInput();"></td>
								</tr>
                              </tr>
                          </table></td>
  </form> 
<jsp:include page="/inc/bottom.jsp"/>       

