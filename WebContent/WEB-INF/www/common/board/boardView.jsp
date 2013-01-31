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
var del_ok = function(brc_id){
	var result = confirm("삭제 하시겠습니까?");	
		if(result){
				location.href="${board_name}Delete.do?seq="+${boardDto.seq}+"&brc_id="+brc_id;
		}else{
			return;
		}	
}

var replyDel = function(rp_seq , brc_id){
	var result = confirm("댓글을 삭제하시겠습니까?");	
		if(result){
				location.href="${board_name}ReplyDelete.do?seq="+${boardDto.seq}+"&brc_id="+brc_id+"&rp_seq="+rp_seq;
		}else{
			return;
		}	
}

function reply_insert(){

	var rforms = document.rforms;
		
			if(rforms.content.value == ""){
			alert("내용을 입력하세요");
			rforms.content.focus();
			return false;
			}
		
		rforms.submit();
	}
</script>
                        <td width="1"></td>
                        <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
<!-- {1(상단----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------->                        
                            <tr>
                              <td bgcolor="#272727"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                  <tr>
                                    <td width="99" class="Text_gray_14px"><img src="img/sub03_category${board_chk}.gif" width="99" height="60"></td>
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
                                      <td height="30" align="center" bgcolor="e2e2e2" class="Text_gray2_12px_Bold">${boardDto.title}</td>
                                    </tr>
                                  </table></td>
                                </tr>
<!-- {2 )----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------->                                
<!-- {3(첨부,등록자,등록일,조회----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------->                                
                                <tr>                                                             
                                  <td height="28" align="center" bgcolor="#FFFFFF"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                      <tr>
                                        <td width="20">&nbsp;</td>
                                        <td align="left">첨부파일: <span class="Text_blue_12px_unberline"><a href="download.do?filename=${boardDto.filename}&board_chk=${board_chk}">${boardDto.filename}</a></span></td>
                                        <td width="120">등록자: ${boardDto.brc_name}</td>
                                        <td width="120">IP: ${boardDto.write_ip}</td>
                                        <td width="200">등록일: ${boardDto.write_date}</td>
                                        <td width="120">조회: ${boardDto.readcount}</td>
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
<!-- {댓글 리스트 뿌릴곳)----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------->                                
                             <td align="center" bgcolor="#FFFFFF">                              
                                  <table width="100%" border="0" cellspacing="20" cellpadding="0">
                                  <c:forEach items="${rList}" var="rdto">
                                    <tr>
                                      <td width="130" align="center"><b>${rdto.brc_id}</b></td>                                      
                                      <td width="600" align=left>${rdto.content}</td>
                                      <td  align="center">${rdto.write_date}</td>
                                       <td  align="center">
                                       		<a href="javascript:replyDel('${rdto.seq}','${rdto.brc_id}')">
                                       			<img src="img/btn_del2.gif" width="54" height="25">
                                       		</a>
                                       </td>
                                    </tr>
                                  </c:forEach>
                                  </table></td>                             
<!-- {4 )----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------->                             
                              </table></td>
                            </tr>                            
                            <tr>
                              <td height="10"></td>
                            </tr>
                            <form action="${board_name}ReplyInsert.do" method="post" name="rforms">
                            <input type="hidden" name="seq" value="${boardDto.seq}">
                            <tr>
                              <td align="center"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                  <td align="center" bgcolor="#FFFFFF">
                                  <table width="100%" border="0" cellspacing="5" cellpadding="0">
                                    <tr>
                                      <td width="130" align="center">
                                      <input type="hidden" name="brc_id" value="${sessionId}">
                                      		<b>${sessionId}</b>
                                      </td>                                      
                                      <td align="left">
                                        <textarea rows="3" cols="110" name="content"></textarea>
                                      </td>
                                      <td width="100" align="center"><input type="button" value="댓글입력" onclick="javascript:reply_insert()"></td>
                                      <input type="hidden" name="write_ip" value="${sessionIp}">
                                    </tr>
                                  </table></td>
                                </tr>
                              </table></td>                              
                            </tr>
                            </form>
                            <tr>
<!-- {5(버튼----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------->                               
                              <td height="50"><table width="100%" border="0" cellspacing="0" cellpadding="0">                               
                                <tr>
                                  <td width="300" align="left"><table border="0" cellspacing="4" cellpadding="0">
                                      <tr>
                                        <td><a href="${board_name}List.do"><img src="img/btn_list.gif" width="81" height="25"></a></td>
                                        <td><a href="${board_name}Insert.do"><img src="img/btn_write.gif" width="67" height="25"></a>&nbsp;</td>
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
                                        <td><a href="${board_name}Update.do?seq=${boardDto.seq}&brc_id=${boardDto.brc_id}"><img src="img/btn_edit.gif" width="54" height="25"></a>&nbsp;</td>
                                        <td><a href='javascript:del_ok("${boardDto.brc_id}");'><img src="img/btn_del2.gif" width="54" height="25"></a>&nbsp;</td>
                                      </tr>
                                  </table></td>
                                </tr>
                              </table></td>
<!-- {5 )----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------->                               
                            </tr>
                        </table></td>

<jsp:include page="/inc/bottom.jsp"/>  