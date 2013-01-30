<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:include page="/admin/inc/top.jsp"/>
<br>
<center>
  <table border="0" width="100%" cellpadding="10" cellspacing="0">
    <tr>
      <td><table width="100%" border="0" cellspacing="1" cellpadding="0" bgcolor="dddddd">
		<tr>
		  <td bgcolor="fafafa"><table width="100%" border="0" cellpadding="0" cellspacing="5">
		    <tr>
			  <td><table width="100%" border="0" cellpadding="0" cellspacing="1" bgcolor="eeeeee">
			    <tr>
				  <td align="center" height="400">
					<span class="Text_gray3_14px">
					관리자모드입니다. 아무런동작이없으면 자동 로그아웃처리되오니 이점 유의해주시기 바랍니다.
					<br/>
					<br/>
					현재 접속하신 아이피는 : <%=request.getRemoteAddr()%> 입니다. &nbsp;<a href="logout.do">[로그아웃]</a> 
				
					</span>									
				  </td>
				</tr>
			  </table></td>
			</tr>
		  </table></td>
		</tr>
	  </table></td>
    </tr>
  </table>		
<center>
<jsp:include page="/admin/inc/bottom.jsp"/>