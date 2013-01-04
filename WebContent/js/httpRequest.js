  var httpRequest = null;

  var createXMLHttpRequest = function(){
    if(window.ActiveXObject){ //현재윈도우에 activex오브젝트가 생성이 된다(IE일때)
      // 익스플로러
      try{
    	//var xmlHttp = new ActiveXObject("Msxml2.XMLHTTP");//6.0부터
    	//alert('InternetExplorer(6.0 이후)');
    	return new ActiveXObject("Msxml2.XMLHTTP");
      }catch(e1){
    	try{
    	  //var xmlHttp = new ActiveXObject("Microsoft.XMLHTTP");
          //alert('InternetExplorer(5.5이전)');
          return new ActiveXObject("Microsoft.XMLHTTP");
    	}catch(e2){
    	  return null;
    	}  
      }         
    } else if(window.XMLHttpRequest){ //그외의 브라우저
      //alert("OtherBroswer");
      return new XMLHttpRequest();
    } else {
      //alert("XMLHttpRequs0et 미지원입니다.");
      return null;
    }
  }
  
  var sendRequest = function(url, params, callback, method){	  
	httpRequest = createXMLHttpRequest();  //인스턴스 return
	var httpMethod = method ? method : 'GET'; //값이 전송이 되었으면 사용 아닐시 GET으로 사용
	if(httpMethod != 'GET' && httpMethod != 'get' //GET get POST post도 아닐시 get방식사용
	   && httpMethod != 'POST'&& httpMethod != 'post'){httpGethod="GET";}
	var httpParams = (params == null || params =='')?null : params;
	var httpUrl =url;
	if(httpMethod =='GET' && httpParams != null){
		httpUrl = httpUrl+"?"+httpParams;
	}
	httpRequest.open(httpMethod,httpUrl,true);
	httpRequest.setRequestHeader('Content-Type','application/x-www-form-urlencoded');
	httpRequest.onreadystatechange=callback;
	httpRequest.send(httpMethod == 'POST'?httpParams :null);	
  }