<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%-- <jsp:include page="/admin/inc/top.jsp"/> --%>
<%-- <jsp:include page="/admin/inc/menu_branch.jsp"/> --%>
<link rel="stylesheet" href="test/jqx.ui-lightness.css" type="text/css" />
<script type="text/javascript" src="test/gettheme.js"></script>
<script type="text/javascript" src="test/jquery-1.8.2.min.js"></script>
<script type="text/javascript" src="test/jqxcore.js"></script>
<script type="text/javascript" src="test/jqxbuttons.js"></script>
<script type="text/javascript" src="test/jqxwindow.js"></script>
<script type="text/javascript" src="test/jqxscrollbar.js"></script>
<script type="text/javascript" src="test/jqxpanel.js"></script>
<script type="text/javascript" src="test/test.js"></script>
<br>
<center>
<script type="text/javascript">
        function capitaliseFirstLetter(string) {
            return string.charAt(0).toUpperCase() + string.slice(1);
        }
        function displayEvent(event) {
            var eventData = 'Event: ' + capitaliseFirstLetter(event.type);
            if (event.type === 'moved') {
                eventData += ', X: ' + event.args.x + ', Y: ' + event.args.y;
            }
            if (event.type === 'hide') {
                eventData += ', Dialog result: ';
                if (event.args.dialogResult.OK) {
                    eventData += 'OK';
                } else if (event.args.dialogResult.Cancel) {
                    eventData += 'Cancel';
                } else {
                    eventData += 'None';
                }
            }
            $('#events').jqxPanel('prepend', '<div style="margin-top: 5px;">' + eventData + '</div>');
            $('#events').jqxPanel('value', 1000);
        }
        function addEventListeners() {
            //Closed event
            $('#eventWindow').bind('close', function (event) {
                displayEvent(event);
            });
            //Dragstarted event
            $('#eventWindow').bind('moved', function (event) {
                displayEvent(event);
            });
            //Open event
            $('#eventWindow').bind('open', function (event) {
                displayEvent(event);
            });
            $('#showWindowButton').mousedown(function () {
                $('#eventWindow').jqxWindow('show');
            });
        }
        function createElements(theme) {
            $('#eventWindow').jqxWindow({ maxHeight: 150, maxWidth: 280, minHeight: 30, minWidth: 250, height: 145, width: 270,
                theme: theme, resizable: false, isModal: true, modalOpacity: 0.3,
                okButton: $('#ok'), cancelButton: $('#cancel'),
                initContent: function () {
                    $('#ok').jqxButton({ theme: theme, width: '65px' });
                    $('#cancel').jqxButton({ theme: theme, width: '65px' });
                }
            });
            $('#events').jqxPanel({ theme: theme, height: '250px', width: '450px' });
            $('#showWindowButton').jqxButton({ theme: theme, width: '100px'});
        }
        $(document).ready(function () {
            var theme = $.data(document.body, 'theme', theme);
            if (theme == undefined) theme = '';
            addEventListeners();
            createElements(theme);
            $("#jqxWidget").css('visibility', 'visible');
        });
    </script>
</head>
<body class='default'>
    <div style="visibility: hidden;" id="jqxWidget">
        <input type="button" value="Show" id="showWindowButton" />
        <div style="width: 100%; height: 650px; border: 0px solid #ccc; margin-top: 10px;"
            id="mainDemoContainer">
            <div>Events Log:</div>
            <div id="events" style="width: 300px; height: 200px; border-width: 0px;">
            </div>
            <div id="eventWindow">
                <div>
                    <img width="14" height="14" src="../../images/help.png" alt="" />
                    Modal Window</div>
                <div>
                    <div>
                        Please click "OK", "Cancel" or the close button to close the modal window. The dialog
                        result will be displayed in the events log.
                    </div>
                    <div>
                    <div style="float: right; margin-top: 15px;">
                        <input type="button" id="ok" value="OK" style="margin-right: 10px" />
                        <input type="button" id="cancel" value="Cancel" />
                    </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    
