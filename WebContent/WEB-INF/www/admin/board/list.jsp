<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<jsp:include page="/admin/inc/top.jsp"/>

<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7/jquery.js"></script>
<style type="text/css">
.mw_layer{display:none;position:fixed;_position:absolute;top:0;left:0;z-index:10000;width:100%;height:100%}
.mw_layer.open{display:block}
.mw_layer .bg{position:absolute;top:0;left:0;width:100%;height:100%;background:#000;opacity:.5;filter:alpha(opacity=50)}
#layer{position:absolute;top:250px;left:30%;width:700px;height:550px;margin:-150px 0 0 -194px;padding:28px 28px 0 28px;border:2px solid #555;background:#fff;font-size:12px;font-family:Tahoma, Geneva, sans-serif;color:#767676;line-height:normal;white-space:normal}
</style>
<script type="text/javascript">
function openContent(seq){
	
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
jQuery(function($){
	var layerWindow = $('.mw_layer');
	$(document).keydown(function(event){
	 if(event.keyCode != 27) return true;
	 if (layerWindow.hasClass('open')) {
	  layerWindow.removeClass('open');
	 }
	 return false;
	});
	
	// Hide Window
	layerWindow.find('>.bg').mousedown(function(event){
	 layerWindow.removeClass('open');
	 return false;
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
                    <td align="center"><form name="forms" method="post" action="list.asp" style="margin:0">
                        <input type="hidden" name="table_name" value="sub5_page2_board2">
                        
                        <!-- light box -->
						<div class="mw_layer">
							<div class="bg"></div>
							<div id="layer"></div>
						</div>
						                        
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
	window.onload = function(){
		loadNextPage(1,1);
	}
	function loadNextPage(bd_chk,page){
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
</script>
</center> 
<jsp:include page="/admin/inc/bottom.jsp"/>