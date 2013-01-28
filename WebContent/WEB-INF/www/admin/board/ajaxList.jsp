<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   

                    <table width="100%" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                          <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                              <tr>
                                <td width="10"><img src="admin/img/board.bar.left.gif" width="10" height="35"></td>
                                <td background="admin/img/board.bar.bg.gif"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                    <tr>
                                      <td width="30" align="center" class="s_Text_gray2_12px_Bold">��ȣ</td>
                                      <td align="center"><span class="s_Text_gray2_12px_Bold">����</span></td>           
                                      <td width="50" align="center"><span class="s_Text_gray2_12px_Bold">÷��</span></td>
                                      <td width="80" align="center"><span class="s_Text_gray2_12px_Bold">�۾���</span></td>
                                      <td width="90" align="center"><span class="s_Text_gray2_12px_Bold">�����</span></td>
                                      <td width="50" align="center"><span class="s_Text_gray2_12px_Bold">���</span></td>
                                      <td width="50" align="center"><span class="s_Text_gray2_12px_Bold">��ȸ��</span></td>
                                    </tr>
                                </table></td>
                                <td width="10"><img src="admin/img/board.bar.right.gif" width="10" height="35"></td>
                              </tr>
                          </table></td>
                        </tr>
                        <tr>
                          <td height="350" valign="top">

                          <table width="100%" border="0" cellspacing="0" cellpadding="0">
                              <!-- �Խù������� -->
                              <c:if test="${empty list}">
                              <tr>
                                <td colspan="12" height="300" align="center" valign="center" bgColor="#ffffff"><h1>��ϵ� ������ �����ϴ�.</h1></td>
                              </tr>
                              </c:if>
                             <c:forEach items="${list}" var="abdDto">
                              <!-- �ݺ���  -->
                              <tr>
                                <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                    <tr>
                                      <td width="10">&nbsp;</td>
                                      <td height="30"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                          <tr>
                                            <td width="30" align="center" class="s_Text_gray2_12px">${abdDto.rown}</td>
                                            <td align="left" class="s_Text_gray2_12px">
                                              <a href="#layer" onclick="openContent('${abdDto.seq}')" >&nbsp;&nbsp;${abdDto.title}</a>
                                            </td>
                                            <td width="50" align="center">
                                             <c:if test="${!empty abdDto.filename}">
                                              <img src="admin/img/icon.file.gif" width="15" height="15">
                                             </c:if>
                                            </td>
                                            <td width="80" align="left" class="s_Text_gray2_12px">&nbsp;&nbsp;&nbsp;${abdDto.brc_id}</td>
                                            <td width="90" align="center" class="s_Text_gray2_12px">${abdDto.write_date}</td>
                                            <td width="50" align="center">${abdDto.rp_cnt}</td>
                                            <td width="50" align="center">${abdDto.readcount}</td>
                                          </tr>
                                      </table></td>
                                      <td width="10">&nbsp;</td>
                                    </tr>
                                </table></td>
                              </tr>
                              <tr>
                                <td height="1" bgcolor="e5e5e5"></td>
                              </tr>
                             </c:forEach>
                          </table>
                          
                          </td>
                        </tr>
                        <tr>
                          <td height="30" align="center">
                            <!-- ����¡ -->                               
                            <jsp:include page="/admin/inc/paging.jsp">
                              <jsp:param value="admNoticeList.do" name="url"/>
                              <jsp:param value="${p.startPage}" name="startPage"/>
                              <jsp:param value="${p.endPage}" name="endPage"/>
                              <jsp:param value="${p.pg}" name="pg"/>
                              <jsp:param value="${p.pageSize}" name="pageSize"/>
                              <jsp:param value="${p.totalCount}" name="totalCount"/>
                              <jsp:param value="${p.pageCount}" name="pageCount"/>
                              <jsp:param value="${p.board_chk}" name="board_chk"/>
                            </jsp:include>
                          </td>
                        </tr>
                        <tr>
                          <td height="30" align="right"><a href="#layer" onclick="insertContent('${p.board_chk}')"><img src="admin/img/bts.write.gif"></a> </td>
                        </tr>
                    </table>                          
