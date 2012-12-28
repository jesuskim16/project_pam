<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:choose>
<c:when test="${brc_lev==1}">
<jsp:include page="/inc/top1.jsp"/>    
<jsp:include page="/inc/menu3.jsp"/>
</c:when>
<c:when test="${brc_lev==2}">
<jsp:include page="/inc/top2.jsp"/>    
<jsp:include page="/inc/menu6.jsp"/>
</c:when>
</c:choose>

<script>
function del_ok(seq){
	var result = confirm("삭제를 하시면 복구가 힘듭니다. 삭제 하시겠습니까?");
	if(result){
			location.href = "${board_name}Delete.do?seq="+seq;
	}else{
		return;
	}	
}
</script>
                        <td width="1"></td>
                        <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
<!-- {1(상단----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------->                        
                            <tr>
                              <td bgcolor="#272727"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                  <tr>
                                    <td width="99" class="Text_gray_14px"><img src="img/sub01_category1.gif" width="99" height="60"></td>
                                  </tr>
                              </table></td>
                            </tr>
<!-- {1 )----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------->                            
                            <tr>
                              <td height="1"></td>
                            </tr>
                            <tr>
                              <td><table width="100%" border="0" cellpadding="0" cellspacing="1" bgcolor="cccccc">
                              
<!-- {2(제목----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------->                                
                                <tr>
                                  <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                    <tr>
                                      <td height="30" align="center" bgcolor="e2e2e2" class="Text_gray2_12px_Bold">제목입니다.</td>
                                    </tr>
                                  </table></td>
                                </tr>
<!-- {2 )----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------->                                
<!-- {3(첨부,등록자,등록일,조회----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------->                                
                                <tr>                                                               
                                  <td height="28" align="center" bgcolor="#FFFFFF"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                      <tr>
                                        <td width="20">&nbsp;</td>
                                        <td align="left">첨부파일: <span class="Text_blue_12px_unberline"><a href="" target="test.txt">${boardDto.filename }</a></span></td>
                                        <td width="120">등록자: ${boardDto.brc_name }</td>
                                        <td width="200">등록일: ${boardDto.write_date }</td>
                                        <td width="120">조회: ${boardDto.readcount }</td>
                                      </tr>
                                  </table></td>            
                                </tr>
<!-- {3 )----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------->                                 
<!-- {4(본문----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------->                               
                                <tr>                                
                                  <td align="center" bgcolor="#FFFFFF"><table width="100%" border="0" cellspacing="20" cellpadding="0">
                                      <tr >
                                        <td height="300" align="left" valign="top">${boardDto.content }</td>
                                      </tr>
                                  </table></td>
                                </tr>
<!-- {4 )----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------->                                
                              </table></td>
                            </tr>
                            
                            <tr>
                              <td height="30"></td>
                            </tr>
                            <tr>
                              <td align="center"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                  <td height="1"></td>
                                </tr>
                                <tr>
                                  <td height="28" align="center" bgcolor="#FFFFFF"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                    <tr>
                                      <td width="20">&nbsp;</td>
                                      <td align="left">등록자: 홍길동</td>
                                      <td align="right">등록일: 2012.12.21</td>
                                    </tr>
                                  </table></td> 
                                <tr>
                                  <td height="1"></td>
                                </tr>
                                <tr>
                                  <td align="center" bgcolor="#FFFFFF"><table width="100%" border="0" cellspacing="20" cellpadding="0">
                                    <tr>
                                      <td height="60" align="left">댓글입니다</td>
                                    </tr>
                                  </table></td>
                                </tr>
                              </table></td>                              
                            </tr>
                            
                            <tr>
<!-- {5(버튼----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------->                               
                              <td height="50"><table width="100%" border="0" cellspacing="0" cellpadding="0">                               
                                <tr>
                                  <td width="300" align="left"><table border="0" cellspacing="4" cellpadding="0">
                                      <tr>
                                        <td><a href="${board_name}List.do"><img src="img/btn_list.gif" width="81" height="25"></a></td>
                                        <td><a href=""><img src="img/btn_write.gif" width="67" height="25"></a>&nbsp;</td>
                                      </tr>
                                  </table></td>
                                  <td align="center"><table border="0" cellspacing="4" cellpadding="0">
                                      <tr>
                                      <c:if test="${boardDto.seq != boardDto.prev_seq}">
                                        <td><a href="${board_name}View.do?seq=${boardDto.prev_seq }"><img src="img/btn_prev.gif" width="67" height="25"></a></td>
                                      </c:if>
                                      <c:if test="${boardDto.seq != boardDto.next_seq}">
                                        <td><a href="${board_name}View.do?seq=${boardDto.next_seq }"><img src="img/btn_next.gif" width="67" height="25"></a></td>
                                      </c:if>
                                      </tr>
                                  </table></td>
                                  <td width="300" align="right"><table border="0" cellspacing="4" cellpadding="0">
                                      <tr>
                                        <td><a href="${board_name}Update.do?seq=${boardDto.seq}"><img src="img/btn_edit.gif" width="54" height="25"></a>&nbsp;</td>
                                        <td><a href="javascript:del_ok('${boardDto.seq }');"><img src="img/btn_del2.gif" width="54" height="25"></a>&nbsp;</td>
                                      </tr>
                                  </table></td>
                                </tr>
                              </table></td>
<!-- {5 )----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------->                               
                            </tr>
                        </table></td>

<jsp:include page="/inc/bottom.jsp"/>  