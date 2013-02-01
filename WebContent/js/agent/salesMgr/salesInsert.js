
var openZipcode = function() {
	var url = "Zipcode.do";
	open(url, "confirm", 
		"toolbar=no, location=no, status=no, menubar=no, scrolbar=yes" +
		"resizeble=no, width=450, height=400");
	
}

function customInput() {
		var frm = document.reg;
		
		if(frm.brc_id.value == ""){
			alert("아이디를 입력하세요");
			frm.brc_id.focus();
			return;
		} else if(frm.brc_id.value.length < 2){
			alert("아이디를 2자 이상 입력하세요");
			frm.brc_id.focus();
			return;
		} else if(frm.password.value == ""){
			alert("비밀번호를 입력하세요");
			frm.password.focus();
			return;
		} else if(frm.password.value.length < 2){
			alert("비밀번호를 2자 이상 입력하세요");
			frm.password.focus();
			return;
		} else if(frm.password_check.value == ""){
			alert("비밀번호 확인를 입력하세요");
			frm.password_check.focus();
			return;
		} else if(frm.password_check.value.length < 2){
			alert("비밀번호 확인를 2자 이상 입력하세요");
			frm.password_check.focus();
			return;
		} else if(frm.brc_name.value == ""){
			alert("판매점명을 입력하세요");
			frm.brc_name.focus();
			return;
		} else if(frm.brc_name.value.length < 2){
			alert("판매점명을 2자 이상 입력하세요");
			frm.brc_name.focus();
			return;
		} else if ((frm.brc_phone2.value.length < 3) || (frm.brc_phone2.value == "")){
			alert("핸드폰번호 앞번호를 입력해 주세요.");
			frm.brc_phone2.focus();
			return;
		} else if ((frm.brc_phone3.value.length < 4) || (frm.brc_phone3.value == "")){
			alert("핸드폰번호 뒷번호를 입력해 주세요.");
			frm.brc_phone3.focus();
			return;
		} else if(frm.brc_addr2.value == ""){
			alert("판매점주소을 입력하세요");
			frm.brc_addr2.focus();
			return;
		} else if(frm.brc_boss.value == ""){
			alert("대표자를  입력하세요");
			frm.brc_boss.focus();
			return;
		} else if(frm.brc_boss.value.length < 2){
			alert("대표자를 2자 이상 입력하세요");
			frm.brc_boss.focus();
			return;
		} else if ((frm.boss_phone2.value.length < 3) || (frm.brc_phone2.value == "")){
			alert("대표자연락처 앞번호를 입력해 주세요.");
			frm.boss_phone2.focus();
			return;
		} else if ((frm.boss_phone3.value.length < 4) || (frm.brc_phone3.value == "")){
			alert("대표자연락처 뒷번호를 입력해 주세요.");
			frm.boss_phone3.focus();
			return;
		} else {
			frm.action = 'salesInsertAction.do';
			frm.submit();	
		}
	
	}
	
	
	$(document).ready(function(){
		//ID중복체크 부분
		$("#brc_id").focusout(function() {	
			
			//ID중복 체크를 Request / Response 및 Action 처리부분
			$.ajax({
				url : "salesIdCheck.do" ,
				//type : "get",
				data : ({
					brc_id : $("input[name=brc_id]").val()
				}),
				success : function(data) {
					if($.trim(data) == "empty"){				
						$("#idCheck").html("<font color=blue>사용가능한 ID입니다.</font>");
					}else{
						$("#idCheck").html("<font color=red>아이디가 이미 존재합니다.</font>");
						$("input[name=brc_id]").focus();
						
					}
				},
				error : function() {
					alert("ID값을 얻어오지 못했습니다. 다시입력하세요");
				}			
			});

		});
		
});




