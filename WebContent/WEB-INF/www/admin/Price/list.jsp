<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<jsp:include page="/admin/inc/top.jsp"/>

<script type="text/javascript">
function div(){
	document.getElementById('list').style.display="none";
	document.getElementById('insert').style.display="block";
	
}
</script>


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
                                      <th width="200" align="center"><span class="s_Text_gray2_12px_Bold">요금제 이름</span></th>
                                      <th width="100" align="center"><span class="s_Text_gray2_12px_Bold">가격</span></th>
                                      <th width="100" align="center"><span class="s_Text_gray2_12px_Bold">통화</span></th>
                                      <th width="100" align="center"><span class="s_Text_gray2_12px_Bold">문자</span></th>
                                      <th width="100" align="center"><span class="s_Text_gray2_12px_Bold">데이타</span></th>
                                      <th width="200" align="center"><span class="s_Text_gray2_12px_Bold">작성일</span></th>
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
                            <c:forEach items="${list}" var="dto">
                              <tr onMouseOver=style.background='#D2E3F8' onMouseOut=style.background='#ffffff'>
                                <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                  <tr>                                      
                                    <td height="30"><table width="100%" border="0" cellspacing="0" cellpadding="0">        
                                      <tr>
                                      	<td width="50" align="center" class="s_Text_gray2_12px">${dto.seq}</td>
                                        <td width="200" align="center" class="s_Text_gray2_12px">${dto.price_name}</td>
                                        <td width="100" align="center" class="s_Text_gray2_12px">${dto.price} 원</td>
                                        <td width="100" align="center" class="s_Text_gray2_12px">${dto.use_call}</td>
                                        <td width="100" align="center" class="s_Text_gray2_12px">${dto.use_sms}</td>
                                        <td width="100" align="center" class="s_Text_gray2_12px">${dto.use_data}</td>
                                        <td width="200" align="center" class="s_Text_gray2_12px">${dto.write_date}</td>
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
                          <a href="javascript:div()" ><img src="admin/img/bts.enter.gif">&nbsp;</a>
                          <img src="admin/img/bts.edit.gif">&nbsp;
                          <img src="admin/img/bts.del.gif">
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
<td><form name="result_forms" method="get"  style="margin:0"  ENCTYPE="multipart/form-data">
<div id="insert" style="display: block;"><table width="100%" border="0" cellspacing="0" cellpadding="0">
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
                                                        <input name="cust_phone2" type="text" class="input_bg_white"  size="3" maxlength="4">-
                                                        <input name="cust_phone3" type="text" class="input_bg_white"  size="3" maxlength="4">
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
</table></div></td>
</tr>

<!-- div view ---------------------------------------------------------------------------------------------------------------------->
</tr>
</table>
</center> 
<jsp:include page="/admin/inc/bottom.jsp"/>