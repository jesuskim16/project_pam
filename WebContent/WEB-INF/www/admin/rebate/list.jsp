<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<jsp:include page="/admin/inc/top.jsp"/>
<jsp:include page="/admin/inc/menu_board.jsp"/>
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
                    <td>
                    <div id="list">
                    
                    </div>
                    </td>
                  </tr>
				  <tr>
                    <td align="center">
<!--  -->     
	  				<table width="100%" border="0" cellspacing="0" cellpadding="0">
	                        <tr>
	                          <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
	                              <tr>
	                                <td width="10"><img src="admin/img/board.bar.left.gif" width="10" height="35"></td>
	                                <td background="admin/img/board.bar.bg.gif"><table width="100%" border="0" cellspacing="0" cellpadding="0">
	                                    <tr>
	                                      <td width="30" align="center" class="s_Text_gray2_12px_Bold">번호</td>
	                                      <td width="100" align="center"><span class="s_Text_gray2_12px_Bold">모델명</span></td>         
	                                     <c:forEach items="${priceName}" var="title">
	                                      <td width="80" align="center"><span class="s_Text_gray2_12px_Bold">${title}</span></td>
	                                     </c:forEach>
	                                    </tr>
	                                </table></td>
	                                <td width="10"><img src="admin/img/board.bar.right.gif" width="10" height="35"></td>
	                              </tr>
	                          </table></td>
	                        </tr>
	                        <tr>
	                          <td height="350" valign="top">
	
	                          <table width="100%" border="0" cellspacing="0" cellpadding="0">
	                              <!-- 게시물없을때 -->
	                              <c:if test="${empty list}">
	                              <tr>
	                                <td colspan="12" height="300" align="center" valign="center" bgColor="#ffffff"><h1>등록된 내용이 없습니다.</h1></td>
	                              </tr>
	                              </c:if>	                              
	                             <c:forEach items="${list}" var="rebate">
	                              <!-- 반복문  -->
	                              <tr>
	                                <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
	                                    <tr>
	                                      <td width="10">&nbsp;</td>
	                                      <td height="30"><table width="100%" border="0" cellspacing="0" cellpadding="0">
	                                          <tr>
	                                            <td width="30" align="center" class="s_Text_gray2_12px">${rebate.SEQ}</td>
	                                            <td width="100" align="left" class="s_Text_gray2_12px">&nbsp;&nbsp;${rebate.MODEL_CODE}</td>
	                                           <c:forEach items="${priceName}" var="title" varStatus="i">
	                                            	<td width="80" align="center"><input type="text" size="5" value="${list[i.count]}"/></td>
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
	                             </c:forEach>
	                          </table>
	                          
	                          </td>
	                        </tr>
	                        <tr>	                        
	                          <td height="30" align="center">
	                            <!-- 페이징 -->                               
<%-- 	                            <jsp:include page="/admin/inc/paging.jsp"> --%>
<%-- 	                              <jsp:param value="admNoticeList.do" name="url"/> --%>
<%-- 	                              <jsp:param value="${p.startPage}" name="startPage"/> --%>
<%-- 	                              <jsp:param value="${p.endPage}" name="endPage"/> --%>
<%-- 	                              <jsp:param value="${p.pg}" name="pg"/> --%>
<%-- 	                              <jsp:param value="${p.pageSize}" name="pageSize"/> --%>
<%-- 	                              <jsp:param value="${p.totalCount}" name="totalCount"/> --%>
<%-- 	                              <jsp:param value="${p.pageCount}" name="pageCount"/> --%>
<%-- 	                              <jsp:param value="${p.board_chk}" name="board_chk"/> --%>
<%-- 	                            </jsp:include> --%>
	                          </td>	                          
	                        </tr>
<!-- 	                        <tr> -->
<%-- 	                          <td height="30" align="right"><a href="#layer" onclick="insertContent('${p.board_chk}')"><img src="admin/img/bts.write.gif"></a> </td> --%>
<!-- 	                        </tr> -->
	                    </table> 
					            
<!--                         <table border="0" cellspacing="0" cellpadding="0"> -->
<!--                           <tr> -->
<!--                             <td><img src="admin/img/board.search.img01.gif" width="41" height="42"></td> -->
<!--                             <td><table width="100%" border="0" cellspacing="0" cellpadding="0"> -->
<!--                                 <tr> -->
<!--                                   <td height="1" bgcolor="cfcfcf"></td> -->
<!--                                 </tr> -->
<!--                                 <tr> -->
<!--                                   <td height="40"><table border="0" cellspacing="0" cellpadding="0"> -->
<!--                                       <tr> -->
<!--                                         <td><table border="0" cellpadding="0" cellspacing="1" bgcolor="cacaca"> -->
<!--                                             <tr> -->
<!--                                               <td bgcolor="#FFFFFF"><select name="search" class="input_bg_white"> -->
<!--                                                   <option value="TITLES" >제목</option> -->
<!--                                                   <option value="USERNAME" >글쓴이</option> -->
<!--                                               </select></td> -->
<!--                                             </tr> -->
<!--                                           </table> -->
<!--                                             <label></label></td> -->
<!--                                         <td width="5"></td> -->
<!--                                         <td><table width="100%" border="0" cellpadding="0" cellspacing="2" bgcolor="cdcdcd"> -->
<!--                                           <tr> -->
<!--                                             <td height="20" valign="bottom" bgcolor="#FFFFFF"><input name="se_string" type="text" class="input_bg_white" id="textfield3" size="46" value=""></td> -->
<!--                                           </tr> -->
<!--                                         </table></td> -->
<!--                                         <td width="5"></td> -->
<!--                                         <td><input type="image" src="admin/img/bts.search.gif" width="45" height="21"></td> -->
<!--                                       </tr> -->
<!--                                   </table></td> -->
<!--                                 </tr> -->
<!--                                 <tr> -->
<!--                                   <td height="1" bgcolor="cfcfcf"></td> -->
<!--                                 </tr> -->
<!--                             </table></td> -->
<!--                             <td><img src="admin/img/board.search.img02.gif" width="11" height="42"></td> -->
<!--                           </tr> -->
<!--                         </table> -->
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