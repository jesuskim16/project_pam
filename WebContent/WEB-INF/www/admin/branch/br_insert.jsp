<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="js/branch_Insert.js"></script> 
<script type="text/javascript" src="js/jquery.toastmessage.js"></script>
<jsp:include page="/admin/inc/top.jsp"/>
<jsp:include page="/admin/inc/menu_branch.jsp"/>
<table width="600" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="16" valign="top"><img src="admin/img/sub.body.box.left.gif" width="16" height="170"></td>
          <td valign="top">
          <form name="result_forms" method="get" action="admNoticeInsertAct.do" style="margin:0"  ENCTYPE="multipart/form-data">
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
                                            <td ><img src="admin/img/board.write.intop.gif" width="102" height="8" align="bottom"></td>
                                          </tr>
                                          <tr>
                                            <td bgcolor="#EEEEEE"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                              <tr>
                                                <td width="5"></td>
                                                <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
<!-- 지점선택 -->
                                                  <tr>
                                                    <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                                      <tr>
                                                        <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                                          <tr>
                                                            <td width="13" align="center"><img src="admin/img/icon.dot.red2.gif" alt="" width="4" height="4"></td>
                                                            <td height="26">지점선택</td>
                                                          </tr>
                                                        </table></td>
                                                      </tr>
                                                      <tr>
                                                        <td height="5"></td>
                                                      </tr>
                                                    </table></td>                                                  
                                                  </tr>
<!-- /지점선택 -->
<!-- 아이디 -->
                                                  <tr>
                                                    <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                                      <tr>
                                                        <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                                          <tr>
                                                            <td width="13" align="center"><img src="admin/img/icon.dot.red2.gif" alt="" width="4" height="4"></td>
                                                            <td height="26">아이디</td>
                                                          </tr>
                                                        </table></td>
                                                      </tr>
                                                      <tr>
                                                        <td height="5"></td>
                                                      </tr>
                                                    </table></td>                                                  
                                                  </tr>
<!-- /아이디 -->
<!-- 비밀번호 -->
                                                  <tr>
                                                    <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                                      <tr>
                                                        <td height="5"></td>
                                                      </tr>
                                                      <tr>
                                                        <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                                          <tr>
                                                            <td width="13" align="center"><img src="admin/img/icon.dot.red2.gif" alt="" width="4" height="4"></td>
                                                            <td height="26">비밀번호</td>
                                                          </tr>
                                                        </table></td>
                                                      </tr>
                                                      <tr>
                                                        <td height="5"></td>
                                                      </tr>
                                                    </table></td>                                                  
                                                  </tr>
<!-- /비밀번호 -->
<!-- 비밀번호 확인 -->
                                                  <tr>
                                                    <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                                      <tr>
                                                        <td height="5"></td>
                                                      </tr>
                                                      <tr>
                                                        <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                                          <tr>
                                                            <td width="13" align="center"><img src="admin/img/icon.dot.red2.gif" alt="" width="4" height="4"></td>
                                                            <td height="26">비밀번호 확인</td>
                                                          </tr>
                                                        </table></td>
                                                      </tr>
                                                      <tr>
                                                        <td height="5"></td>
                                                      </tr>
                                                    </table></td>                                                  
                                                  </tr>
<!-- /비밀번호 확인 -->
<!-- 지점명 -->
                                                  <tr>
                                                    <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                                      <tr>
                                                        <td height="5"></td>
                                                      </tr>
                                                      <tr>
                                                        <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                                          <tr>
                                                            <td width="13" align="center"></td>
                                                            <td height="26">지점명</td>
                                                          </tr>
                                                        </table></td>
                                                      </tr>
                                                      <tr>
                                                        <td height="5"></td>
                                                      </tr>
                                                    </table></td>                                                  
                                                  </tr>
<!-- /지점명 -->
<!-- 지점 전화번호 -->
                                                  <tr>
                                                    <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                                      <tr>
                                                        <td height="5"></td>
                                                      </tr>
                                                      <tr>
                                                        <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                                          <tr>
                                                            <td width="13" align="center"></td>
                                                            <td height="26">지점 전화번호</td>
                                                          </tr>
                                                        </table></td>
                                                      </tr>
                                                      <tr>
                                                        <td height="5"></td>
                                                      </tr>
                                                    </table></td>                                                  
                                                  </tr>
<!-- /지점 전화번호 -->
<!-- 지점 주소 -->
                                                  <tr>
                                                    <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                                      <tr>
                                                        <td height="5"></td>
                                                      </tr>
                                                      <tr>
                                                        <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                                          <tr>
                                                            <td width="13" align="center"></td>
                                                            <td height="46">지점 주소</td>
                                                          </tr>
                                                        </table></td>
                                                      </tr>
                                                      <tr>
                                                        <td height="5"></td>
                                                      </tr>
                                                    </table></td>                                                  
                                                  </tr>
