<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<jsp:include page="/admin/inc/top.jsp"/>

<link rel="stylesheet" href="editor/css/editor.css" type="text/css" charset="utf-8"/>
<script src="editor/js/editor_loader.js" type="text/javascript" charset="utf-8"></script>

<jsp:include page="/admin/inc/menu_branch.jsp"/>
<table width="600" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="16" valign="top"><img src="admin/img/sub.body.box.left.gif" width="16" height="170"></td>
          <td valign="top">
          <form name="forms" method="post" action="admNoticeInsertAct.do" style="margin:0"  ENCTYPE="multipart/form-data">
            <table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td height="5" background="admin/img/sub.body.bg01.gif"></td>
              </tr>
              <tr>
                <td height="10" background="admin/img/sub.body.bg02.gif"></td>
              </tr>
              <tr>
                <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                      <tr>
                        <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                          <tr>
                            <td><img src="admin/img/board.write.top.gif" width="626" height="11"></td>
                          </tr>
                          <tr>
                            <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                              <tr>
                                <td width="1" bgcolor="dadada"></td>
                                <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                  <tr>
                                    <td width="5">&nbsp;</td>
                                    <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                      <tr>
                                        <td width="102" valign="top"><table border="0" cellspacing="0" cellpadding="0">
                                          <tr>
                                            <td><img src="admin/img/board.write.intop.gif" width="102" height="8"></td>
                                          </tr>
                                          <tr>
                                            <td bgcolor="#EEEEEE"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                              <tr>
                                                <td width="5"></td>
                                                <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
<!-- 제목 -->
                                                  <tr>
                                                    <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                                      <tr>
                                                        <td height="5"></td>
                                                      </tr>
                                                      <tr>
                                                        <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                                          <tr>
                                                            <td width="13" align="center"><img src="admin/img/icon.dot.blue2.gif" alt="" width="3" height="3"></td>
                                                            <td height="26">제목</td>
                                                          </tr>
                                                        </table></td>
                                                      </tr>
                                                      <tr>
                                                        <td height="5"></td>
                                                      </tr>
                                                    </table></td>                                                  
                                                  </tr>
<!-- /제목 -->
<!-- 라인 -->                                      
                                                  <tr>
                                                    <td height="2" background="admin/img/board.write.inline.gif"></td>
                                                  </tr>
<!-- /라인 -->                                                  
                                                  <tr>
                                                    <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                                      <tr>
                                                        <td height="5"></td>
                                                      </tr>
                                                      <tr>
                                                        <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                                          <tr>
                                                            <td width="13" align="center"><img src="admin/img/icon.dot.blue2.gif" alt="" width="3" height="3"></td>
                                                            <td height="26">첨부파일</td>
                                                          </tr>
                                                        </table></td>
                                                      </tr>
                                                      <tr>
                                                        <td height="5"></td>
                                                      </tr>
                                                    </table></td>
                                                  </tr>                                                
<!--  -->                                                  
                                                </table></td>
                                                <td width="5"></td>
                                              </tr>
                                            </table></td>
                                          </tr>
                                          <tr>
                                            <td><img src="admin/img/board.write.inbottom.gif" width="102" height="8"></td>
                                          </tr>
                                        </table></td>
                                        <td width="5"></td>
                                        <td valign="top"><table width="100%" border="0" cellpadding="0" cellspacing="0">
                                          <tr>
                                            <td height="8"></td>
                                          </tr>
                                          <tr>
                                            <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
<!-- 제목 -->                                  
                                              <tr>
                                                <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                                  <tr>
                                                    <td height="5"></td>
                                                  </tr>
                                                  <tr>
                                                    <td height="26"><table border="0" cellpadding="0" cellspacing="2" bgcolor="cdcdcd">
                                                      <tr>
                                                        <td height="20" valign="bottom" bgcolor="#FFFFFF"><input name="titles" type="text" class="input_bg_white" id="textfield3" size="80"></td>
                                                      </tr>
                                                    </table></td>
                                                  </tr>
                                                  <tr>
                                                    <td height="5"></td>
                                                  </tr>
                                                </table></td>
                                              </tr>
<!-- /제목 -->
<!-- 라인 -->                                                 
                                              <tr>
                                                <td height="2" background="admin/img/board.write.inline.gif"></td>
                                              </tr>
<!-- /라인 -->                                                 
                                              <tr>
                                                <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                                  <tr>
                                                    <td height="5"></td>
                                                  </tr>
                                                  <tr>
                                                    <td height="26"><table border="0" cellspacing="0" cellpadding="0">
                                                      <tr>
                                                        <td><table border="0" cellpadding="0" cellspacing="2" bgcolor="cdcdcd">
                                                          <tr>
                                                            <td height="20" valign="bottom" bgcolor="#FFFFFF"><input name="file1" type="file" class="input_bg_white" id="textfield" size="66"></td>
                                                          </tr>
                                                        </table></td>
                                                        <td width="5"></td>
                                                        <td></td>
                                                      </tr>
                                                    </table></td>
                                                  </tr>
                                                  <tr>
                                                    <td height="5"></td>
                                                  </tr>
                                                </table></td>
                                              </tr>
<!--  -->                                                      
                                            </table></td>
                                          </tr>
                                          <tr>
                                            <td height="8"></td>
                                          </tr>
                                        </table></td>
                                      </tr>
                                    </table></td>
                                    <td width="5">&nbsp;</td>
                                  </tr>
                                </table></td>
                                <td width="1" bgcolor="dadada"></td>
                              </tr>
                            </table></td>
                          </tr>
                          <tr>
                            <td><img src="admin/img/board.write.bottom.gif" width="626" height="11"></td>
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
                                <td><input type="image" src="admin/img/bts.enter.gif" width="69" height="33"></td>
                                <td width="5"></td>
                                <td><img src="admin/img/bts.cancle.gif" width="69" height="33" onClick="history.back();" style="cursor:hand"></td>
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
            </table>
          </form>                              
        </td>
        <td width="16" valign="top"><img src="admin/img/sub.body.box.right.gif" width="16" height="170" onclick="saveContent();"></td>
      </tr>
    </table></td>
  </tr>
</table>
<jsp:include page="/admin/inc/bottom.jsp"/>