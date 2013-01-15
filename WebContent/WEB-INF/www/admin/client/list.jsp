<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="/admin/inc/top.jsp"/>

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
                                      <td width="90" align="center"><span class="s_Text_gray2_12px_Bold">번호</td>
                                      <td width="90" align="center"><span class="s_Text_gray2_12px_Bold">고객이름</span></td>
                                      <td width="90" align="center"><span class="s_Text_gray2_12px_Bold">고객번호</span></td>
                                      <td width="90" align="center"><span class="s_Text_gray2_12px_Bold">약정기간</span></td>
                                      <td width="90" align="center"><span class="s_Text_gray2_12px_Bold">개통일</span></td>
                                      <td width="90" align="center"><span class="s_Text_gray2_12px_Bold">메모</span></td>
                                      <td width="90" align="center"><span class="s_Text_gray2_12px_Bold">작성일</span></td>
                                      <td width="90" align="center"><span class="s_Text_gray2_12px_Bold">작성 IP</span></td>
                                      <td width="100" align="center"><span class="s_Text_gray2_12px_Bold">판매점 ID</span></td>
                                      <td width="100" align="center"><span class="s_Text_gray2_12px_Bold">요금제</span></td>
                                      <td width="100" align="center"><span class="s_Text_gray2_12px_Bold">모델 코드</span></td>
                                      <td width="100" align="center"><span class="s_Text_gray2_12px_Bold">요금제</span></td>
                                      <td width="90" align="center"><span class="s_Text_gray2_12px_Bold">주민번호</span></td>
                                    </tr>
                                </table></td>
                                <td width="10"><img src="admin/img/board.bar.right.gif" width="10" height="35"></td>
                              </tr>
                          </table></td>
                        </tr>
                        <tr>
                          <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                              <!-- 게시물없을때 -->
                              <!-- 
                              <tr>
                                <td colspan="12" Height="200" align="center" bgColor="#ffffff">등록된 내용이 없습니다.</td>
                              </tr>
                              -->
                              <!-- 반복문  -->
                              <tr>
                                <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                    <tr>
                                      <td width="10">&nbsp;</td>
                                      <td height="30"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                          <tr>
                                          <c:forEach items="${list}" var="cdto">
<%--                                             <td width="30" align="center" class="s_Text_gray2_12px">${cdto.rnum}</td> --%>
<%--                                             <td align="left" class="s_Text_gray2_12px">${cdto.cust_name}<a href="view.do"></a></td> --%>
<%--                                             <td width="50" align="center">${cdto.cust_phone}</td> --%>
<%--                                             <td width="100" align="center" class="s_Text_gray2_12px">${cdto.cont_term}</td> --%>
<%--                                             <td width="90" align="center" class="s_Text_gray2_12px">${cdto.open_date}</td> --%>
<%--                                             <td width="90" align="center" class="s_Text_gray2_12px">${cdto.memo}</td> --%>
<%--                                             <td width="90" align="center" class="s_Text_gray2_12px">${cdto.write_date}</td> --%>
<%--                                             <td width="90" align="center" class="s_Text_gray2_12px">${cdto.write_ip}</td> --%>
<%--                                             <td width="90" align="center" class="s_Text_gray2_12px">${cdto.brc_id}</td> --%>
<%--                                             <td width="90" align="center" class="s_Text_gray2_12px">${cdto.price_name}</td> --%>
<%--                                             <td width="90" align="center" class="s_Text_gray2_12px">${cdto.model_code}</td> --%>
<%--                                             <td width="90" align="center" class="s_Text_gray2_12px">${cdto.rebate}</td> --%>
<%--                                             <td width="90" align="center" class="s_Text_gray2_12px">${cdto.cust_birth}</td> --%>
                                            </c:forEach>
                                          </tr>
                                      </table></td>
                                      <td width="10">&nbsp;</td>
                                    </tr>
                                </table></td>
                              </tr>
                              <tr>
                                <td height="1" bgcolor="e5e5e5"></td>
                              </tr>
       				          <!-- 반복문 종료  -->
                          </table></td>
                        </tr>
                        <tr>
                          <td height="30" align="center">
                            ${page.pHtml}  
                          </td>
                          
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