<!-- /지점 주소 -->
<!-- 지점 상세주소 -->
                                                  <tr>
                                                    <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                                      <tr>
                                                        <td height="5"></td>
                                                      </tr>
                                                      <tr>
                                                        <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                                          <tr>
                                                            <td width="13" align="center"></td>
                                                            <td height="26">지점 상세주소</td>
                                                          </tr>
                                                        </table></td>
                                                      </tr>
                                                      <tr>
                                                        <td height="5"></td>
                                                      </tr>
                                                    </table></td>                                                  
                                                  </tr>
<!-- /지점 상세주소 -->
<!-- 대표자 이름 -->
                                                  <tr>
                                                    <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                                      <tr>
                                                        <td height="5"></td>
                                                      </tr>
                                                      <tr>
                                                        <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                                          <tr>
                                                            <td width="13" align="center"><img src="admin/img/icon.dot.red2.gif" alt="" width="4" height="4"></td>
                                                            <td height="26">대표자 이름</td>
                                                          </tr>
                                                        </table></td>
                                                      </tr>
                                                      <tr>
                                                        <td height="5"></td>
                                                      </tr>
                                                    </table></td>                                                  
                                                  </tr>
<!-- /대표자 이름 -->
<!-- 대표자 연락처 -->
                                                  <tr>
                                                    <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                                      <tr>
                                                        <td height="5"></td>
                                                      </tr>
                                                      <tr>
                                                        <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                                          <tr>
                                                            <td width="13" align="center"></td>
                                                            <td height="26">대표자 연락처</td>
                                                          </tr>
                                                        </table></td>
                                                      </tr>
                                                      <tr>
                                                        <td height="5"></td>
                                                      </tr>
                                                    </table></td>                                                  
                                                  </tr>
<!-- /대표자 연락처 -->
<!-- 라인 -->                                      
                                                  <tr>
                                                    <td height="2" background="admin/img/board.write.inline.gif"></td>
                                                  </tr>
<!-- /라인 --> 
<!-- 대표자 이름 -->
                                                  <tr id="BR_List_name">
                                                    <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                                      <tr>
                                                        <td height="5"></td>
                                                      </tr>
                                                      <tr>
                                                        <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                                          <tr>
                                                            <td width="13" align="center"><img src="admin/img/icon.dot.red2.gif" alt="" width="4" height="4"></td>
                                                            <td height="26">대리점 목록</td>
                                                          </tr>
                                                        </table></td>
                                                      </tr>
                                                      <tr>
                                                        <td height="5"></td>
                                                      </tr>
                                                    </table></td>                                                  
                                                  </tr>
<!-- /대표자 이름 -->
 
<!-- -------------------------------------------------------------------------------------------------------------------------- -->
<!-- -------------------------------------------------------------------------------------------------------------------------- -->
<!-- -----------------------------------------           입력창 부분 시작                      --------------------------------------------------- -->
<!-- -------------------------------------------------------------------------------------------------------------------------- -->
<!-- -------------------------------------------------------------------------------------------------------------------------- -->

                                                
                                               
<!-- 입력창 부분 시작 -->                                                  
                                                </table></td>
                                                <td width="5"></td>
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
                                            <td height="8"></td>
                                          </tr>
                                          <tr>
                                            <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                            
<!-- 지점선택 -->                                  
                                              <tr>
                                                <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                                  <tr>
                                                    <td></td>
                                                  </tr>
                                                  <tr >
                                                    <td ><table border="0" cellpadding="0" cellspacing="0" bgcolor="#D8D8D8">
                                                      <tr >
                                                        <td  valign="bottom" >
                                                            <select id="br_sel" class="input_bg_white">
	                                                        	<option id="br_1" value="1" selected="selected">대리점</option>
	                                                        	<option id="br_2" value="2">판매점</option>
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
<!-- /지점선택 -->                                               
<!-- 아이디 -->                                  
                                              <tr>
                                                <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                                  <tr>
                                                    <td height="5"></td>
                                                  </tr>
                                                  <tr>
                                                    <td height="25" bgcolor="ffffff"><table border="0" cellpadding="0" cellspacing="0" bgcolor="cdcdcd">
                                                      <tr>
                                                        <td height="20" valign="bottom" bgcolor="#FFFFFF">
                                                        	<input id="brc_id" name="brc_id" type="text" class="input_bg_white" id="textfield3" size="11" maxlength="11">                                                        	
                                                        </td>
                                                        <td width="5" height="20" valign="center" bgcolor="#FFFFFF"></td>
                                                        <td height="20" valign="center" bgcolor="#FFFFFF">   <div id="idCheck"></div></td>                                                        
                                                      </tr>
                                                    </table></td>
                                                  </tr>
                                                  <tr>
                                                    <td height="5"></td>
                                                  </tr>
                                                </table></td>
                                              </tr>
