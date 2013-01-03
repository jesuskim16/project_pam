<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<jsp:include page="/inc/top1.jsp"/>    
<jsp:include page="/inc/menu4.jsp"/>   


                        <td width="1"></td>
                        <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                          <tr>
<!-- {1(상단----------------------------------------------------------------------------------------------------------------------------------------->                            
<form name="forms" method="post" action="list.asp" style="margin:0">                            
                            <td bgcolor="#272727"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                              <tr>
                                <td width="99" class="Text_gray_14px"><img src="img/sub04_category2.gif" width="99" height="60"></td>                               
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
<!-- {4(목록)----------------------------------------------------------------------------------------------------------------------------------->                            
                               <tr>
                                 <th height="40" width="30" bgcolor="e2e2e2">순위</th>
                                 <th align="center" bgcolor="e2e2e2">판매대수</th>
                                 <th width="100" align="center" bgcolor="e2e2e2">이미지</th>
                                 <th align="center" bgcolor="e2e2e2">모델명</th>
                                 <th align="center" bgcolor="e2e2e2">제조사</th>              
                                 <th align="center" bgcolor="e2e2e2">출시일</th>        
                               </tr>
<!-- {4 )------------------------------------------------------------------------------------------------------------------------------------------>                                  
<!-- {5(내용)------------------------------------------------------------------------------------------------------------------------------------>                             
                            
                               <tr>
                                 <td align="center" bgcolor="#FFFFFF" >1</td>
                                 <td align="center" bgcolor="#FFFFFF" >50대</td>  
                                 <td height="100" align="center" bgcolor="#FFFFFF" ><img src="upload/iphon.jpg" alt="" height="90"/></td>
                                 <td align="center" bgcolor="#FFFFFF" >iPhone5 16G<br/>[아이폰5]</td>
                                 <td align="center" bgcolor="#FFFFFF" >애플</td>         
                                 <td align="center" bgcolor="#FFFFFF" >2012.12.07</td>                                					                                    
                               </tr> 
<!-- {5 )------------------------------------------------------------------------------------------------------------------------------------------> 
                               <tr>
                                 <td align="center" bgcolor="#FFFFFF" >2</td>
                                 <td align="center" bgcolor="#FFFFFF" >50대</td>  
                                 <td height="100" align="center" bgcolor="#FFFFFF" ><img src="upload/iphon.jpg" alt="" height="90"/></td>
                                 <td align="center" bgcolor="#FFFFFF" >iPhone5 16G<br/>[아이폰5]</td>
                                 <td align="center" bgcolor="#FFFFFF" >애플</td>         
                                 <td align="center" bgcolor="#FFFFFF" >2012.12.07</td>                                					                                    
                               </tr> 
<!-- {5 )------------------------------------------------------------------------------------------------------------------------------------------>
                               <tr>
                                 <td align="center" bgcolor="#FFFFFF" >3</td>
                                 <td align="center" bgcolor="#FFFFFF" >50대</td>  
                                 <td height="100" align="center" bgcolor="#FFFFFF" ><img src="upload/iphon.jpg" alt="" height="90"/></td>
                                 <td align="center" bgcolor="#FFFFFF" >iPhone5 16G<br/>[아이폰5]</td>
                                 <td align="center" bgcolor="#FFFFFF" >애플</td>         
                                 <td align="center" bgcolor="#FFFFFF" >2012.12.07</td>                                					                                    
                               </tr> 
<!-- {5 )------------------------------------------------------------------------------------------------------------------------------------------>
                               <tr>
                                 <td align="center" bgcolor="#FFFFFF" >4</td>
                                 <td align="center" bgcolor="#FFFFFF" >50대</td>  
                                 <td height="100" align="center" bgcolor="#FFFFFF" ><img src="upload/iphon.jpg" alt="" height="90"/></td>
                                 <td align="center" bgcolor="#FFFFFF" >iPhone5 16G<br/>[아이폰5]</td>
                                 <td align="center" bgcolor="#FFFFFF" >애플</td>         
                                 <td align="center" bgcolor="#FFFFFF" >2012.12.07</td>                                					                                    
                               </tr> 
<!-- {5 )------------------------------------------------------------------------------------------------------------------------------------------>
                               <tr>
                                 <td align="center" bgcolor="#FFFFFF" >5</td>
                                 <td align="center" bgcolor="#FFFFFF" >50대</td>  
                                 <td height="100" align="center" bgcolor="#FFFFFF" ><img src="upload/iphon.jpg" alt="" height="90"/></td>
                                 <td align="center" bgcolor="#FFFFFF" >iPhone5 16G<br/>[아이폰5]</td>
                                 <td align="center" bgcolor="#FFFFFF" >애플</td>         
                                 <td align="center" bgcolor="#FFFFFF" >2012.12.07</td>                                					                                    
                               </tr> 
<!-- {5 )------------------------------------------------------------------------------------------------------------------------------------------>                  
                            </table></td>
                            <td width="300">&nbsp;</td>
                          </tr>
                          <tr>
                            <td height="50"><table width="100%" border="0" cellpadding="0" cellspacing="0">
<!-- {4(PAGING)------------------------------------------------------------------------------------------------------------------------------------>                              
                              <tr>                          		                                       
                                <td width="200">&nbsp;</td>
                                <td align="center"><table border="0" cellspacing="0" cellpadding="0">
                                    <tr>
                                      <td>
		                                  <jsp:include page="/inc/paging.jsp"/>    
									  </td>
                                    </tr>
                                </table></td>                                
                              </tr>
<!-- {4 )-------------------------------------------------------------------------------------------------------------------------------------------->                               
                            </table></td>
                          </tr>
                        </table></td>
                        

                        
<jsp:include page="/inc/bottom.jsp"/>                            