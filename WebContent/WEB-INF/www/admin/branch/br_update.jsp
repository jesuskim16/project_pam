<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<link href="admin/css/admin.css" rel="stylesheet" type="text/css">
<link href="admin/css/style.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="js/branch_Modify.js"></script> 
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<table width="600" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="16" valign="top"><img src="admin/img/sub.body.box.left.gif" width="16"  height="170"></td>
          <td valign="top">
          <form name="result_form" method="post" style="margin:0"  ENCTYPE="multipart/form-data">
          <input type="hidden" id="seq" name="seq" value="${ABDto.seq}">
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
                            <td><img src="admin/img/board.write.top.gif" width="626" height="12"></td>
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
                                            <td ><img src="admin/img/board.write.intop.gif" width="102" height="10"></td>
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
                                            <td height="18"></td>
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
                                                        <input type="hidden" id="brc_level"  name="brc_level" value="${ABDto.brc_lev}">
                                                            <select name="brc_lev" id="brc_lev" class="input_bg_white">
	                                                        	<option id="br_1" value="1">대리점</option>
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
                                                    <td height="20" bgcolor="ffffff"><table border="0" cellpadding="0" cellspacing="0" bgcolor="cdcdcd">
                                                      <tr>
                                                        <td height="20" valign="bottom" bgcolor="#FFFFFF">
                                                        	<input id="brc_id" name="brc_id" type="text" class="input_bg_white" id="textfield3" size="11" maxlength="11" readonly="readonly" value="${ABDto.brc_id}">                                                        	
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

<!-- 지점명 -->                                  
                                              <tr>
                                                <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                                  <tr>
                                                    <td height="5"></td>
                                                  </tr>
                                                  <tr>
                                                    <td height="26"><table border="0" cellpadding="0" cellspacing="2" bgcolor="cdcdcd">
                                                      <tr>
                                                        <td height="20" valign="bottom" bgcolor="#FFFFFF"><input name="brc_name" type="text" class="input_bg_white" id="textfield3" size="20" value="${ABDto.brc_name}"></td>
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
                                                        <input type="hidden" id="brc_phone"  name="brc_phone" value="${ABDto.brc_phone1}">
			                                              <select name="brc_phone1" id="brc_phone1" class="input_bg_white" >
				                                            <option id="02">02</option> <option id="031">031</option><option id="032">032</option>
				                                            <option id="033">033</option><option id="041">041</option><option id="042">042</option>
				                                            <option id="043">043</option><option id="051">051</option><option id="052">052</option>
				                                            <option id="053">053</option><option id="054">054</option><option id="055">055</option>
				                                            <option id="061">061</option><option id="062">062</option><option id="063">063</option>
				                                            <option id="064">064</option><option id="070">070</option>       
				                                          </select>
                                                        <input name="brc_phone2" type="text" class="input_bg_white" id="textfield3" size="3" maxlength="4" value="${ABDto.brc_phone2}">
                                                        <input name="brc_phone3" type="text" class="input_bg_white" id="textfield3" size="3" maxlength="4" value="${ABDto.brc_phone3}">
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
                                                      		<input name="br_post1" type="text" class="input_bg_white" id="br_post1" size="1" maxlength="3" readonly="readonly" value="${ABDto.brc_post1}">
                                                      		<input name="br_post2" type="text" class="input_bg_white" id="br_post2" size="1" maxlength="3" readonly="readonly" value="${ABDto.brc_post2}">
                                                      		<input name="brc_post" type="hidden">
                                                      		<input type="button" id="br_post" value="우편번호 검색" onclick="javascript:openZipcode()">                                 
                                                      	</td>
                                                      </tr>
                                                      <tr>
                                                        <td height="20" valign="bottom" bgcolor="#FFFFFF"><input name="brc_addr1" type="text" class="input_bg_white" id="brc_addr1" size="70" readonly="readonly" value="${ABDto.brc_addr1}"></td>
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
                                                        <td height="20" valign="bottom" bgcolor="#FFFFFF"><input name="brc_addr2" type="text" class="input_bg_white" id="textfield3" size="50" value="${ABDto.brc_addr2}"></td>
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
                                                        <td height="20" valign="bottom" bgcolor="#FFFFFF"><input name="brc_boss" type="text" class="input_bg_white" id="brc_boss" size="15" maxlength="10" value="${ABDto.brc_boss}"></td>
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
                                                        <input type="hidden" id="boss_phone"  name="boss_phone" value="${ABDto.boss_phone1}">
                                                        <select class="input_bg_white" name="boss_phone1" id="boss_phone1">
                                                        	<option id="010" value="010">010</option>
                                                        	<option id="011" value="011">011</option>                                                        	
                                                        	<option id="016" value="016">016</option>
                                                        	<option id="017" value="017">017</option>
                                                        	<option id="018" value="018">018</option>
                                                        	<option id="019" value="019">019</option>
                                                        </select>                                                       
                                                        <input name="boss_phone2" type="text" class="input_bg_white" id="boss_phone2" size="3" maxlength="4" value="${ABDto.boss_phone2}">
                                                        <input name="boss_phone3" type="text" class="input_bg_white" id="boss_phone3" size="3" maxlength="4" value="${ABDto.boss_phone3}">
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
					                                    <select name="attach_id" id="attach_id" class="input_bg_white">
					                                  		<c:forEach items="${ABList}" var="ABDto">
																<option value="${ABDto.attach_id}" >${ABDto.brc_name}</option>									
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
                                <td><a href="javascript:br_Modify();"><img alt="" src="admin/img/bts.edit.gif" width="69" height="33"></a> </td>
                                <td width="5"></td>
                                <td><a href="javascript:br_close();"><img src="admin/img/bts.cancle.gif" width="69" height="33" style="cursor:hand"></a></td>
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
