<!-- /아이디 -->
<!-- 비밀번호 -->                                  
                                              <tr>
                                                <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                                  <tr>
                                                    <td height="5"></td>
                                                  </tr>
                                                  <tr>
                                                    <td height="26"><table border="0" cellpadding="0" cellspacing="0" bgcolor="cdcdcd">
                                                      <tr>
                                                        <td height="20" valign="bottom" bgcolor="#FFFFFF"><input name="password" id="password" type="password" class="input_bg_white" id="textfield3" size="11"></td>
                                                      </tr>
                                                    </table></td>
                                                  </tr>
                                                  <tr>
                                                    <td height="5"></td>
                                                  </tr>
                                                </table></td>
                                              </tr>
<!-- /비밀번호 -->
<!-- 비밀번호 -->                                  
                                              <tr>
                                                <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                                  <tr>
                                                    <td height="5"></td>
                                                  </tr>
                                                  <tr>
                                                    <td height="26"><table border="0" cellpadding="0" cellspacing="2" bgcolor="cdcdcd">
                                                      <tr>
                                                        <td height="20" valign="bottom" bgcolor="#FFFFFF"><input name="re_password" id="re_password" type="password" class="input_bg_white" id="textfield3" size="11"></td>
                                                        <td width="5" height="20" valign="center" bgcolor="#FFFFFF"></td>
                                                        <td height="20" valign="center" bgcolor="#FFFFFF"><div id="password_Check"></div></td>
                                                      </tr>
                                                    </table></td>
                                                  </tr>
                                                  <tr>
                                                    <td height="5"></td>
                                                  </tr>
                                                </table></td>
                                              </tr>
<!-- /비밀번호 -->

<!-- 지점명 -->                                  
                                              <tr>
                                                <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                                  <tr>
                                                    <td height="5"></td>
                                                  </tr>
                                                  <tr>
                                                    <td height="26"><table border="0" cellpadding="0" cellspacing="2" bgcolor="cdcdcd">
                                                      <tr>
                                                        <td height="20" valign="bottom" bgcolor="#FFFFFF"><input name="brc_name" type="text" class="input_bg_white" id="textfield3" size="20"></td>
                                                      </tr>
                                                    </table></td>
                                                  </tr>
                                                  <tr>
                                                    <td height="5"></td>
                                                  </tr>
                                                </table></td>
                                              </tr>
<!-- /지점명 -->
<!-- 지점 전화번호 -->                                  
                                              <tr>
                                                <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                                  <tr>
                                                    <td height="5"></td>
                                                  </tr>
                                                  <tr>
                                                    <td height="26"><table border="0" cellpadding="0" cellspacing="2" bgcolor="cdcdcd">
                                                      <tr>
                                                        <td height="20" valign="bottom" bgcolor="#FFFFFF">
			                                              <select name="brc_phone1" class="input_bg_white" >
				                                            <option>02</option><option>031</option><option>032</option>
				                                            <option>033</option><option>041</option><option>042</option>
				                                            <option>043</option><option>051</option><option>052</option>
				                                            <option>053</option><option>054</option><option>055</option>
				                                            <option>061</option><option>062</option><option>063</option>
				                                            <option>064</option><option>070</option>
				                                          </select>
                                                        <input name="brc_phone2" type="text" class="input_bg_white" id="textfield3" size="3" maxlength="4">
                                                        <input name="brc_phone3" type="text" class="input_bg_white" id="textfield3" size="3" maxlength="4">
                                                        </td>
                                                      </tr>
                                                    </table></td>
                                                  </tr>
                                                  <tr>
                                                    <td height="5"></td>
                                                  </tr>
                                                </table></td>
                                              </tr>
<!-- /지점 전화번호  -->
<!-- 주소 -->                                  
                                              <tr>
                                                <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                                  <tr>
                                                    <td height="5"></td>
                                                  </tr>
                                                  <tr>
                                                    <td height="26"><table border="0" cellpadding="0" cellspacing="2" bgcolor="cdcdcd">
                                                      <tr>
                                                      	<td height="20" valign="bottom" bgcolor="#FFFFFF">
                                                      		<input name="brc_post1" type="text" class="input_bg_white" id="brc_post1" size="1" maxlength="3" readonly="readonly">
                                                      		<input name="brc_post2" type="text" class="input_bg_white" id="brc_post2" size="1" maxlength="3" readonly="readonly">
                                                      		<input type="button" class="input_bg_gray" value="우편번호 검색" onclick="javascript:test();">
                                                      	</td>
                                                      </tr>
                                                      <tr>
                                                        <td height="20" valign="bottom" bgcolor="#FFFFFF"><input name="brc_addr1" type="text" class="input_bg_white" id="textfield3" size="30" readonly="readonly"></td>
                                                      </tr>
                                                    </table></td>
                                                  </tr>
                                                  <tr>
                                                    <td height="5"></td>
                                                  </tr>
                                                </table></td>
                                              </tr>
