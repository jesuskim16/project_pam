<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="/admin/inc/top.jsp"/>
<jsp:include page="/admin/inc/menu_branch.jsp"/>

<script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="js/branch_Modify.js"></script>
<link href="admin/css/branch.css" rel="stylesheet" type="text/css">
<br>
<center>
 <form name="result_forms" method="post" style="margin:0"  ENCTYPE="multipart/form-data">    
<table width="1100" border="0" align="center" cellpadding="0" cellspacing="0">
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
                                   	  <td width="30" align="left" class="s_Text_gray2_12px_Bold"><input type="checkbox" name="all_Check" id="all_Check" onchange="javascript:chkAll()"></td>
                                      <td width="40" align="left" class="s_Text_gray2_12px_Bold">번호</td>
                                      <td width="150" align="left"><span class="s_Text_gray2_12px_Bold">지점명 / 아이디</span></td>
                                      <td width="80" align="center"><span class="s_Text_gray2_12px_Bold">연락처</span></td>
                                      <td width="15" align="center"><span class="s_Text_gray2_12px"></span></td>
                                      <td width="450" align="center"><span class="s_Text_gray2_12px_Bold">주소</span></td>
                                      <td width="50" align="center"><span class="s_Text_gray2_12px_Bold">대표</span></td>
                                      <td width="100" align="center"><span class="s_Text_gray2_12px_Bold">대표 연락처</span></td>
                                      <td width="100" align="center"><span class="s_Text_gray2_12px_Bold">생성일</span></td>
                                    </tr>
                                </table></td>
                                <td width="10"><img src="admin/img/board.bar.right.gif" width="10" height="35"></td>
                              </tr>
                          </table></td>
                        </tr>
                        <tr>
                          <td><table width="100%" border="0" cellspacing="0" cellpadding="0">


                             <c:if test="${empty ABDList}"> 
                              <tr>
                                <td colspan="12" Height="200" align="center" bgColor="#ffffff">등록된 내용이 없습니다.</td>
                              </tr>
							 </c:if> 
                              <c:forEach items="${ABDList}" var="ablist">
                              <tr>
                                <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                    <tr>
                                      <td width="10">&nbsp;</td>
                                      <td height="30"><table width="100%" border="0" cellspacing="0" cellpadding="0">                                      
	                                    <tr>
	                                      <td width="30" align="left" class="s_Text_gray2_12px_Bold"><input type="checkbox" name="seq" id="seq" value="${ablist.seq}"></td> 
										  <td width="40" align="left" class="s_Text_gray2_12px">${ablist.seq}</td>
	                                      <td width="150" align="left" class="s_Text_gray2_12px" onclick="javascript:openContent('${ablist.seq}');" onMouseOver=style.background='#D2E3F8' onMouseOut=style.background='#ffffff' style="cursor:pointer" >${ablist.brc_name} / ${ablist.brc_id}</td>
	                                      <td width="80" align="center" class="s_Text_gray2_12px">${ablist.brc_phone}</td>
	                                      <td width="15" align="center"  class="s_Text_gray2_12px"></td>
	                                      <td width="450" align="left"  class="s_Text_gray2_12px" onclick="javascript:openContent('${ablist.seq}');" onMouseOver=style.background='#D2E3F8' onMouseOut=style.background='#ffffff' style="cursor:pointer" > (${ablist.brc_post})  ${ablist.brc_addr1} ${ablist.brc_addr2}</td>
	                                      <td width="50" align="center"  class="s_Text_gray2_12px"> ${ablist.brc_boss}</td>
	                                      <td width="100" align="center"  class="s_Text_gray2_12px">${ablist.boss_phone}</td>
	                                      <td width="100" align="center"  class="s_Text_gray2_12px">${ablist.write_date}</td>	                                      
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
                          </table></td>
                        </tr>
                        <tr>
                          <td height="30" align="center">
                           ${ABPDto.pHtml} 
                          </td>
                        </tr>
                        <tr>
                        	<td><a href="javascript:br_del();"><img src="admin/img/bts.del.gif" ></a></td>
                        </tr>
                    </table></td>
                  </tr>
<!-- 				  <tr> -->
<!--                     <td align="center"><form name="forms" method="post" action="list.asp" style="margin:0"> -->
<!--                         <input type="hidden" name="table_name" value="sub5_page2_board2"> -->
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
<!--                     </form></td> -->
<!--                   </tr> -->

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
</form>   
</center>

<div class="mw_layer">

	<div class="bg"></div>
	<div id="layer"></div>
</div> 
<jsp:include page="/admin/inc/bottom.jsp"/>