<!-- <table width="1000" border="0" align="center" cellpadding="0" cellspacing="0"> -->
<!--   <tr> -->
<!--   <td><table width="100%" border="0" cellspacing="0" cellpadding="0"> -->
<!--       <tr> -->
<!--         <td width="16" valign="top"><img src="admin/img/sub.body.box.left.gif" width="16" height="170"></td> -->
<!--         <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0"> -->
<!--             <tr> -->
<!--               <td height="5" background="admin/img/sub.body.bg01.gif"></td> -->
<!--             </tr> -->
<!--             <tr> -->
<!--               <td><table width="100%" border="0" cellspacing="0" cellpadding="0"> -->
<!--                   <tr> -->
<!--                     <td><table width="100%" border="0" cellspacing="0" cellpadding="0"> -->
<!--                         <tr> -->
<!--                           <td><table width="100%" border="0" cellspacing="0" cellpadding="0"> -->
<!--                               <tr> -->
<!--                                 <td width="10"><img src="admin/img/board.bar.left.gif" width="10" height="35"></td> -->
<!--                                 <td background="admin/img/board.bar.bg.gif"><table width="100%" border="0" cellspacing="0" cellpadding="0"> -->
<!--                                     <tr> -->
<!--                                       <td width="30" align="center" class="s_Text_gray2_12px_Bold">번호</td> -->
<!--                                       <td width="150" align="center"><span class="s_Text_gray2_12px_Bold">지점명 / 아이디</span></td> -->
<!--                                       <td width="80" align="center"><span class="s_Text_gray2_12px_Bold">연락처</span></td> -->
<!--                                       <td width="15" align="center"><span class="s_Text_gray2_12px"></span></td> -->
<!--                                       <td width="450" align="center"><span class="s_Text_gray2_12px_Bold">주소</span></td> -->
<!--                                       <td width="50" align="center"><span class="s_Text_gray2_12px_Bold">대표</span></td> -->
<!--                                       <td width="100" align="center"><span class="s_Text_gray2_12px_Bold">대표 연락처</span></td> -->
<!--                                       <td width="100" align="center"><span class="s_Text_gray2_12px_Bold">생성일</span></td> -->
<!--                                     </tr> -->
<!--                                 </table></td> -->
<!--                                 <td width="10"><img src="admin/img/board.bar.right.gif" width="10" height="35"></td> -->
<!--                               </tr> -->
<!--                           </table></td> -->
<!--                         </tr> -->
<!--                         <tr> -->
<!--                           <td><table width="100%" border="0" cellspacing="0" cellpadding="0"> -->


