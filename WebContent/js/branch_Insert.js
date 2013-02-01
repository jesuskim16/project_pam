/////////////////////////////////////////////////////////
//////////////////////ZIPCODE 처리///////////////////////
var openZipcode = function() {
	var url = "BranchZipcode.do";
	open(url, "confirm", 
		"toolbar=no, location=no, status=no, menubar=no, scrolbar=yes" +
		"resizeble=no, width=450, height=400");
	
};

/////////////////////////////////////////////////////////
//////////////////최종 지점 입력확인/////////////////////
function br_Insert(){
	var f = document.branch_form;
	var brc_id = trim(f.brc_id.value);
	var password = trim(f.password.value);
	var re_password = trim(f.re_password.value);
	var brc_boss = trim(f.brc_boss.value);
	
	if(brc_id == ""){
		alert("아이디를 입력해주세요");
		f.brc_id.focus;
		return;
	}else if(password == ""){
		alert("비밀번호를 입력해주세요, 비밀번호에 공백은 포함되지 않습니다.");
		return;
	}else if(re_password == ""){
		alert("비밀번호 확인을 입력해주세요, 비밀번호에 공백은 포함되지 않습니다.");
		return;
	}else if(brc_boss == ""){
		alert("대표자명을 입력해주세요");
		return;
	}else{
		f.action = "admBranchInsertAction.do";
		f.submit();
	}
}



/////////////////////////////////////////////////////////
//////////////////////AJAX 처리부분//////////////////////

$(document).ready(function(){
	//ID중복체크 부분
	$("#brc_id").focusout(function() {	
		
		//ID에 공백이 있을경우 경고하는 함수
		var brc_idCheck =trim($("input[name=brc_id]").val()); 
		if(brc_idCheck == "") { 
			

			$().toastmessage('showToast', {
			    text     : '아이디를 입력해주세요.',
			    sticky   : false,
			    stayTime : 1500,
			    position : 'middle-center',
			    type     : 'warning'					    	
			});
			$().toastmessage('removeToast', {				    	
			});
		$("#idCheck").html("<font></font>");
		$("input[name=brc_id]").focus();
		return;
		}
		
		//ID중복 체크를 Request / Response 및 Action 처리부분
		$.ajax({
			url : "admBranchIdCheck.do" ,
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
					$().toastmessage('showToast', {
					    text     : '아이디가 이미 존재합니다.',
					    sticky   : false,
					    stayTime : 1500,
					    position : 'middle-center',
					    type     : 'warning'					    	
					});
					$().toastmessage('removeToast', {				    	
					});
				}
			},
			error : function() {
				alert("ID값을 얻어오지 못했습니다. 다시입력하세요");
			}			
		});

	});
	
	//비밀번호가 같은지 확인
	$("#re_password").focusout(function(){
		var password = trim($("input[name=password]").val());
		var re_password = trim($("input[name=re_password]").val());
		if(password != "" && re_password != ""){
			if(password != re_password){
				$("#password_Check").html("<font color=red>입력한 비밀번호가 서로 다릅니다.</font>");
				$("input[name=password]").focus();
			}else{
				$("#password_Check").html("<font color=blue>비밀번호가 일치합니다</font>");
			}
		}else{
			$("#password_Check").html("<font color=red>비밀번호에 공백은 허용하지 않습니다.</font>");
		}

	});
	
	//대표자명 입력확인
	$("#brc_boss").focusout(function(){
		var brc_boss = trim($("input[name=brc_boss]").val());
		if(brc_boss == ""){
			$("#brc_bossCheck").html("<font color=red>대표자 명을 입력하세요.</font>");
				$("input[name=brc_boss]").focus();		        

				$().toastmessage('showToast', {
				    text     : '대표자 명을 입력하세요.',
				    sticky   : false,
				    stayTime : 1000,
				    position : 'middle-center',
				    type     : 'warning'					    	
				});
				$().toastmessage('removeToast', {				    	
				});

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
			$("#BR_List").hide(1000);
		  	$("#BR_List_name").hide(1000);
		  }else if(check == 2){
			$("#BR_List").show(1000);
			$("#BR_List_name").show(1000);
		  }
	});

	//공백을 삭제해주는 메소드
	function trim(str) {
		return str.replace(/^\s\s*/, '').replace(/\s\s*$/, ''); 
	} 	

	
	//페이지 로드시 대리점 목록을 숨김
	function pageLoad(){
		
		$("#BR_List").hide();
	  	$("#BR_List_name").hide();
	}
	
window.onload = pageLoad;

});

//공백을 삭제해주는 메소드
function trim(str) {
	return str.replace(/^\s\s*/, '').replace(/\s\s*$/, ''); 
} 

