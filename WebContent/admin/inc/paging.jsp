<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    String url = request.getParameter("url");
    int startPage = Integer.parseInt(request.getParameter("startPage"));
    int endPage = Integer.parseInt(request.getParameter("endPage"));
    int pg = Integer.parseInt(request.getParameter("pg"));    
    int pageSize = Integer.parseInt(request.getParameter("pageSize"));
    int pageCount = Integer.parseInt(request.getParameter("pageCount"));
    int board_chk = Integer.parseInt(request.getParameter("board_chk"));
    %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!-- 페이징/ -->    
<table border="0" cellspacing="0" cellpadding="0">
  <tr>
    <%if(startPage!=1){ %>
    <td width="18" align="left"><a class="style2" href="#" onclick="loadNextPage('<%=board_chk%>','<%=startPage-10%>')"><img src="admin/img/bts.arrow.left02.gif" width="14" height="13"></a></td>
    <%}else{%>
    <td width="18" align="left"><img src="admin/img/bts.arrow.clear.gif" width="14" height="13"></td>
    <%}%>
    <%if(pg!=1){%>
    <td width="18" align="left"><a class="style2" href="#" onclick="loadNextPage('<%=board_chk%>','<%=pg-1%>')"><img src="admin/img/bts.arrow.left01.gif" width="14" height="13"></a></td>
    <%}else{%>
    <td width="18" align="left"><img src="admin/img/bts.arrow.clear.gif" width="14" height="13"></td>
    <%}%>
    <td width="10">&nbsp;</td>
    <td class="Text_gray2_11px">
    <%for(int p=startPage; p<=endPage;p++){ %>
      <%if(pg==p){%>
      <font color="red"><b><%=p%></b></font>
      <%}else{ %>      
      <a href="#" onclick="loadNextPage('<%=board_chk%>','<%=p%>')"><%=p%></a>
      <%} %>
    <%} %>  
    </td>
    <td width="10">&nbsp;</td>
    <%if(pg<pageCount){%> 
    <td width="18" align="right"><a class="style2" href="#" onclick="loadNextPage('<%=board_chk%>','<%=pg+1%>')"><img src="admin/img/bts.arrow.right01.gif" width="14" height="13"></a></td>
    <%}else{%>
    <td width="18" align="right"><img src="admin/img/bts.arrow.clear.gif" width="14" height="13"></td>
    <%}%>
    <%if((startPage+pageSize)<=pageCount){%>
    <td width="18" align="right"><a class="style2" href="#" onclick="loadNextPage('<%=board_chk%>','<%=endPage+1%>')"><img src="admin/img/bts.arrow.right02.gif" width="14" height="13"></a></td>
    <%}else{%>
    <td width="18" align="right"><img src="admin/img/bts.arrow.clear.gif" width="14" height="13"></td>
    <%}%>
  </tr>
</table>
<!-- /페이징 --> 