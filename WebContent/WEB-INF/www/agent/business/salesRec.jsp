<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="/inc/top1.jsp"/>    
<jsp:include page="/inc/menu1.jsp"/>    

                <td width="1"></td>
                <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td bgcolor="#272727"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                      <tr>
                        <td width="97" class="Text_gray_14px"><img src="img/sub01_category1.gif" width="97" height="60"></td>
                        <td align="right">&nbsp;</td>
                      </tr>
                    </table></td>
                  </tr>
                  <tr>
                    <td height="1" bgcolor="#000000"></td>
                  </tr>
                  <tr>
                    <td><table width="100%" border="0" cellpadding="0" cellspacing="1" bgcolor="cccccc">
                      <tr>
                        <td align="center" bgcolor="#FFFFFF"><table width="100%" border="0" cellspacing="0" cellpadding="0">
<!----- --------------------------------------------------------------------------------------------------------------------------------------------------->
                          <form method="post" name="result_form" action="count.do" style="margin:0">
                          <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                            <tr bgcolor="cccccc">
                              <td height="10" colspan="2"></td>
                            </tr>
                            <tr bgcolor="cccccc">
                              <td width="50"></td>
                              <td height="25"><table border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                  <td class="pr10"><a href="#"><img src="img/btn_01.gif" width="40" height="21"></a></td>
                                  <td class="pr10"><a href="#"><img src="img/btn_02.gif" width="40" height="21"></a></td>
                                  <td class="pr10"><a href="#"><img src="img/btn_03.gif" width="40" height="21"></a></td>
                                  <td class="pr10"><a href="#"><img src="img/btn_04.gif" width="40" height="21"></a></td>
                                  <td class="pr10"><a href="#"><img src="img/btn_05.gif" width="40" height="21"></a></td>
                                  <td class="pr10"><a href="#"><img src="img/btn_06.gif" width="40" height="21"></a></td>
                                  <td class="pr10"><a href="#"><img src="img/btn_07.gif" width="40" height="21"></a></td>
                                  <td><a href="#"><img src="img/btn_08.gif" width="40" height="21"></a></td>
                                </tr>
                              </table></td>
                            </tr>
                            <tr bgcolor="cccccc">
                              <td width="50"></td>
                              <td height="40" class="line_bg_bottom1"><table width="500" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                  <td style="padding-left:5;"><input type="text" name="s_sdate" size="10"  value="2012-12-01" readonly class="result_form"></td>                                          
                                  <td class="pr10"><img src="img/btn_calendar.gif" width="24" height="24" style="cursor:hand"></td>
                                  <td class="pr10">~</td>
                                  <td><input type="text" name="s_edate" size="10"  value="2012-12-31" readonly class="result_form"></td>                                           
                                  <td class="pr10"><img src="img/btn_calendar.gif" width="24" height="24" align="absmiddle" style="cursor:hand"></td>                                          
                                  <td><input type="image" src="img/btn_ok.gif"  width="40" height="21"></td>
                                </tr>
                              </table></td>
                            </tr>
                            <tr bgcolor="cccccc">
                              <td height="10" colspan="2"></td>
                            </tr>
                            <tr bgcolor="#272727">
                              <td height="1" colspan="2"></td>
                            </tr>                            
                          </table></td>                                                   
                          </form> 
<!----- --------------------------------------------------------------------------------------------------------------------------------------------------->
                          <tr>
                            <td><table width="100%" border="0" cellspacing="10" cellpadding="0">
                              <tr>
                                <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                             
                                  <tr>
                                    <td><table width="100%" border="0" cellpadding="0" cellspacing="5">
                                      <tr>                                      
                                        <td colspan="3"><table width="100%" border="0" cellpadding="0" cellspacing="1" bgcolor="eaeaea">
                                            <tr>
                                              <td bgcolor="#FFFFFF"><table width="100%" border="0" cellspacing="2" cellpadding="0">
                                                  <tr>
						                            <td><table width="100%" border="0" cellpadding="0" cellspacing="1" bgcolor="cccccc">
