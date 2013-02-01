
function modelchange(model_name, model_code){
	var name_code = document.getElementById(model_name).value;
	
	document.getElementById( model_code).value = name_code; 
}



function managerhref(managerID, span_brc_id){
	
	var count = document.listForm.count.value + 1;	
	
	var salesID = document.listForm.sales.value;
	var Mpg = document.listForm.Mpg.value;
	var Spg = document.listForm.Spg.value;
	var Cpg = document.listForm.Cpg.value;
	var seq = document.listForm.seq.value;
	
	location.href="admClientList.do?managerID="+managerID+"&salesID="+salesID+"&count="+count+"&Mpg="+Mpg+"&Spg="+Spg+"&Cpg="+Cpg+"&seq="+seq;

	document.listForm.manager_span_brc_id.value = span_brc_id;  
	
}

function saleshref(salesID, span_brc_id){
	var count = document.listForm.count.value + 1;
	
	var managerID = document.listForm.manager.value;
	var Mpg = document.listForm.Mpg.value;
	var Spg = document.listForm.Spg.value;
	var Cpg = document.listForm.Cpg.value;
	var seq = document.listForm.seq.value;
	
	
	if (!(managerID == "")) {
		location.href="admClientList.do?managerID="+managerID+"&salesID="+salesID+"&count="+count+"&Mpg="+Mpg+"&Spg="+Spg+"&Cpg="+Cpg+"&seq="+seq;	
	} else {
		alert("대리점을 선택하세요.");
	}
	
	
	document.listForm.sales_span_brc_id.value = span_brc_id;
	
}

function clienthref(seq){
	
	document.listForm.seq.value = seq;
	
	var count = document.listForm.count.value + 1;	
	var managerID = document.listForm.manager.value;
	var salesID = document.listForm.sales.value;
	var Mpg = document.listForm.Mpg.value;
	var Spg = document.listForm.Spg.value;
	var Cpg = document.listForm.Cpg.value;

	
	location.href="admClientList.do?managerID="+managerID+"&salesID="+salesID+"&count="+count+"&Mpg="+Mpg+"&Spg="+Spg+"&Cpg="+Cpg+"&seq="+seq;
	
	
}


//Insert div
function Insert(viewhidden, viewseem){
	if (!(document.listForm.sales.value == "")) {
		document.getElementById(viewhidden).style.display="block";
		document.getElementById(viewseem).style.display="none";
		
	} else{
		alert("대리점과 판매점 목록을 선택해주세요.");
	}
	
}
//Check
var customInput = function() {
	var frm = document.result_forms;
	
	if(frm.cust_name.value == ""){
		alert("고객명을 입력하세요");
		frm.cust_name.focus();
		return false;
	}
	if(frm.cust_name.value.length < 2){
		alert("고객명을 2자 이상 입력하세요");
		frm.cust_name.focus();
		return false;
	}
	if ((frm.cust_phone2.value.length < 3) || (frm.cust_phone2.value == ""))
	{
		alert("핸드폰번호 앞번호를 입력해 주세요.");
		frm.cust_phone2.focus();
		return false;
	}
	if ((frm.cust_phone3.value.length < 4) || (frm.cust_phone3.value == ""))
	{
		alert("핸드폰번호 뒷번호를 입력해 주세요.");
		frm.cust_phone3.focus();
		return false;
	}

	frm.action="admClientInsertAct.do";
	frm.submit();
}

function admClientDel(seq){
	var result = confirm("정말로 삭제하시겠습니까?");
	 
	if(result == true) {
		var frm = document.deleteForm;
		frm.action='admClientDelete.do';
		frm.submit();
		//opener.parent.location.href='admClientList.do';
		opener.parent.location.reload();		
	}	
}




function admClientUpdate(hidden, seem){
	document.getElementById(hidden).style.display="block";
	document.getElementById(seem).style.display="none";
}



window.onload = function(){
	var Formseq = document.listForm.seq.value;

	if (!(Formseq == '0')) {
	document.getElementById('view').style.display="block";
	document.getElementById('seem').style.display="none";
	}
	
	
	var manager_id = document.listForm.manager.value;
	var sales_id = document.listForm.sales.value;
	
	manager_id = eval("document.getElementById('brc_id_"+manager_id+"')");
	manager_id.style.fontWeight = "bold";
	
	sales_id = eval("document.getElementById('brc_id_"+sales_id+"')");
	sales_id.style.fontWeight = "bold";	
}


