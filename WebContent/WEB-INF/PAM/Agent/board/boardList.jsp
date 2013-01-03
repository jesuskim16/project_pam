<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<jsp:include page="/inc/top1.jsp"/>    
<jsp:include page="/inc/menu3.jsp"/>      


                        <td width="1"></td>
                        <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                          <tr>
<!-- {1(상단----------------------------------------------------------------------------------------------------------------------------------------->                            
<form name="forms" method="post" action="list.asp" style="margin:0">                            
                            <td bgcolor="#272727"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                              <tr>
                                <td width="99" class="Text_gray_14px"><img src="img/sub03_category1.gif" width="99" height="60"></td>
                                <td align="right"><table border="0" cellspacing="0" cellpadding="0">
                                    <tr>
                                        <td><select name="search" id="select">
                                           <option value="TITLES">제목</option>
                                           <option value="USERNAME">글쓴이</option>                                          
                                        </select></td>
                                      <td>&nbsp;</td>
                                      <td><input name="se_string" type="text" id="textfield3" size="23" value="<% %>"></td>
                                      <td width="5"></td>
                                      <td><input type="image" src="img/btn_search.gif" width="71" height="25"></td>
                                      <td width="10">&nbsp;</td>
                                    </tr>
                                </table></td>
                              </tr>
                            </table></td>
</form>                            
<!-- {1 )------------------------------------------------------------------------------------------------------------------------------------------>                            
                            </tr>
                          <tr>
                            <td height="1"></td>
                          </tr>                          
                          <tr>
                            <td><table width="100%" border="0" cellpadding="0" cellspacing="1" bgcolor="cccccc">
<!-- {2(게시판 상단)----------------------------------------------------------------------------------------------------------------------------------->                            
                                  <tr>
                                    <td width="40" width="40" height="30" align="center" bgcolor="e2e2e2" >번호</td>
                                    <td height="30" align="center" bgcolor="e2e2e2">제목</td>
                                    <td width="40" height="30" align="center" bgcolor="e2e2e2">첨부</td>
                                    <td width="140" height="30" align="center" bgcolor="e2e2e2">등록자</td>
                                    <td width="140" height="30" align="center" bgcolor="e2e2e2">등록일</td>
                                  </tr>
<!-- {2 )------------------------------------------------------------------------------------------------------------------------------------------>                                  
<!-- {3(게시판본문)------------------------------------------------------------------------------------------------------------------------------------>                             
                               
                                  <tr>
                                    <td height="28" align="center" bgcolor="#FFFFFF" >1</td>
                                    <td height="28" bgcolor="#FFFFFF"><a href="view.do">제목입니다.</a></td>
                                    <td height="28" align="center" bgcolor="#FFFFFF"></td>
                                    <td height="28" align="center" bgcolor="#FFFFFF">홍길동</td>
                                    <td height="28" align="center" bgcolor="#FFFFFF">2012.12.21</td>
                                  </tr> 
<!-- {3 )------------------------------------------------------------------------------------------------------------------------------------------> 
                                  <tr>
                                    <td height="28" align="center" bgcolor="#FFFFFF" >2</td>
                                    <td height="28" bgcolor="#FFFFFF">
                                      <img src="img/icon.reple.gif" align="absmiddle"><a href="view.do">댓글입니다.</a></td>
                                    <td height="28" align="center" bgcolor="#FFFFFF"></td>
                                    <td height="28" align="center" bgcolor="#FFFFFF">홍길동</td>
                                    <td height="28" align="center" bgcolor="#FFFFFF">2012.12.21</td>
                                  </tr> 
<!-- {3 )------------------------------------------------------------------------------------------------------------------------------------------>     
                                  <tr>
                                    <td height="28" align="center" bgcolor="#FFFFFF" >3</td>
                                    <td height="28" bgcolor="#FFFFFF">  <a href="view.do">제목입니다.</a></td>
                                    <td height="28" align="center" bgcolor="#FFFFFF"><img src="img/icon.file.gif" width="15" height="15"></td>
                                    <td height="28" align="center" bgcolor="#FFFFFF">홍길동</td>
                                    <td height="28" align="center" bgcolor="#FFFFFF">2012.12.21</td>
                                  </tr> 
<!-- {3 )------------------------------------------------------------------------------------------------------------------------------------------>
                                  <tr>
                                    <td height="28" align="center" bgcolor="#FFFFFF" >4</td>
                                    <td height="28" bgcolor="#FFFFFF"><a href="view.do">제목입니다.</a></td>
                                    <td height="28" align="center" bgcolor="#FFFFFF"></td>
                                    <td height="28" align="center" bgcolor="#FFFFFF">홍길동</td>
                                    <td height="28" align="center" bgcolor="#FFFFFF">2012.12.21</td>
                                  </tr> 
<!-- {3 )------------------------------------------------------------------------------------------------------------------------------------------>
                                  <tr>
                                    <td height="28" align="center" bgcolor="#FFFFFF" >5</td>
                                    <td height="28" bgcolor="#FFFFFF"><a href="view.do">제목입니다.</a></td>
                                    <td height="28" align="center" bgcolor="#FFFFFF"></td>
                                    <td height="28" align="center" bgcolor="#FFFFFF">홍길동</td>
                                    <td height="28" align="center" bgcolor="#FFFFFF">2012.12.21</td>
                                  </tr> 
<!-- {3 )------------------------------------------------------------------------------------------------------------------------------------------> 
                                  <tr>
                                    <td height="28" align="center" bgcolor="#FFFFFF" >6</td>
                                    <td height="28" bgcolor="#FFFFFF"><a href="view.do">제목입니다.</a></td>
                                    <td height="28" align="center" bgcolor="#FFFFFF"></td>
                                    <td height="28" align="center" bgcolor="#FFFFFF">홍길동</td>
                                    <td height="28" align="center" bgcolor="#FFFFFF">2012.12.21</td>
                                  </tr> 
<!-- {3 )------------------------------------------------------------------------------------------------------------------------------------------> 
                                  <tr>
                                    <td height="28" align="center" bgcolor="#FFFFFF" >7</td>
                                    <td height="28" bgcolor="#FFFFFF"><a href="view.do">제목입니다.</a></td>
                                    <td height="28" align="center" bgcolor="#FFFFFF"></td>
                                    <td height="28" align="center" bgcolor="#FFFFFF">홍길동</td>
                                    <td height="28" align="center" bgcolor="#FFFFFF">2012.12.21</td>
                                  </tr> 
<!-- {3 )------------------------------------------------------------------------------------------------------------------------------------------> 
                                  <tr>
                                    <td height="28" align="center" bgcolor="#FFFFFF" >8</td>
                                    <td height="28" bgcolor="#FFFFFF"><a href="view.do">제목입니다.</a></td>
                                    <td height="28" align="center" bgcolor="#FFFFFF"></td>
                                    <td height="28" align="center" bgcolor="#FFFFFF">홍길동</td>
                                    <td height="28" align="center" bgcolor="#FFFFFF">2012.12.21</td>
                                  </tr> 
<!-- {3 )------------------------------------------------------------------------------------------------------------------------------------------> 
                                  <tr>
                                    <td height="28" align="center" bgcolor="#FFFFFF" >9</td>
                                    <td height="28" bgcolor="#FFFFFF"><a href="view.do">제목입니다.</a></td>
                                    <td height="28" align="center" bgcolor="#FFFFFF"></td>
                                    <td height="28" align="center" bgcolor="#FFFFFF">홍길동</td>
                                    <td height="28" align="center" bgcolor="#FFFFFF">2012.12.21</td>
                                  </tr> 
<!-- {3 )------------------------------------------------------------------------------------------------------------------------------------------> 
                                  <tr>
                                    <td height="28" align="center" bgcolor="#FFFFFF" >10</td>
                                    <td height="28" bgcolor="#FFFFFF"><a href="view.do">제목입니다.</a></td>
                                    <td height="28" align="center" bgcolor="#FFFFFF"></td>
                                    <td height="28" align="center" bgcolor="#FFFFFF">홍길동</td>
                                    <td height="28" align="center" bgcolor="#FFFFFF">2012.12.21</td>
                                  </tr> 
<!-- {3 )------------------------------------------------------------------------------------------------------------------------------------------>                                       
                            </table></td>
                          </tr>
                          <tr>
                            <td height="50"><table width="100%" border="0" cellpadding="0" cellspacing="0">
<!-- {4(PAGING)------------------------------------------------------------------------------------------------------------------------------------>                              
                              <tr>                            
		                        <a href="insert.do"><img src="img/btn_write.gif"></a>		                                       
                                <td width="200">&nbsp;</td>
                                <td align="center"><table border="0" cellspacing="0" cellpadding="0">
                                    <tr>
                                      <td>
		                                  <jsp:include page="/inc/paging.jsp"/>    
									  </td>
                                    </tr>
                                </table></td>
                                <td width="200">&nbsp;</td>
                              </tr>
<!-- {4 )-------------------------------------------------------------------------------------------------------------------------------------------->                               
                            </table></td>
                          </tr>
                        </table></td>
                        

                        
<jsp:include page="/inc/bottom.jsp"/>                            