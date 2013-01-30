
/////////////////////////////////////////////////////////
//////////////////최종 지점 입력확인/////////////////////
function model_insert(){
	var f = document.result_forms;
	var model_code = trim(f.model_code.value);
	var model_name = trim(f.model_name.value);	
	if(model_code == ""){
		alert("Model Code를 입력해주세요.");
		f.brc_id.focus;
		return;
	}else if(model_name == ""){
		alert("Model Name을 입력해주세요.");
		return;
	}else{
		f.action = "admModelInsertAction.do";
		f.submit();
	}
}

function model_update(){
	var f = document.update_result_forms;
	var model_code = trim(f.model_code.value);
	var model_name = trim(f.model_name.value);	
	if(model_code == ""){
		alert("Model Code를 입력해주세요.");
		f.brc_id.focus;
		return;
	}else if(model_name == ""){
		alert("Model Name을 입력해주세요.");
		return;
	}else{
		f.action = "admModelListModifyAction.do";
		f.submit();
	}
}

//공백을 삭제해주는 메소드
function trim(str) {
	return str.replace(/^\s\s*/, '').replace(/\s\s*$/, ''); 
} 

/////////////////////////////////////////////////////////
//////////////////모델정보 삭제부분//////////////////////

function chkAll() {
	var f = document.result_forms;
	var check;
	if (f.all_Check.checked) {
		check = true;
	} else {
		check = false;
	}
	for (var i = 0; i < f.elements.length; ++i) {
		if (f.elements[i].name == 'seq') {
			if (f.elements[i].disabled == false)
				f.elements[i].checked = check;

		}
	}
}

// Controller 쪽으로 선택된 값들을 넘김
function model_del(){
	var f = document.result_forms;	
	var check = 0;
	for (var i = 0; i < f.elements.length; ++i) {
		if (f.elements[i].name == 'seq') {
			if (f.elements[i].checked == true){
				check = 1;
			}
		}
	}
	
	if(check == 0 ){
		alert("모델을 한개이상 선택해야 합니다.");
		return;		
	}
	var con = confirm("선택된 모델을 삭제 하시겠습니까?");
	if(con){		
		f.action = "admModelListDelete.do";
		f.submit();
	}else{
		return;
	}
}
/////////////////////////////////////////////////////////
$(document).ready(function(){	
	// DB에 저장되었던 brc_lev 값을 Select Box에서 Selected로 변경
  	var state_chk = $("input[name=state_check]").val();
  	$("#check").val(state_chk).attr("selected", "selected");	
});


/////////////////////////////////////////////////////////
//////////////////////AJAX 처리부분//////////////////////

function openContent(seq) {
	$('.mw_layer').fadeIn(500).addClass('open');
	$('#layer')
			.html(
					'<table width="100%" height="100%" cellpadding="0">'
							+ '<tr><td align="center"><img src="admin/img/branch/ajax-loader.gif"/></td></tr></table>');
	$.ajax({
		type : 'post',
		url : 'admModelListModify.do',
		data : ({
			seq : seq
		}),
		success : function(data) {
			$('#layer').html(data);
		}
	});
}
/////////////////////////////////////////////////////////
///////////////////LightBox 종료부분/////////////////////
$(function($) {
	var layerWindow = $('.mw_layer');
	$(document).keydown(function(event) {
		if (event.keyCode != 27)
			return true;
		if (layerWindow.hasClass('open')) {
			layerWindow.removeClass('open').fadeOut(500);
		}
		return false;
	});
});
/////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////

//취소버튼 클릭 시 LightBox 닫힘
function model_close(){
	var layerWindow = $('.mw_layer');
	layerWindow.removeClass('open').fadeOut(500);
}