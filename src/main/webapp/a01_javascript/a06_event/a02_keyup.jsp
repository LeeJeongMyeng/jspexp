<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"    
    import="jspexp.vo.*" 
       import="jspexp.a13_database.vo.*"
   %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="/a00_com/a01_common.css" rel="stylesheet">
<script>
/*
 
 */
</script>
</head>
<body>

<div id="container"></div>
아이디:<input type="text" name="id"/>
비번:<input type="text" name="pass"/>
<div id="container2"></div>

물건가격:<input type="text" name="price" value="0" />
물건갯수:<input type="text" name="cnt" value="0"/>
<div id="container3"></div>
</body>
<script>
/*
 #keyup /keydown
 1.키보드를 입력할떄, 발생하는 이벤트 처리시 사용된다.

 */
 
 var idOb = document.querySelector("[name=id]");
 var passOb = document.querySelector("[name=pass]");
 var div = document.querySelector("#container");
 var div2 = document.querySelector("#container2");
 idOb.onkeyup = function(){
	 var len=this.value.length//입력된 글자 수
	 var cont = this.value //입력된 내용
	 div.innerText="글자수:"+len+",내용:"+cont
 }
 
 passOb.onkeyup = function(){
	var len2 = this.value.length
	if(len2<10){
		div2.innerText="10자리 이상이어야합니다."
	}else{
		div2.innerText=""
	}
 }
 
 /*
  ex) 물건가격:[] 물건개수:[]
  입력시 , 바로 하단에 총계가 출력되게하세요
 */
 var priceOb = document.querySelector("[name=price]");
 var cntOb = document.querySelector("[name=cnt]");
 var evt = document.querySelectorAll("[name=price],[name=cnt]");
 var div3 = document.querySelector("#container3");
 
 for(var idx=0; idx<evt.length; idx++){
	 evt[idx].onkeyup=function(){
		 var tot=priceOb.value*cntOb.value
		div3.innerText="총계:"+tot 
	 }
 }
 
 
 

 
</script>
</html>