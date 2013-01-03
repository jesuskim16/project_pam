var now = new Date(); 
function changeDate(now){
	return now.getFullYear() + "-" + addZero(eval(now.getMonth()+1)) + "-" + addZero(now.getDate());
}
function addZero(num){
	var result = num > 9 ?'' + num :'0' + num;
	return result;	
}
//페이지 로드시 시작일자를 오늘로 자동설정
var pageLoad = function(){
	var now = new Date();
	var s_today = changeDate(now);
	document.result_form.s_sdate.value = s_today;
	document.result_form.s_edate.value = s_today;
}
//전일 선택 시 시작일자를 전일로 설정
var m_yesterday = function() {
	var now = new Date();
	t_today = changeDate(now);
	now.setDate( now.getDate() - 1 );
	s_today = changeDate(now);
	document.result_form.s_sdate.value = s_today;
	document.result_form.s_edate.value = t_today;
}
//7일 선택 시 시작일자를 7일전으로 설정
var m_week = function() {
	var now = new Date();
	now.setDate( now.getDate() - 7 );
	s_today = changeDate(now); 
	document.result_form.s_sdate.value = s_today;
}
//10일 선택 시 시작일자를 10일전으로 설정
var m_tenDay = function() {
	var now = new Date();
	now.setDate( now.getDate() - 10 );
	s_today = changeDate(now); 
	document.result_form.s_sdate.value = s_today;
}
//15일 선택 시 시작일자를 15일전으로 설정
var m_ftDay = function() {
	var now = new Date();
	now.setDate( now.getDate() - 15 );
	s_today = changeDate(now); 
	document.result_form.s_sdate.value = s_today;
}
//한달 선택 시 시작일자를 한달전으로 설정
var m_amonth = function() {
	var now = new Date();
	now.setMonth( now.getMonth() - 1 );
	s_today = changeDate(now); 
	document.result_form.s_sdate.value = s_today;
}
//3달 선택 시 시작일자를 3달전으로 설정
var m_tmonth = function() {
	var now = new Date();
	now.setMonth( now.getMonth() - 3 );
	s_today = changeDate(now); 
	document.result_form.s_sdate.value = s_today;
}
//3달 선택 시 시작일자를 3달전으로 설정
var m_smonth = function() {
	var now = new Date();
	now.setMonth( now.getMonth() - 6 );
	s_today = changeDate(now); 
	document.result_form.s_sdate.value = s_today;
}
window.onload= pageLoad;  // 페이지 시작시 해당 메소드를 호출