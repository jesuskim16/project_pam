<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<table width="600" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="16" valign="top"><img src="admin/img/sub.body.box.left.gif" width="16" height="170"></td>
        <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td height="5" background="admin/img/sub.body.bg01.gif"></td>
              </tr>
              <tr>
                <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                      <tr>
                        <td><img src="admin/img/board.view.box01.gif" width="626" height="10"></td>
                      </tr>
                      <tr>
                        <td align="center"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                          <tr>
                            <td width="1" bgcolor="dadada"></td>
                            <td height="79" background="admin/img/board.view.box03.gif"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                              <tr>
                                <td width="10"></td>
                                <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                  <tr>
                                    <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                      <tr>
                                        <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                          <tr>
                                            <td width="80"><table border="0" cellspacing="0" cellpadding="0">
                                              <tr>
                                                <td width="60" align="right">제목</td>
                                                <td width="20" align="center"><img src="admin/img/icon.arrow02.gif" alt="" width="7" height="7"></td>
                                              </tr>
                                            </table></td>
                                            <td>${abdDto.title}</td>
                                          </tr>
                                        </table></td>
                                      </tr>
                                      <tr>
                                        <td height="5"></td>
                                      </tr>
                                    </table></td>
                                  </tr>
                                  <tr>
                                    <td height="1" background="admin/img/line.point.gif"></td>
                                  </tr>
                                  <tr>
                                    <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                      <tr>
                                        <td height="5"></td>
                                      </tr>
                                      <tr>
                                        <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                          <tr>
                                            <td width="80"><table border="0" cellspacing="0" cellpadding="0">
                                              <tr>
                                                <td width="60" align="right">작성자</td>
                                                <td width="20" align="center"><img src="admin/img/icon.arrow02.gif" alt="" width="7" height="7"></td>
                                              </tr>
                                            </table></td>
                                            <td>${abdDto.brc_id}</td>
                                            <td width="80"><table border="0" cellspacing="0" cellpadding="0">
                                              <tr>
                                                <td width="60" align="right">작성IP</td>
                                                <td width="20" align="center"><img src="admin/img/icon.arrow02.gif" alt="" width="7" height="7"></td>
                                              </tr>
                                            </table></td>
                                            <td width="100">${abdDto.write_ip}</td>
                                            <td width="80"><table border="0" cellspacing="0" cellpadding="0">
                                              <tr>
                                                <td width="60" align="right">조회수</td>
                                                <td width="20" align="center"><img src="admin/img/icon.arrow02.gif" alt="" width="7" height="7"></td>
                                              </tr>
                                            </table></td>
                                            <td width="60">${abdDto.readcount}</td>
                                          </tr>
                                        </table></td>
                                      </tr>
                                      <tr>
                                        <td height="5"></td>
                                      </tr>
                                    </table></td>
                                  </tr>
                                  <tr>
                                    <td height="1" background="admin/img/line.point.gif"></td>
                                  </tr>
                                  <tr>
                                    <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                      <tr>
                                        <td height="5"></td>
                                      </tr>
                                      <tr>
                                        <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                           <tr>
                                             <td width="80"><table border="0" cellspacing="0" cellpadding="0">
                                               <tr>
	                                             <td width="60" align="right">첨부파일</td>
	                                             <td width="20" align="center"><img src="admin/img/icon.arrow02.gif" alt="" width="7" height="7"></td>
	                                           </tr>
	                                         </table></td>
	                                         <td class="Text_blue_12px_unberline"><a href="" target="">${abdDto.filename}</a></td>
	                                         <td></td>
	                                         <td width="80"><table border="0" cellspacing="0" cellpadding="0">
                                               <tr>
                                                 <td width="60" align="right">등록일</td>
                                                 <td width="20" align="center"><img src="admin/img/icon.arrow02.gif" alt="" width="7" height="7"></td>
                                               </tr>
                                             </table></td>
                                             <td width="160">${abdDto.write_date}</td>
	                                       </tr>
	                                    </table></td>
	                                  </tr>
                                    </table></td>
                                  </tr>
                                </table></td>
                                <td width="10"></td>
                              </tr>
                            </table></td>
                            <td width="1" bgcolor="dadada"></td>
                          </tr>
                        </table></td>
                      </tr>
                      <tr>
                        <td align="center"><img src="admin/img/board.view.box02.gif" alt="" width="626" height="20"></td>
                      </tr>
                    </table></td>
                  </tr>
                  <tr>
                    <td><table width="100%" height="300" border="0" cellspacing="10" cellpadding="0">
                      <tr>                  
                        <td valign="top">
                        <div style="overflow-y:scroll; height:280px; padding:4px">
                        ${abdDto.content}
                        </div> 
                        </td>
                      </tr>
                    </table></td>
                  </tr>
                  <tr>
                    <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                      <tr>
                        <td height="10"></td>
                      </tr>
                      <tr>
                        <td align="right"><table border="0" cellspacing="0" cellpadding="0">
                          <tr>
<!--                             <td><a href=""><img src="admin/img/bts.reple.gif" width="69" height="33"></a>&nbsp;</td> -->
                            <td><a href="admNoticeUpdate.do?seq=${abdDto.seq}&board_chk=${abdDto.board_chk}"><img src="admin/img/bts.edit.gif" width="69" height="33"></a>&nbsp;</td>
                            <td><a href="admNoticeDel.do?seq=${abdDto.seq}&board_chk=${abdDto.board_chk}"><img src="admin/img/bts.del.gif" width="69" height="33"></a>&nbsp;</td>
<!--                             <td><a href="admNoticeList.do"><img src="admin/img/bts.list.gif" width="69" height="33"></a></td> -->
                          </tr>
                        </table></td>
                      </tr>
                    </table></td>
                  </tr>
                  <tr>
                    <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                      <tr>
                        <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                          <tr>
                            <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                              <tr>
                                <td width="74" align="center"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                  <tr>
                                    <td width="25" align="center"><img src="admin/img/icon.up.gif" alt="" width="15" height="9"></td>
                                    <td class="Text_gray2_12px_Bold">다음글</td>
                                  </tr>
                                </table></td>
                                <td><a href="">이전글입니다.</a></td>
                              </tr>
                            </table></td>
                          </tr>
                          <tr>
                            <td height="5"></td>
                          </tr>
                        </table></td>
                      </tr>
                      <tr>
                        <td height="1" bgcolor="e2e2e2"></td>
                      </tr>
                      <tr>
                        <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
	                      <tr>
	                        <td height="5"></td>
	                      </tr>
	                      <tr>
	                        <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
	                          <tr>
	                            <td width="74" align="center"><table width="100%" border="0" cellspacing="0" cellpadding="0">
	                              <tr>
	                                <td width="25" align="center"><img src="admin/img/icon.down.gif" alt="" width="15" height="9"></td>
	                                <td class="Text_gray2_12px_Bold">이전글</td>
	                              </tr>
	                            </table></td>
	                            <td><a href="">다음글입니다.</a></td>
	                          </tr>
	                        </table></td>
	                      </tr>
	                    </table></td>
	                  </tr>
	                </table></td>
	              </tr>
	            </table></td>
	          </tr>
	          <tr>
	            <td>&nbsp;</td>
	          </tr>
	        </table></td>
          </tr>
          <tr>
            <td>&nbsp;</td>
          </tr>
        </table></td>
        <td width="16" valign="top"><img src="admin/img/sub.body.box.right.gif" width="16" height="170"></td>
      </tr>
    </table></td>
  </tr>
</table>