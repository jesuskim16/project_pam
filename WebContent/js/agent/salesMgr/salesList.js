

//보이기/숨기기 javascript
function HiddenSeem(hidden,seem) {
	if(document.count.countvalue.value == '0'){
	document.getElementById(hidden).style.display="none";
	document.getElementById(seem).style.display="table-row";
	document.count.countvalue.value++;
	}
}

//우편 번호 추가

var openZipcode = function(reg_seq) {
	var url = "Zipcode.do";
	document.count.sendseq.value = reg_seq;
	open(url, "confirm", 
		"toolbar=no, location=no, status=no, menubar=no, scrolbar=yes" +
		"resizeble=no, width=450, height=400");
	
	
}

//삭제 script
function listdelete(seq){
	var result = confirm("정말로 삭제하시겠습니까?");
	
	if(result == true) {
		location.href="salesDelete.do?seq="+seq;
	} else {
		
	}
}


