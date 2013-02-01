<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="/admin/inc/top.jsp"/>
<script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="js/model_Insert.js"></script>
<link href="admin/css/model.css" rel="stylesheet" type="text/css">
<br>
<center>
<form name="result_forms" method="post" style="margin:0"  ENCTYPE="multipart/form-data">  
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
                                      <th width="15" align="center" class="s_Text_gray2_12px"><input type="checkbox" name="all_Check" id="all_Check" onchange="javascript:chkAll()"></th>
                                      <th width="48" align="center"><span class="s_Text_gray2_12px_Bold">번호</span></th>
                                      <th width="122" align="center"><span class="s_Text_gray2_12px_Bold">사진</span></th>
                                      <th width="164" align="center"><span class="s_Text_gray2_12px_Bold">모델 코드</span></th>
                                      <th width="165" align="center"><span class="s_Text_gray2_12px_Bold">모델 이름</span></th>                                      
                                      <th width="90" align="center"><span class="s_Text_gray2_12px_Bold">제조사</span></th>
                                      <th width="85" align="center"><span class="s_Text_gray2_12px_Bold">상태</span></th>
                                      <th width="110" align="center"><span class="s_Text_gray2_12px_Bold">작성일</span></th>
                                    </tr>
                                </table></td>
                                <td width="10"><img src="admin/img/board.bar.right.gif" width="10" height="35"></td>
                              </tr>
                          </table></td>
                        </tr>
                        
                        <tr height="300" valign="top">
                          <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                              <!-- 게시물없을때 -->
                              <c:if test="${empty AMList}">
                              <tr>
                                <td colspan="12" Height="200" align="center" bgColor="#ffffff">등록된 내용이 없습니다.</td>
                              </tr>
                              </c:if>
                              <!-- 반복문  -->
                            <c:forEach items="${AMList}" var="dto">
                              <tr>
                                <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                  <tr>                                      
                                    <td height="30"><table width="100%" border="0" cellspacing="0" cellpadding="0">        
                                      <tr>
                                        <td width="10" align="center" class="s_Text_gray2_12px"></td>
         	                            <td width="17" align="center" class="s_Text_gray2_12px"><input type="checkbox" name="seq" id="seq" value="${dto.seq}"></td>
                                      	<td width="52" align="center" class="s_Text_gray2_12px">${dto.rown}</td>
                                      	<td width="130" align="center" class="s_Text_gray2_12px"><img alt="" src="upload/model/thumb${dto.filename}"></td>
                                        <td width="180" align="center" class="s_Text_gray2_12px">${dto.model_code}</td>
                                        <td width="180" align="center" class="s_Text_gray2_12px" onclick="javascript:openContent('${dto.seq}');" onMouseOver=style.background='#D2E3F8' onMouseOut=style.background='#ffffff'>${dto.model_name}</td>                                        
                                        <td width="100" align="center" class="s_Text_gray2_12px">${dto.make_comp}</td>
                                        <td width="100" align="center" class="s_Text_gray2_12px">
                                        	<c:choose>
                                        		<c:when test="${dto.state_chk==0}">판매예정</c:when>
                                        		<c:when test="${dto.state_chk==1}">판매중</c:when>
                                        		<c:when test="${dto.state_chk==2}">판매종료</c:when>
                                        		<c:when test="${dto.state_chk==3}">미정</c:when>
                                        	</c:choose>                                        
                                        </td>
                                        <td width="110" align="center" class="s_Text_gray2_12px">${dto.write_date}</td>
                                        <td width="10" align="center" class="s_Text_gray2_12px"></td>
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
                          <td height="10" align="center"><table>
                            <tr>
                              <td>${AMPDto.pHtml}</td>
                            </tr> 
                          </table></td>
                        </tr>
                        
                        <tr>
                          <td height="30" align="right">
                          <a href="admModelInsert.do" ><img src="admin/img/bts.enter.gif">&nbsp;</a>
                          <a href="javascript:model_del();" ><img src="admin/img/bts.del.gif"></a>
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

<!-- div view ---------------------------------------------------------------------------------------------------------------------->
</table>
</form>
</center> 
<div class="mw_layer">

	<div class="bg"></div>
	<div id="layer"></div>
</div> 
<jsp:include page="/admin/inc/bottom.jsp"/>