<%-- 		<table width="100%" border="0" cellspacing="0" cellpadding="0">
             <tr>
               <td><input type="text" id="brc_name" class="" name="brc_name"      size="5"  value="${ABDto.brc_name}" /></td>
               <td><input type="text" id="attach_id" class="" name="attach_id"    size="5"  value="${ABDto.attach_id}" /></td>
               <td><input type="text" id="brc_phone1" class="" name="brc_phone1"  size="5"  value="${ABDto.brc_phone1}" /></td>
               <td><input type="text" id="brc_phone2" class="" name="brc_phone2"  size="5"  value="${ABDto.brc_phone2}" /></td>
               <td><input type="text" id="brc_phone3" class="" name="brc_phone3"  size="5"  value="${ABDto.brc_phone3}" /></td>
               <td><input type="text" id="brc_post" class="" name="brc_post"      size="5"  value="${ABDto.brc_post1}" /></td>
               <td><input type="text" id="brc_post" class="" name="brc_post"      size="5"  value="${ABDto.brc_post2}" /></td>
               <td><input type="text" id="brc_addr1" class="" name="brc_addr1"    size="5"  value="${ABDto.brc_addr1}" /></td>
               <td><input type="text" id="brc_addr2" class="" name="brc_addr2"    size="5"  value="${ABDto.brc_addr2}" /></td>
               <td><input type="text" id="brc_boss" class="" name="brc_boss"      size="5"  value="${ABDto.brc_boss}" /></td>
               <td><input type="text" id="boss_phone" class="" name="boss_phone"  size="5"  value="${ABDto.boss_phone1}" /></td>
               <td><input type="text" id="boss_phone" class="" name="boss_phone"  size="5"  value="${ABDto.boss_phone2}" /></td>
               <td><input type="text" id="boss_phone" class="" name="boss_phone"  size="5"  value="${ABDto.boss_phone3}" /></td>
             </tr>
         </table> --%>
</body>
</html>