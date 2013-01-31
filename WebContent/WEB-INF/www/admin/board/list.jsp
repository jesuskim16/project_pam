<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<jsp:include page="/admin/inc/top.jsp"/>

<script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="js/jquery.form.js"></script>

<style type="text/css">
.mw_layer{display:none;position:fixed;_position:absolute;top:0;left:0;z-index:10000;width:100%;height:100%}
.mw_layer.open{display:block}
.mw_layer .bg{position:absolute;top:0;left:0;width:100%;height:100%;background:#000;opacity:.5;filter:alpha(opacity=50)}
#layer{position:absolute;top:250px;left:30%;width:650px;height:550px;margin:-150px 0 0 -194px;padding:28px 28px 0 28px;border:2px solid #555;background:#fff;font-size:12px;font-family:Tahoma, Geneva, sans-serif;color:#767676;line-height:normal;white-space:normal}
.insert_layer{display:none;position:fixed;_position:absolute;top:0;left:0;z-index:10000;width:100%;height:100%}
.insert_layer.open{display:block}
.insert_layer .bg{position:absolute;top:0;left:0;width:100%;height:100%;background:#000;opacity:.5;filter:alpha(opacity=50)}
</style>
<script type="text/javascript">

function insertContent(){			//insert
	$('#forms').each(function(){this.reset();});  
	$('.insert_layer').addClass('open');
}

function openContent(seq){			//view	
	$('.mw_layer').addClass('open');
	$.ajax({
		  type:'post',
		  url:'admNoticeView.do',
		  data: ({seq:seq}),
		  success:function(data){
			$('#layer').html(data);			
		  }
	});
}

jQuery(function($){					//lightbox
	var layerWindow = $('.mw_layer');
	var insertWindow = $('.insert_layer'); 
	$(document).keydown(function(event){
	 if(event.keyCode != 27) return true;
	 if (layerWindow.hasClass('open')) {
	  layerWindow.removeClass('open');
	 }
	 if(insertWindow.hasClass('open')) {
		 insertWindwo.removeClass('open');
	 }
	 return false;
	});
	
	// Hide Window
	layerWindow.find('>.bg').mousedown(function(event){
	 layerWindow.removeClass('open');
	 return false;
	});
	insertWindow.find('>.bg').mousedown(function(event){
		var cfm=confirm('입력창을 종료하시겠습니까');
		if(cfm){
		insertWindow.removeClass('open');
		return false;
	    }
	});
});
</script>
<jsp:include page="/admin/inc/menu_board.jsp"/>
<br>
<center> 
<table width="800" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
  <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="16" valign="top"><img src="admin/img/sub.body.box.left.gif" width="16" height="170"></td>
        <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td height="5" background="admin/img/sub.body.bg01.gif"></td>
            </tr>
            <tr>
              <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td>
                    <div id="list">
                    
                    </div>
                    </td>
                  </tr>
				  <tr>
                    <td align="center">
                        <!-- light box -->
						<div class="mw_layer">
							<div class="bg"></div>
							<div id="layer"></div>													
						</div> 
						<div class="insert_layer" id="insert_layer">
						<div class="bg"></div>
						<div id="layer">
						<!-- insert/ -->
							<form name="forms" id="forms" method="post" action="#" accept-charset="utf-8" enctype="multipart/form-data" style="margin:0">
							<input type="hidden" name="content">
							<input type="hidden" name="board_chk">						
							<table width="600" border="0" align="center" cellpadding="0" cellspacing="0">
							  <tr>
							    <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
							      <tr>
							        <td width="16" valign="top"><img src="admin/img/sub.body.box.left.gif" width="16" height="170"></td>
							          <td valign="top">
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
							                                                  <tr>
							                                                    <td height="2" background="admin/img/board.write.inline.gif"></td>
							                                                  </tr>
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
							                                                  <tr>
							                                                    <td height="2" background="admin/img/board.write.inline.gif"></td>
							                                                  </tr>
							                                                  <tr>
							                                                    <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
							                                                      <tr>
							                                                        <td height="5"></td>
							                                                      </tr>
							                                                      <tr>
							                                                        <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
							                                                          <tr>
							                                                            <td width="13" align="center"><img src="admin/img/icon.dot.blue2.gif" alt="" width="3" height="3"></td>
							                                                            <td height="300">내용</td>
							                                                          </tr>
							                                                        </table></td>
							                                                      </tr>
							                                                      <tr>
							                                                        <td height="5"></td>
							                                                      </tr>
							                                                    </table></td>
							                                                  </tr>
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
							                                              <tr>
							                                                <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
							                                                  <tr>
							                                                    <td height="5"></td>
							                                                  </tr>
							                                                  <tr>
							                                                    <td height="26"><table border="0" cellpadding="0" cellspacing="2" bgcolor="cdcdcd">
							                                                      <tr>
							                                                        <td height="20" valign="bottom" bgcolor="#FFFFFF"><input name="title" type="text" class="input_bg_white" id="textfield3" size="80"></td>
							                                                      </tr>
							                                                    </table></td>
							                                                  </tr>
							                                                  <tr>
							                                                    <td height="5"></td>
							                                                  </tr>
							                                                </table></td>
							                                              </tr>
							                                              <tr>
							                                                <td height="2" background="admin/img/board.write.inline.gif"></td>
							                                              </tr>
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
							                                                            <td height="20" valign="bottom" bgcolor="#FFFFFF"><input name="upFile" type="file" class="input_bg_white" id="textfield" size="66"></td>
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
							                                              <tr>
							                                                <td height="2" background="admin/img/board.write.inline.gif"></td>
							                                              </tr>
							                                              <tr>
							                                                <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
							                                                  <tr>
							                                                    <td height="5"></td>
							                                                  </tr>
							                                                  <tr>
							                                                    <td height="26"><table border="0" cellpadding="0" cellspacing="2" bgcolor="cdcdcd">
							                                                      <tr>
							                                                        <td valign="bottom" bgcolor="#FFFFFF" colspan="2">     
																					<!-- daumeditor -->
																					<jsp:include page="/editor/editor.jsp"/>
							                                                        </td>
							                                                      </tr>
							                                                    </table></td>
							                                                  </tr>
							                                                  <tr>
							                                                    <td height="5"></td>
							                                                  </tr>
							                                                </table></td>
							                                              </tr>
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
							                                <td width="5"></td>
							                                <td><img src="admin/img/bts.enter.gif" width="69" height="33" onClick="insertContentAct()" style="cursor:pointer"></td>
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
							        </td>
							        <td width="16" valign="top"><img src="admin/img/sub.body.box.right.gif" width="16" height="170" onclick="saveContent();"></td>
							      </tr>
							    </table></td>
							  </tr>
							</table>	
							</form>					
						
						<!-- /insert -->
						</div>
						</div> 
<!-- 						            
                        <table border="0" cellspacing="0" cellpadding="0">
                          <tr>
                            <td><img src="admin/img/board.search.img01.gif" width="41" height="42"></td>
                            <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                  <td height="1" bgcolor="cfcfcf"></td>
                                </tr>
                                <tr>
                                  <td height="40"><table border="0" cellspacing="0" cellpadding="0">
                                      <tr>
                                        <td><table border="0" cellpadding="0" cellspacing="1" bgcolor="cacaca">
                                            <tr>
                                              <td bgcolor="#FFFFFF"><select name="search" class="input_bg_white">
                                                  <option value="TITLES" >제목</option>
                                                  <option value="USERNAME" >글쓴이</option>
                                              </select></td>
                                            </tr>
                                          </table>
                                            <label></label></td>
                                        <td width="5"></td>
                                        <td><table width="100%" border="0" cellpadding="0" cellspacing="2" bgcolor="cdcdcd">
                                          <tr>
                                            <td height="20" valign="bottom" bgcolor="#FFFFFF"><input name="se_string" type="text" class="input_bg_white" id="textfield3" size="46" value=""></td>
                                          </tr>
                                        </table></td>
                                        <td width="5"></td>
                                        <td><input type="image" src="admin/img/bts.search.gif" width="45" height="21"></td>
                                      </tr>
                                  </table></td>
                                </tr>
                                <tr>
                                  <td height="1" bgcolor="cfcfcf"></td>
                                </tr>
                            </table></td>
                            <td><img src="admin/img/board.search.img02.gif" width="11" height="42"></td>
                          </tr>
                        </table>
-->                        
                    </form></td>
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

<script>
	window.onload = function(){loadNextPage(${p.board_chk},1);}
	
	function loadNextPage(bd_chk,page){		
		document.forms.board_chk.value=bd_chk;		
		page = parseInt(page);
		bd_chk = parseInt(bd_chk);
		$('#list').empty();
		$.ajax({
			type:'post',
			url:'ajaxList.do',
			data:({board_chk:bd_chk,page:page,chk:'list'}),
			success:function(data){
				$('#list').append(data);
			}
		});
	}

	function insertContentAct(){
		var frm = document.forms;
		var board_chk=frm.board_chk.value;
			if(frm.title.value == ""){
				alert("제목을 입력하세요");
				frm.title.focus();
				return false;
			}
			//saveContent();
			document.forms.content.value=Editor.getContent();//에디터 textarea값을 hidden에 넣는다
			
			frm.action ="admNoticeInsert.do";
			frm.submit();
	}	
</script>
</center> 
<jsp:include page="/admin/inc/bottom.jsp"/>