<!-- {2(집계)----------------------------------------------------------------------------------------------------------------------------------->                            
						                                  <tr>
						                                    <th width="40"height="30" align="center" bgcolor="aaaaaa" ></th>
						                                    <th width="100" height="30" align="center" bgcolor="aaaaaa">지점명</th>						                                    
						                                    <th width="80" height="30" align="center" bgcolor="aaaaaa">기간</th>
						                                    <th width="80" height="30" align="center" bgcolor="aaaaaa">판매대수</th>
						                                    <th width="140" height="30" align="center" bgcolor="aaaaaa">수익</th>						                                    
						                                  </tr>
<!-- {2 )------------------------------------------------------------------------------------------------------------------------------------------>                                  
<!-- {3(집계내용)------------------------------------------------------------------------------------------------------------------------------------>                             
						                               
						                                  <tr>
						                                    <th width="40"  height="50" align="center" bgcolor="aaaaaa">총계</th>
						                                    <td height="28" align="center" bgcolor="#FFFFFF"> 
						                                      <select>
						                                        <option>구로점</option>
						                                        <option>평택점</option>
						                                      </select></td>						                                    
						                                    <td height="28" align="center" bgcolor="#FFFFFF">2012.12.01<br>&nbsp;~2012.12.31</td>
						                                    <td height="28" align="center" bgcolor="#FFFFFF">44 대</td>
						                                    <td height="28" align="center" bgcolor="#FFFFFF">825,000 원</td>						                                    
						                                  </tr>    
						                            </table></td>
						                          </tr>		
						                          <tr>
						                            <td height="10"></td>
						                          </tr>				                                                                     
						                          <tr>
						                            <td><table width="100%" border="0" cellpadding="0" cellspacing="1" bgcolor="cccccc">
<!-- {4(목록)----------------------------------------------------------------------------------------------------------------------------------->                            
						                                  <tr>
						                                    <th width="40" width="40" height="30" align="center" bgcolor="e2e2e2" >번호</th>
						                                    <th width="40" height="30" align="center" bgcolor="e2e2e2">고객명</th>
						                                    <th width="40" height="30" align="center" bgcolor="e2e2e2">모델명</th>
						                                    <th width="40" height="30" align="center" bgcolor="e2e2e2">요금제</th>
						                                    <th width="40" height="30" align="center" bgcolor="e2e2e2">약정기간</th>
						                                    <th width="40" height="30" align="center" bgcolor="e2e2e2">수익</th>
						                                    <th width="40" height="30" align="center" bgcolor="e2e2e2">작성일</th>						                                    
						                                  </tr>
<!-- {4 )------------------------------------------------------------------------------------------------------------------------------------------>                                  
<!-- {5(내용)------------------------------------------------------------------------------------------------------------------------------------>                             
						                               
						                                  <tr>
						                                    <td height="28" align="center" bgcolor="#FFFFFF" >1</td>
						                                    <td height="28" align="center" bgcolor="#FFFFFF" >홍길동</td>
						                                    <td height="28" align="center" bgcolor="#FFFFFF" >iphone5</td>
						                                    <td height="28" align="center" bgcolor="#FFFFFF" >LTE 62요금제</td>
						                                    <td height="28" align="center" bgcolor="#FFFFFF" >2년</td>
						                                    <td height="28" align="center" bgcolor="#FFFFFF" >30,000원</td>
						                                    <td height="28" align="center" bgcolor="#FFFFFF" >2012.12.21</td>						                                    
						                                  </tr> 
<!-- {5 )------------------------------------------------------------------------------------------------------------------------------------------> 
						                                  <tr>
						                                    <td height="28" align="center" bgcolor="#FFFFFF" >2</td>
						                                    <td height="28" align="center" bgcolor="#FFFFFF" >홍길동</td>
						                                    <td height="28" align="center" bgcolor="#FFFFFF" >iphone5</td>
						                                    <td height="28" align="center" bgcolor="#FFFFFF" >LTE 62요금제</td>
						                                    <td height="28" align="center" bgcolor="#FFFFFF" >2년</td>
						                                    <td height="28" align="center" bgcolor="#FFFFFF" >30,000원</td>
						                                    <td height="28" align="center" bgcolor="#FFFFFF" >2012.12.21</td>						                                    
						                                  </tr> 
<!-- {5 )------------------------------------------------------------------------------------------------------------------------------------------>
						                                  <tr>
						                                    <td height="28" align="center" bgcolor="#FFFFFF" >3</td>
						                                    <td height="28" align="center" bgcolor="#FFFFFF" >홍길동</td>
						                                    <td height="28" align="center" bgcolor="#FFFFFF" >iphone5</td>
						                                    <td height="28" align="center" bgcolor="#FFFFFF" >LTE 62요금제</td>
						                                    <td height="28" align="center" bgcolor="#FFFFFF" >2년</td>
						                                    <td height="28" align="center" bgcolor="#FFFFFF" >30,000원</td>
						                                    <td height="28" align="center" bgcolor="#FFFFFF" >2012.12.21</td>						                                    
						                                  </tr> 
<!-- {5 )------------------------------------------------------------------------------------------------------------------------------------------>
						                                  <tr>
						                                    <td height="28" align="center" bgcolor="#FFFFFF" >4</td>
						                                    <td height="28" align="center" bgcolor="#FFFFFF" >홍길동</td>
						                                    <td height="28" align="center" bgcolor="#FFFFFF" >iphone5</td>
						                                    <td height="28" align="center" bgcolor="#FFFFFF" >LTE 62요금제</td>
						                                    <td height="28" align="center" bgcolor="#FFFFFF" >2년</td>
						                                    <td height="28" align="center" bgcolor="#FFFFFF" >30,000원</td>
						                                    <td height="28" align="center" bgcolor="#FFFFFF" >2012.12.21</td>						                                    
						                                  </tr> 
<!-- {5 )------------------------------------------------------------------------------------------------------------------------------------------>
						                                  <tr>
						                                    <td height="28" align="center" bgcolor="#FFFFFF" >5</td>
						                                    <td height="28" align="center" bgcolor="#FFFFFF" >홍길동</td>
						                                    <td height="28" align="center" bgcolor="#FFFFFF" >iphone5</td>
						                                    <td height="28" align="center" bgcolor="#FFFFFF" >LTE 62요금제</td>
						                                    <td height="28" align="center" bgcolor="#FFFFFF" >2년</td>
						                                    <td height="28" align="center" bgcolor="#FFFFFF" >30,000원</td>
						                                    <td height="28" align="center" bgcolor="#FFFFFF" >2012.12.21</td>						                                    
						                                  </tr> 
<!-- {5 )------------------------------------------------------------------------------------------------------------------------------------------>
						                                  <tr>
						                                    <td height="28" align="center" bgcolor="#FFFFFF" >6</td>
						                                    <td height="28" align="center" bgcolor="#FFFFFF" >홍길동</td>
						                                    <td height="28" align="center" bgcolor="#FFFFFF" >iphone5</td>
						                                    <td height="28" align="center" bgcolor="#FFFFFF" >LTE 62요금제</td>
						                                    <td height="28" align="center" bgcolor="#FFFFFF" >2년</td>
						                                    <td height="28" align="center" bgcolor="#FFFFFF" >30,000원</td>
						                                    <td height="28" align="center" bgcolor="#FFFFFF" >2012.12.21</td>						                                    
						                                  </tr> 
<!-- {5 )------------------------------------------------------------------------------------------------------------------------------------------>
						                                  <tr>
						                                    <td height="28" align="center" bgcolor="#FFFFFF" >7</td>
						                                    <td height="28" align="center" bgcolor="#FFFFFF" >홍길동</td>
						                                    <td height="28" align="center" bgcolor="#FFFFFF" >iphone5</td>
						                                    <td height="28" align="center" bgcolor="#FFFFFF" >LTE 62요금제</td>
						                                    <td height="28" align="center" bgcolor="#FFFFFF" >2년</td>
						                                    <td height="28" align="center" bgcolor="#FFFFFF" >30,000원</td>
						                                    <td height="28" align="center" bgcolor="#FFFFFF" >2012.12.21</td>						                                    
						                                  </tr> 
<!-- {5 )------------------------------------------------------------------------------------------------------------------------------------------>
						                                  <tr>
						                                    <td height="28" align="center" bgcolor="#FFFFFF" >8</td>
						                                    <td height="28" align="center" bgcolor="#FFFFFF" >홍길동</td>
						                                    <td height="28" align="center" bgcolor="#FFFFFF" >iphone5</td>
						                                    <td height="28" align="center" bgcolor="#FFFFFF" >LTE 62요금제</td>
						                                    <td height="28" align="center" bgcolor="#FFFFFF" >2년</td>
						                                    <td height="28" align="center" bgcolor="#FFFFFF" >30,000원</td>
						                                    <td height="28" align="center" bgcolor="#FFFFFF" >2012.12.21</td>						                                    
						                                  </tr> 
<!-- {5 )------------------------------------------------------------------------------------------------------------------------------------------>
						                                  <tr>
						                                    <td height="28" align="center" bgcolor="#FFFFFF" >9</td>
						                                    <td height="28" align="center" bgcolor="#FFFFFF" >홍길동</td>
						                                    <td height="28" align="center" bgcolor="#FFFFFF" >iphone5</td>
						                                    <td height="28" align="center" bgcolor="#FFFFFF" >LTE 62요금제</td>
						                                    <td height="28" align="center" bgcolor="#FFFFFF" >2년</td>
						                                    <td height="28" align="center" bgcolor="#FFFFFF" >30,000원</td>
						                                    <td height="28" align="center" bgcolor="#FFFFFF" >2012.12.21</td>						                                    
						                                  </tr> 
<!-- {5 )------------------------------------------------------------------------------------------------------------------------------------------>
						                                  <tr>
						                                    <td height="28" align="center" bgcolor="#FFFFFF" >10</td>
						                                    <td height="28" align="center" bgcolor="#FFFFFF" >홍길동</td>
						                                    <td height="28" align="center" bgcolor="#FFFFFF" >iphone5</td>
						                                    <td height="28" align="center" bgcolor="#FFFFFF" >LTE 62요금제</td>
						                                    <td height="28" align="center" bgcolor="#FFFFFF" >2년</td>
						                                    <td height="28" align="center" bgcolor="#FFFFFF" >30,000원</td>
						                                    <td height="28" align="center" bgcolor="#FFFFFF" >2012.12.21</td>						                                    
						                                  </tr> 
<!-- {5 )------------------------------------------------------------------------------------------------------------------------------------------>
							                                    
						                            </table></td>
						                          </tr>
                                              </table></td>
                                            </tr>                                            
                                        </table></td>
                                      </tr>
                                    </table></td>
                                  </tr>
                                </table></td>
                              </tr>                              
                            </table></td>
                          </tr>                         
  <!----- --------------------------------------------------------------------------------------------------------------------------------------------------->
                        </table></td>
                    </table></td>    
                  </tr>
												  <tr>
						                            <td height="50"><table width="100%" border="0" cellpadding="0" cellspacing="0">
						<!-- {6(PAGING)------------------------------------------------------------------------------------------------------------------------------------>                              
						                              <tr>                                       
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
						<!-- {6 )-------------------------------------------------------------------------------------------------------------------------------------------->                               
						                            </table></td>
						                          </tr>                  
                </table></td>  

<jsp:include page="/inc/bottom.jsp"/>  
