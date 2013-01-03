<!-- --------------------------------------------------------고객 리스트----------------------------------------------------------------------> 
<!-- --------------------------------------------------------고객 리스트----------------------------------------------------------------------> 
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<jsp:include page="/inc/top1.jsp"/>    
<jsp:include page="/inc/menu2.jsp"/>    


                        <td width="1"></td>
                        <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                          <tr>
<!-- {1(상단----------------------------------------------------------------------------------------------------------------------------------------->                            
<form name="forms" method="post" action="list.asp" style="margin:0">                            
                            <td bgcolor="#272727"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                              <tr>
                                <td width="99" class="Text_gray_14px"><img src="img/sub02_category2.gif" width="99" height="60"></td>                               
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
                                 <th height="40" width="30" bgcolor="e2e2e2"></th>
                                 <th width="40" align="center" bgcolor="e2e2e2" >번호</th>
                                 <th align="center" bgcolor="e2e2e2">고객이름</th>
                                 <th align="center" bgcolor="e2e2e2">생년월일</th>
                                 <th align="center" bgcolor="e2e2e2">모델명</th>
                                 <th align="center" bgcolor="e2e2e2">제품명</th>
                                 <th align="center" bgcolor="e2e2e2">연락처</th>						                                    
                                 <th align="center" bgcolor="e2e2e2">요금제</th>	
                                 <th align="center" bgcolor="e2e2e2">상품가입일</th>                                 					                                    
                               </tr>
<!-- {4 )------------------------------------------------------------------------------------------------------------------------------------------>                                  
<!-- {5(내용)------------------------------------------------------------------------------------------------------------------------------------>                             
                            
                               <tr>
                                 <td align="center" bgcolor="#FFFFFF" ><input type="checkbox"/></td>
                                 <td height="28" align="center" bgcolor="#FFFFFF" >1</td>
                                 <td align="center" bgcolor="#FFFFFF" >박근혜</td>
                                 <td align="center" bgcolor="#FFFFFF" >1985.04.19</td>
                                 <td align="center" bgcolor="#FFFFFF" >Iphone5-ios</td>
                                 <td align="center" bgcolor="#FFFFFF" >바쁜벌꿀5LTE</td>
                                 <td align="center" bgcolor="#FFFFFF" >010-5432-2345</td>
                                 <td align="center" bgcolor="#FFFFFF" >LTE 62</td>						                                    
                                 <td align="center" bgcolor="#FFFFFF" >2012.12.21</td>						                                    
                               </tr> 
<!-- {5 )------------------------------------------------------------------------------------------------------------------------------------------> 
                               <tr>
                                 <td align="center" bgcolor="#FFFFFF" ><input type="checkbox"/></td>
                                 <td height="28" align="center" bgcolor="#FFFFFF" >1</td>
                                 <td align="center" bgcolor="#FFFFFF" >노태우</td>
                                 <td align="center" bgcolor="#FFFFFF" >1985.04.19</td>
                                 <td align="center" bgcolor="#FFFFFF" >Iphone5-ios</td>
                                 <td align="center" bgcolor="#FFFFFF" >친구야5LTE</td>
                                 <td align="center" bgcolor="#FFFFFF" >010-5432-2345</td>
                                 <td align="center" bgcolor="#FFFFFF" >LTE 62</td>						                                    
                                 <td align="center" bgcolor="#FFFFFF" >2012.12.21</td>						                                    
                               </tr> 
<!-- {5 )------------------------------------------------------------------------------------------------------------------------------------------>
                               <tr>
                                 <td align="center" bgcolor="#FFFFFF" ><input type="checkbox"/></td>
                                 <td height="28" align="center" bgcolor="#FFFFFF" >1</td>
                                 <td align="center" bgcolor="#FFFFFF" >전두안</td>
                                 <td align="center" bgcolor="#FFFFFF" >1985.05.18</td>
                                 <td align="center" bgcolor="#FFFFFF" >Iphone5-ios</td>
                                 <td align="center" bgcolor="#FFFFFF" >본인은LTE</td>
                                 <td align="center" bgcolor="#FFFFFF" >010-5432-2345</td>
                                 <td align="center" bgcolor="#FFFFFF" >LTE 62</td>						                                    
                                 <td align="center" bgcolor="#FFFFFF" >2012.12.21</td>							                                    
                               </tr> 
<!-- {5 )------------------------------------------------------------------------------------------------------------------------------------------>
                               <tr>
                                 <td align="center" bgcolor="#FFFFFF" ><input type="checkbox"/></td>
                                 <td height="28" align="center" bgcolor="#FFFFFF" >1</td>
                                 <td align="center" bgcolor="#FFFFFF" >이멍박</td>
                                 <td align="center" bgcolor="#FFFFFF" >1985.04.19</td>
                                 <td align="center" bgcolor="#FFFFFF" >Iphone5-ios</td>
                                 <td align="center" bgcolor="#FFFFFF" >BBK5LTE</td>
                                 <td align="center" bgcolor="#FFFFFF" >010-5432-2345</td>
                                 <td align="center" bgcolor="#FFFFFF" >LTE 62</td>						                                    
                                 <td align="center" bgcolor="#FFFFFF" >2012.12.21</td>							                                    
                               </tr> 
<!-- {5 )------------------------------------------------------------------------------------------------------------------------------------------>
                               <tr>
                                 <td align="center" bgcolor="#FFFFFF" ><input type="checkbox"/></td>
                                 <td height="28" align="center" bgcolor="#FFFFFF" >1</td>
                                 <td align="center" bgcolor="#FFFFFF" >홍길동</td>
                                 <td align="center" bgcolor="#FFFFFF" >1985.04.19</td>
                                 <td align="center" bgcolor="#FFFFFF" >Iphone5-ios</td>
                                 <td align="center" bgcolor="#FFFFFF" >아이폰5LTE</td>
                                 <td align="center" bgcolor="#FFFFFF" >010-5432-2345</td>
                                 <td align="center" bgcolor="#FFFFFF" >LTE 62</td>						                                    
                                 <td align="center" bgcolor="#FFFFFF" >2012.12.21</td>							                                    
                               </tr> 
<!-- {5 )------------------------------------------------------------------------------------------------------------------------------------------>
                               <tr>
                                 <td align="center" bgcolor="#FFFFFF" ><input type="checkbox"/></td>
                                 <td height="28" align="center" bgcolor="#FFFFFF" >1</td>
                                 <td align="center" bgcolor="#FFFFFF" >홍길동</td>
                                 <td align="center" bgcolor="#FFFFFF" >1985.04.19</td>
                                 <td align="center" bgcolor="#FFFFFF" >Iphone5-ios</td>
                                 <td align="center" bgcolor="#FFFFFF" >아이폰5LTE</td>
                                 <td align="center" bgcolor="#FFFFFF" >010-5432-2345</td>
                                 <td align="center" bgcolor="#FFFFFF" >LTE 62</td>						                                    
                                 <td align="center" bgcolor="#FFFFFF" >2012.12.21</td>							                                    
                               </tr> 
<!-- {5 )------------------------------------------------------------------------------------------------------------------------------------------>
                               <tr>
                                 <td align="center" bgcolor="#FFFFFF" ><input type="checkbox"/></td>
                                 <td height="28" align="center" bgcolor="#FFFFFF" >1</td>
                                 <td align="center" bgcolor="#FFFFFF" >홍길동</td>
                                 <td align="center" bgcolor="#FFFFFF" >1985.04.19</td>
                                 <td align="center" bgcolor="#FFFFFF" >Iphone5-ios</td>
                                 <td align="center" bgcolor="#FFFFFF" >아이폰5LTE</td>
                                 <td align="center" bgcolor="#FFFFFF" >010-5432-2345</td>
                                 <td align="center" bgcolor="#FFFFFF" >LTE 62</td>						                                    
                                 <td align="center" bgcolor="#FFFFFF" >2012.12.21</td>						                                    
                               </tr> 
<!-- {5 )------------------------------------------------------------------------------------------------------------------------------------------>
                               <tr>
                                 <td align="center" bgcolor="#FFFFFF" ><input type="checkbox"/></td>
                                 <td height="28" align="center" bgcolor="#FFFFFF" >1</td>
                                 <td align="center" bgcolor="#FFFFFF" >홍길동</td>
                                 <td align="center" bgcolor="#FFFFFF" >1985.04.19</td>
                                 <td align="center" bgcolor="#FFFFFF" >Iphone5-ios</td>
                                 <td align="center" bgcolor="#FFFFFF" >아이폰5LTE</td>
                                 <td align="center" bgcolor="#FFFFFF" >010-5432-2345</td>
                                 <td align="center" bgcolor="#FFFFFF" >LTE 62</td>						                                    
                                 <td align="center" bgcolor="#FFFFFF" >2012.12.21</td>							                                    
                               </tr> 
<!-- {5 )------------------------------------------------------------------------------------------------------------------------------------------>
                               <tr> 
                                 <td align="center" bgcolor="#FFFFFF" ><input type="checkbox"/></td>
                                 <td height="28" align="center" bgcolor="#FFFFFF" >1</td>
                                 <td align="center" bgcolor="#FFFFFF" >홍길동</td>
                                 <td align="center" bgcolor="#FFFFFF" >1985.04.19</td>
                                 <td align="center" bgcolor="#FFFFFF" >Iphone5-ios</td>
                                 <td align="center" bgcolor="#FFFFFF" >아이폰5LTE</td>
                                 <td align="center" bgcolor="#FFFFFF" >010-5432-2345</td>
                                 <td align="center" bgcolor="#FFFFFF" >LTE 62</td>						                                    
                                 <td align="center" bgcolor="#FFFFFF" >2012.12.21</td>							                                    
                               </tr> 
<!-- {5 )------------------------------------------------------------------------------------------------------------------------------------------>
                               <tr>
                                 <td align="center" bgcolor="#FFFFFF" ><input type="checkbox"/></td>
                                 <td height="28" align="center" bgcolor="#FFFFFF" >1</td>
                                 <td align="center" bgcolor="#FFFFFF" >홍길동</td>
                                 <td align="center" bgcolor="#FFFFFF" >1985.04.19</td>
                                 <td align="center" bgcolor="#FFFFFF" >Iphone5-ios</td>
                                 <td align="center" bgcolor="#FFFFFF" >아이폰5LTE</td>
                                 <td align="center" bgcolor="#FFFFFF" >010-5432-2345</td>
                                 <td align="center" bgcolor="#FFFFFF" >LTE 62</td>						                                    
                                 <td align="center" bgcolor="#FFFFFF" >2012.12.21</td>							                                    
                               </tr> 
<!-- {5 )------------------------------------------------------------------------------------------------------------------------------------------>                  
                            </table></td>
                          </tr>
                          <tr>
                            <td height="50"><table width="100%" border="0" cellpadding="0" cellspacing="0">
<!-- {4(PAGING)------------------------------------------------------------------------------------------------------------------------------------>                              
                              <tr>                            
		                        <a href="#"><img src="img/btn_edit.gif"></a>&nbsp;		                        
		                        <a href="#"><img src="img/btn_del2.gif"></a>		                        		                                       
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