<%--                              <c:if test="${empty ABDList}">  --%>
<!--                               <tr> -->
<!--                                 <td colspan="12" Height="200" align="center" bgColor="#ffffff">등록된 내용이 없습니다.</td> -->
<!--                               </tr> -->
<%-- 							 </c:if> --%>
<!--                               반복문  -->
<%--                               <c:forEach items="${ABDList}" var="ablist"> --%>
<!--                               <tr> -->
<!--                                 <td><table width="100%" border="0" cellspacing="0" cellpadding="0"> -->
<!--                                     <tr> -->
<!--                                       <td width="10">&nbsp;</td> -->
<!--                                       <td height="30"><table width="100%" border="0" cellspacing="0" cellpadding="0"> -->
<!-- 	                                    <tr> -->
<%-- 	                                      <td width="30" align="center" class="s_Text_gray2_12px">${ablist.seq}</td> --%>
<%-- 	                                      <td width="150" align="center"><span class="s_Text_gray2_12px">${ablist.brc_name} / ${ablist.attach_id}</span></td> --%>
<%-- 	                                      <td width="80" align="center"><span class="s_Text_gray2_12px">${ablist.brc_phone}</span></td> --%>
<!-- 	                                      <td width="15" align="center"><span class="s_Text_gray2_12px"></span></td> -->
<%-- 	                                      <td width="450" align="left"><span class="s_Text_gray2_12px"> (${ablist.brc_post})  ${ablist.brc_addr1} ${ablist.brc_addr2}</span></td> --%>
<%-- 	                                      <td width="50" align="center"><span class="s_Text_gray2_12px">${ablist.brc_boss}</span></td> --%>
<%-- 	                                      <td width="100" align="center"><span class="s_Text_gray2_12px">${ablist.boss_phone}</span></td> --%>
<!-- 	                                      <td width="100" align="center"><span class="s_Text_gray2_12px">2013-01-23</span></td> -->
<!-- 	                                    </tr> -->
<!--                                       </table></td> -->
<!--                                       <td width="10">&nbsp;</td> -->
<!--                                     </tr> -->
<!--                                 </table></td> -->
<!--                               </tr> -->
<!--                               <tr> -->
<!--                                 <td height="1" bgcolor="e5e5e5"></td> -->
<!--                               </tr> -->
<%--                               </c:forEach>                               --%>
<!--        				          반복문 종료  -->
<!--                           </table></td> -->
<!--                         </tr> -->
<!--                         <tr> -->
<!--                           <td height="30" align="center"> -->
<%--                             <jsp:include page="/admin/inc/paging.jsp"/> --%>
<!--                           </td> -->
<!--                         </tr> -->
<!--                         <tr> -->
<!--                           <td height="30" align="right"><a href="admNoticeInsert.do"><img src="admin/img/bts.write.gif"></a> </td> -->
<!--                         </tr> -->
<!--                     </table></td> -->
<!--                   </tr> -->
<!-- 				  <tr> -->
<!--                     <td align="center"><form name="forms" method="post" action="list.asp" style="margin:0"> -->
<!--                         <input type="hidden" name="table_name" value="sub5_page2_board2"> -->
<!--                         <table border="0" cellspacing="0" cellpadding="0"> -->
<!--                           <tr> -->
<!--                             <td><img src="admin/img/board.search.img01.gif" width="41" height="42"></td> -->
<!--                             <td><table width="100%" border="0" cellspacing="0" cellpadding="0"> -->
<!--                                 <tr> -->
<!--                                   <td height="1" bgcolor="cfcfcf"></td> -->
<!--                                 </tr> -->
<!--                                 <tr> -->
<!--                                   <td height="40"><table border="0" cellspacing="0" cellpadding="0"> -->
<!--                                       <tr> -->
<!--                                         <td><table border="0" cellpadding="0" cellspacing="1" bgcolor="cacaca"> -->
<!--                                             <tr> -->
<!--                                               <td bgcolor="#FFFFFF"><select name="search" class="input_bg_white"> -->
<!--                                                   <option value="TITLES" >제목</option> -->
<!--                                                   <option value="USERNAME" >글쓴이</option> -->
<!--                                               </select></td> -->
<!--                                             </tr> -->
<!--                                           </table> -->
<!--                                             <label></label></td> -->
<!--                                         <td width="5"></td> -->
<!--                                         <td><table width="100%" border="0" cellpadding="0" cellspacing="2" bgcolor="cdcdcd"> -->
<!--                                           <tr> -->
<!--                                             <td height="20" valign="bottom" bgcolor="#FFFFFF"><input name="se_string" type="text" class="input_bg_white" id="textfield3" size="46" value=""></td> -->
<!--                                           </tr> -->
<!--                                         </table></td> -->
<!--                                         <td width="5"></td> -->
<!--                                         <td><input type="image" src="admin/img/bts.search.gif" width="45" height="21"></td> -->
<!--                                       </tr> -->
<!--                                   </table></td> -->
<!--                                 </tr> -->
<!--                                 <tr> -->
<!--                                   <td height="1" bgcolor="cfcfcf"></td> -->
<!--                                 </tr> -->
<!--                             </table></td> -->
<!--                             <td><img src="admin/img/board.search.img02.gif" width="11" height="42"></td> -->
<!--                           </tr> -->
<!--                         </table> -->
<!--                     </form></td> -->
<!--                   </tr> -->

<!--               </table></td> -->
<!--             </tr> -->
<!--             <tr> -->
<!--               <td>&nbsp;</td> -->
<!--             </tr> -->
<!--         </table></td> -->
<!--         <td width="16" valign="top"><img src="admin/img/sub.body.box.right.gif" width="16" height="170"></td> -->
<!--       </tr> -->
<!--     </table></td> -->
<!--   </tr> -->
<!-- </table>    -->
<%-- </center>  --%>
<jsp:include page="/admin/inc/bottom.jsp"/>