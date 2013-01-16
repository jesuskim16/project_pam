<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="/admin/inc/top.jsp"/>

<script type="text/javascript">
var view = function(seq){
	var url = "admClientView.do?seq="+seq;
	open(url, "confirm", 
			"toolbar=no, location=no, status=no, menubar=no, scrolbar=yes" +
	"resizeble=no, width=700, height=345");
}

</script>

<br>
<center>    
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
                                      <th width="30" align="center"><span class="s_Text_gray2_12px_Bold">번호</span></th>
                                      <th width="90" align="center"><span class="s_Text_gray2_12px_Bold">고객이름</span></th>
                                      <th width="100" align="center"><span class="s_Text_gray2_12px_Bold">고객번호</span></th>
                                      <th width="90"  align="center"><span class="s_Text_gray2_12px_Bold">약정기간</span></th>
                                      <th width="90" align="center"><span class="s_Text_gray2_12px_Bold">요금제</span></th>
                                      <th width="120" align="center"><span class="s_Text_gray2_12px_Bold">모델 코드</span></th>
                                      <th width="150" align="center"><span class="s_Text_gray2_12px_Bold">작성일</span></th>
                                    </tr>
                                </table></td>
                                <td width="10"><img src="admin/img/board.bar.right.gif" width="10" height="35"></td>
                              </tr>
                          </table></td>
                        </tr>
                        
                        <tr>
                          <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                              <!-- 게시물없을때 -->
                              <c:if test="${ empty list}">
                              <tr>
                                <td colspan="12" Height="200" align="center" bgColor="#ffffff">등록된 내용이 없습니다.</td>
                              </tr>
                              </c:if>
                              <!-- 반복문  -->
                            <c:forEach items="${list}" var="cdto">
                              <tr>
                                <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                  <tr>                                      
                                    <td height="30"><table width="100%" border="0" cellspacing="0" cellpadding="0">        
                                      <tr onclick="javascript:view('${cdto.seq}');">
                                      	<td width="40" align="center" class="s_Text_gray2_12px">${cdto.rnum}</td>
                                        <td width="90" align="center" class="s_Text_gray2_12px">${cdto.cust_name}</td>
                                        <td width="100" align="center" class="s_Text_gray2_12px">${cdto.cust_phone}</td>
                                        <td width="90"  align="center" class="s_Text_gray2_12px">${cdto.cont_term}</td>
                                        <td width="90" align="center" class="s_Text_gray2_12px">${cdto.rebate}</td>
                                        <td width="120" align="center" class="s_Text_gray2_12px">${cdto.model_code}</td>
                                        <td width="150" align="center" class="s_Text_gray2_12px">${cdto.write_date}</td>
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
                          <td height="30" align="right"><a href="admClientInsert.do"><img src="admin/img/bts.write.gif"></a> </td>
                        </tr>
                    </table></td>
                  </tr>
				  <tr>
                    <td align="center"><form name="forms" method="post" action="list.asp" style="margin:0">
                        <input type="hidden" name="table_name" value="sub5_page2_board2">
                        <table border="0" cellspacing="0" cellpadding="0">
                          <tr>
                            <td><img src="admin/img/board.search.img01.gif" width="41" height="42"></td>
                            <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                  <td height="1" bgcolor="cfcfcf"></td>
                                </tr>
                                <tr>
                                  <td height="40"><table border="0" cellspacing="0" cellpadding="0">
                                      <tr>
                                        <td><table border="0" cellpadding="0" cellspacing="1" bgcolor="cacaca">
                                            <tr>
                                              <td bgcolor="#FFFFFF"><select name="search" class="input_bg_white">
                                                  <option value="TITLES" >제목</option>
                                                  <option valwue="USERNAME" >글쓴이</option>
                                              </select></td>
                                            </tr>
                                          </table>
                                            <label></label></td>
                                        <td width="5"></td>
                                        <td><table width="100%" border="0" cellpadding="0" cellspacing="2" bgcolor="cdcdcd">
                                          <tr>
                                            <td height="20" valign="bottom" bgcolor="#FFFFFF"><input name="se_string" type="text" class="input_bg_white" id="textfield3" size="46" value=""></td>
                                          </tr>
                                        </table></td>
                                        <td width="5"></td>
                                        <td><input type="image" src="admin/img/bts.search.gif" width="45" height="21"></td>
                                      </tr>
                                  </table></td>
                                </tr>
                                <tr>
                                  <td height="1" bgcolor="cfcfcf"></td>
                                </tr>
                            </table></td>
                            <td><img src="admin/img/board.search.img02.gif" width="11" height="42"></td>
                          </tr>
                        </table>
                    </form></td>
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
</table>   
</center> 
<jsp:include page="/admin/inc/bottom.jsp"/>