<!-- /주소 -->
<!-- 상세주소 -->                                  
                                              <tr>
                                                <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                                  <tr>
                                                    <td height="5"></td>
                                                  </tr>
                                                  <tr>
                                                    <td height="26"><table border="0" cellpadding="0" cellspacing="2" bgcolor="cdcdcd">
                                                      <tr>
                                                        <td height="20" valign="bottom" bgcolor="#FFFFFF"><input name="brc_addr2" type="text" class="input_bg_white" id="textfield3" size="45"></td>
                                                      </tr>
                                                    </table></td>
                                                  </tr>
                                                  <tr>
                                                    <td height="5"></td>
                                                  </tr>
                                                </table></td>
                                              </tr>
<!-- /상세주소 -->
<!-- 대표자이름 -->                                  
                                              <tr>
                                                <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                                  <tr>
                                                    <td height="5"></td>
                                                  </tr>
                                                  <tr>
                                                    <td height="26"><table border="0" cellpadding="0" cellspacing="2" bgcolor="cdcdcd">
                                                      <tr>
                                                        <td height="20" valign="bottom" bgcolor="#FFFFFF"><input name="brc_boss" type="text" class="input_bg_white" id="brc_boss" size="15" maxlength="10"></td>
                                                        <td width="5" height="20" valign="bottom" bgcolor="#FFFFFF"></td>
                                                        <td height="20" valign="bottom" bgcolor="#FFFFFF"><div id="brc_bossCheck"></div></td>
                                                      </tr>
                                                    </table></td>
                                                  </tr>
                                                  <tr>
                                                    <td height="5"></td>
                                                  </tr>
                                                </table></td>
                                              </tr>
<!-- /대표자이름 -->
<!-- 대표자 연락처 -->                                  
                                              <tr>
                                                <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                                  <tr>
                                                    <td height="5"></td>
                                                  </tr>
                                                  <tr>
                                                    <td height="26"><table border="0" cellpadding="0" cellspacing="2" bgcolor="cdcdcd">
                                                      <tr>
                                                        <td height="20" valign="bottom" bgcolor="#FFFFFF">
                                                        <select class="input_bg_white" name="brc_phone1" id="boss_phone1">
                                                        	<option value="011">011</option>
                                                        	<option value="010" selected>010</option>
                                                        	<option value="016">016</option>
                                                        	<option value="017">017</option>
                                                        	<option value="018">018</option>
                                                        	<option value="019">019</option>
                                                        </select>                                                       
                                                        <input name="boss_phone2" type="text" class="input_bg_white" id="boss_phone2" size="3" maxlength="4">
                                                        <input name="boss_phone3" type="text" class="input_bg_white" id="boss_phone3" size="3" maxlength="4">
                                                        </td>
                                                      </tr>
                                                    </table></td>
                                                  </tr>
                                                  <tr>
                                                    <td height="5"></td>
                                                  </tr>
                                                </table></td>
                                              </tr>
<!-- /대표자 연락처 -->
<!-- 대리점 목록 -->                                 
                                              <tr id="BR_List">
                                                <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                                  <tr>
                                                    <td height="5"></td>
                                                  </tr>
                                                  <tr>
                                                    <td height="26"><table border="0" cellpadding="0" cellspacing="2" bgcolor="cdcdcd">
                                                      <tr>
                                                        <td height="20" valign="bottom" bgcolor="#FFFFFF">
                                                        <select class="input_bg_white" name="brc_phone1" id="boss_phone1">
                                                        	<option value="011">011</option>
                                                        	<option value="010" selected>010</option>
                                                        	<option value="016">016</option>
                                                        	<option value="017">017</option>
                                                        	<option value="018">018</option>
                                                        	<option value="019">019</option>
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
                                             
<!-- /대리점 목록 -->                                                  
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
                                <td><input type="image" src="admin/img/bts.enter.gif" width="69" height="33"></td>
                                <td width="5"></td>
                                <td><img src="admin/img/bts.cancle.gif" width="69" height="33" onClick="history.back();" style="cursor:hand"></td>
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
          </form>                              
        </td>
        <td width="16" valign="top"><img src="admin/img/sub.body.box.right.gif" width="16" height="170" onclick="saveContent();"></td>
      </tr>
    </table></td>
  </tr>
</table>
<jsp:include page="/admin/inc/bottom.jsp"/>