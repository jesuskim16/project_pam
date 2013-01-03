<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<script type="text/javascript">
	var setZipcode = function (zipcode1 , zipcode2, addr1) {
		opener.document.reg.brc_post1.value = zipcode1;
		opener.document.reg.brc_post2.value = zipcode2;
		opener.document.reg.brc_post.value = zipcode1+"-"+zipcode2;
		opener.document.reg.brc_addr1.value = addr1;
		self.close();		
	}
</script>


<form action="ZipcodeAction.do" method="post" name="zip">
<table border="1" cellpadding="5" cellspacing="0">
	<tr	align="center">
		<td colspan="2">
		지역명 :
		<input type="text" name="dong" value="${dong }"/>
		<input type="submit" value="검색"/> <br/>
		등을 입력하세요. (예:구로, 공덕과 같이 2글자 입력)
		</td>
	</tr>
	<c:if test="${!empty list}">
	<tr>
		<td>우편번호</td>
		<td>주소</td>
	</tr>	
		<c:forEach items="${list }" var="zdto">
		<tr>
			<td width="70" >			
				<a href="javascript:." onclick="javascript:setZipcode(${zdto.zipcode1} , '${zdto.zipcode2}', '${zdto.addr1}');">
				${zdto.zipcode1} - ${zdto.zipcode2}
			</td>
			<td>			
				${zdto.addr1} </a>
			</td>
		</tr>
		</c:forEach>
		</c:if>
			<c:if test="${empty list && !empty dong}">
		<tr>
			<td colspan="2">검색한 주소가 존재하지 않습니다.</td>
		</tr>
	</c:if>
			
</table>
</form>
</body>
</html>