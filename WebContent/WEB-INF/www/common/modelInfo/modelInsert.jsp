<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:include page="/inc/top1.jsp" />
<jsp:include page="/inc/menu4.jsp" />

<td width="1"></td>
<td valign="top"><table width="100%" border="0" cellspacing="0"
		cellpadding="0">
		<tr>
			<td bgcolor="#272727">
			<table width="100%" border="0" cellspacing="0" cellpadding="0">
					<tr>
						<td width="97" class="Text_gray_14px">
						<img src="img/sub02_category1.gif" width="100" height="60"></td>
						<td align="right">&nbsp;</td>
					</tr>
			</table>
			</td>				
		</tr>
		<tr>
			<td width="100" height="100" bgcolor="FFFFFFF">
				<table width="100%" border="1" cellspacing="0" cellpadding="0">
					<tr>
						<td width="100" height="100">썸네일</td>
						<td>
							<table>
							<tr>
								<th>모델명</th>
								<td><input type="text"></td>
							</tr>
							<tr>
								<th>제품명</th>
								<td><input type="text"></td>
							</tr>
							
							<tr>
								<th>출시일</th>
								<td><input type="date"></td>
							</tr>
							<tr>
								<th>제조사</th>
								<td><input type="text"></td>
							</tr>
							<tr>
								<th>사진 업로드</th>
								<td colspan="2"><input type="file"><input type="submit" value="업로드"></td>
							</tr>
							</table>
							
						</td>
					</tr>
				</table>
			
			
			
		</tr>
		<tr>
		<td align="center"><img src="img/btn_enter.gif" type="button" width="54" height="25" onclick="history.back();"></td>
		</tr>
	</table></td>

<jsp:include page="/inc/bottom.jsp" />
