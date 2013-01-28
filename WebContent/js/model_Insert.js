
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

//공백을 삭제해주는 메소드
function trim(str) {
	return str.replace(/^\s\s*/, '').replace(/\s\s*$/, ''); 
} 

