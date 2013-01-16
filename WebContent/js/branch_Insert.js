$(document).ready(function(){
	$("#brc_id").focusout(function() {
		
		var cmttxt =trim($("input[name=brc_id]").val()); 
		if(cmttxt == "") { 
		alert("ID를 입력해 주세요");
		$("#idCheck").html("<font></font>");
		return;
		}
		$.ajax({
			url : "admBranchIdCheck.do" ,
			//type : "get",
			data : ({
				brc_id : $("input[name=brc_id]").val()
			}),
			success : function(data) {
				if($.trim(data) == "empty"){				
					$("#idCheck").html("<font color=blue>가입할 수 있습니다.</font>");
				}else{
					$("#idCheck").html("<font color=red>아이디가 이미 존재합니다.</font>");
					$().toastmessage('showToast', {
					    text     : '아이디가 이미 존재합니다.',
					    sticky   : false,
					    stayTime : 1500,
					    position : 'middle-center',
					    type     : 'warning'					    	
					});
				}
			},
			error : function() {
				alert("읽을 수 없습니다");
			}
			
		});
		function trim(str) {
			return str.replace(/^\s\s*/, '').replace(/\s\s*$/, ''); 
		} 
	});

});



