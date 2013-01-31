/////////////////////////////////////////////////////////
//////////////////////ZIPCODE 처리///////////////////////
var openZipcode = function() {
	var url = "BranchZipcode.do";
	open(url, "confirm", 
		"toolbar=no, location=no, status=no, menubar=no, scrolbar=yes" +
		"resizeble=no, width=450, height=400");
	
};

/////////////////////////////////////////////////////////
//////////////////////최종 지점 수정/////////////////////
function br_Modify(){
	
	var f = document.result_form;
	var brc_boss = trim(f.brc_boss.value);
	
	if(brc_boss == ""){
		return;
	}else{
		br_close();
		f.action = "admBranchModifyAction.do";
		f.submit();
	}	
	
}

/////////////////////////////////////////////////////////
//////////////////////AJAX 처리부분//////////////////////

function openContent(seq){	
	$('.mw_layer').fadeIn(500).addClass('open');
	$('#layer').html('<table width="100%" height="100%" cellpadding="0">' +
						'<tr><td align="center"><img src="admin/img/branch/ajax-loader.gif"/></td></tr></table>');
	$.ajax({
		  type:'post',
		  url:'admBranchModify.do',
		  data: ({seq : seq}),
		  success : function(data){
			$('#layer').html(data);
		  }
	});
}
/////////////////////////////////////////////////////////
///////////////////LightBox 종료부분/////////////////////
$(function($){
	var layerWindow = $('.mw_layer');
	$(document).keydown(function(event){
	 if(event.keyCode != 27) return true;
	 if (layerWindow.hasClass('open')) {
	  layerWindow.removeClass('open').fadeOut(500);
	 }
	 return false;
	});
});
/////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////

/////////////////////////////////////////////////////////
///////////////////CheckBOX 모두체크/////////////////////

function chkAll() {
	var f = document.result_form;
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
// Controller 쪽으로 값 넘기는거부터 확인

function br_del(){
	var f = document.result_form;	
	var check = 0;
	for (var i = 0; i < f.elements.length; ++i) {
		if (f.elements[i].name == 'seq') {
			if (f.elements[i].checked == true){
				check = 1;
			}
		}
	}
	if(check == 0 ){
		alert("지점을 한개이상 선택해야 합니다.");
		return;		
	}
	var con = confirm("선택된 지점을 삭제 하시겠습니까?");
	if(con){		
		f.action = "admBranchDelete.do";
		f.submit();
	}else{
		return;
	}

}

// ///////////////////////////////////////////////////////
/////////////////////////////////////////////////////////

$(document).ready(function(){
	

	//DB에 저장된 brv_lev이 1일경우(대리점) 대리점 목록 숨김
	if($("input[name=brc_level]").val() == 1){
		$("#BR_List").hide();
		$("#BR_List_name").hide();
	}
	
	// DB에 저장되었던 brc_lev 값을 Select Box에서 Selected로 변경
  	var brc_lev = $("input[name=brc_level]").val();
  	$("#brc_lev").val(brc_lev).attr("selected", "selected");
  	
  	// DB에 저장되었던 boss_phone 값을 Select Box에서 Selected로 변경
  	var boss_phone = $("input[name=boss_phone]").val();
  	$("#boss_phone1").val(boss_phone).attr("selected", "selected");
  	
  	// DB에 저장되었던 brc_phone 값을 Select Box에서 Selected로 변경
  	var brc_phone = $("input[name=brc_phone]").val();
  	$("#brc_phone1").val(brc_phone).attr("selected", "selected");
  	
	//대표자명 입력확인
	$("#brc_boss").focusout(function(){
		var brc_boss = trim($("input[name=brc_boss]").val());
		if(brc_boss == ""){
			$("#brc_bossCheck").html("<font color=red>대표자 명을 입력하세요.</font>");
				$("input[name=brc_boss]").focus();
		}else{
			$("#brc_bossCheck").html("");
		}

	});
	
	//대리점, 판매점 선택
	$("select").change(function(){		
		var check = 0;
		  $("select[id='brc_lev'] option:selected").each(function () {
			  check = $(this).val();
		  });
		  if(check == 1){
			$("#BR_List").fadeOut(1000);
		  	$("#BR_List_name").fadeOut(1000);
		  }else if(check == 2){
			$("#BR_List").fadeIn(1000);
			$("#BR_List_name").fadeIn(1000);
		  }
	});

	//공백을 삭제해주는 메소드
	function trim(str) {
		return str.replace(/^\s\s*/, '').replace(/\s\s*$/, ''); 
	} 	

});

//공백을 삭제해주는 메소드
function trim(str) {
	return str.replace(/^\s\s*/, '').replace(/\s\s*$/, ''); 
} 


//취소버튼 클릭 시 LightBox 닫힘
function br_close(){
	var layerWindow = $('.mw_layer');
	layerWindow.removeClass('open').fadeOut(500);
}



