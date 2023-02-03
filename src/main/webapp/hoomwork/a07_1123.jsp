<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
  import="java.util.*"  
  import="jspexp.vo.*"  
    import="jspexp.a13_database.*"    
    import="jspexp.a13_database.vo.*" 
      
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="/a00_com/a01_common.css" rel="stylesheet">
<script type="text/javascript">
/*
 
*/
</script>

</head>
<body>
	<h2>7번문제</h2>
	<form>
	<input type="text" name="num11" value="9" size="2"> x
	<input type="text" name="num12" value="2" size="2"> =
	<input type="text" name="sum" value="0">
	</form>
	
	<h2>8번문제</h2>
	<table>
		<tr><td></td><td></td><td></td><td></td></tr>
		<tr><td></td><td></td><td></td><td></td></tr>
		<tr><td></td><td></td><td></td><td></td></tr>
		<tr><td></td><td></td><td></td><td></td></tr>
	</table>
	<h2>9번문제</h2>
	<h4></h4>
<div id="container"></div>
<h3 id="exp9" ></h3>
</body>
<script type="text/javascript">
var div = document.body.querySelector("#container")

<%--[1단계:개념] 1. [js] 무한대 처리가 나오는 에러내용과 이를 방지 하기 위한 방법을 기술하세요. --%>
/*
 	1) isFinite(숫자형) : /0 처리시 발생하는 에러를 사전에 조건무니 막기 위해서 
	 						처리하는 함수..
	 						0으로 나누었을 떄, 자바의 경우 에러가 발새앟ㄴ다.
	 						js에서는 함수를 처리할 수 있게 한다.
 */

//[1단계:확인] 2. [js] 빵 10개를 곰돌이 3~0마리까지 동등하게 나눌 때, 값을 처리하되 /0일때, 처리불가라고 표시하세요.
		
	for(var cnt=0;cnt<4; cnt++){
		var divCal = 10/cnt
	if(isFinite(divCal)){
	div.innerHTML+=divCal+"<br>"
	}else{div.innerHTML+="처리불가<br>"}
}
	 	


//[2단계:확인] 2. [js] prompt에 @@/@@ ? 형식으로 0~9까지 임의의 한자리 나눗셈 문제 나와서
//               정답을 맞추면 빙고 틀리면, 다시하세요 출력하되, /0일 때는 연산값 결과값이 0이 되게 하세요
var h4 = document.querySelector("h4")
	var num21Obj = parseInt(Math.random()*9+1);
	var num22Obj = parseInt(Math.random()*9+0);
	var num21 = prompt(num21Obj+"/"+num22Obj+"..?", "");
		
	 var resultNum21 = Number(num21Obj)/Number(num22Obj);
	 var resultNum22 = Number(num21);
	 

	 if(isFinite(resultNum21)&& resultNum21==resultNum22 ){
		 h4.innerHTML+="정답";
	 }else{ h4.innerHTML+="오답";}
	 


//[1단계:개념] 3. [js] NaN이 나오는 경우와 이것을 처리하기 위한 함수를 기술하세요.
				/* #NaN
  				1. 형 변환에서 숫자형 문자열이 아닐떄, 주로 발생하는 에러 코드
  				2. 위 내용을 체크해주는 함수 isNaN(): 숫자형이 아닐 때, true 
  				div.innerHTML="숫자형:"+parseInt("25")+"<br>"
  				div.innerHTML="숫자형 (check):"+isNaN(parseInt("25"))+"<br>"
  				div.innerHTML+="숫자형 아닐 때:"+parseInt("이십오")+"<br>"
  				div.innerHTML+="숫자형 아닐 때(check):"+isNaN(parseInt("이십오"))+"<br>"*/
  				
  				
//[1단계:개념] 4. [js] Number(), parseInt(), parseFloat의 차이점을 기술하세요
					/*
						Number = 온전히 숫자만있을떄 , 변환
						parseInt = 숫자로 시작하는 문자열에서, 숫자가 끝나는 부분까지 확인 후, 변환
						parseFloat = parseInt와 동일하나, 소수점형태인 실수형으로 변환이 된다.
					*/

//[1단계:확인] 5. [js] prompt 창으로 타석과 안타를 입력받아 타율(소숫점이하)을 처리하되, %로도 출력하세요
//[2단계:확인] 5. [js] 위 내용을 화면에 DOM객체로 처리하여 타율(소숫점이하)와 %로  출력하세요
/* 				div.innerHTML="";
  				
 				function calHitRatio(){
  					var num01 = prompt("안타", "");
  					var num02 = prompt("타수", "");				
  					if(isNaN(num01) || isNaN(num02)){
  						alert("숫자형을 입력하세요");
  					}else{
  						var	bat01 = "<table><tr><th>안타</th><th>타수</th></tr>";
  							bat01 += "<tr><td>"+num01+"</<td><td>"+num02+"</<td></tr>";
  							bat01 += "<tr><td colspan='2'>타율</<td></tr>";
  							bat01 += "<tr><td colspan='2'>"+parseFloat(num01/num02)+"</<td></tr>";				
  							bat01 += "<tr><td colspan='2'>퍼센트</<td></tr>";
  							bat01 += "<tr><td colspan='2'>"+parseInt((num01/num02)*100)+"%</<td></tr>";
  							bat01 += "</table>"
  					}
  					div.innerHTML= bat01;
 				} 
 				<input type="button" value="타율계산" onclick="calHitRatio()"/>
 				*/

							


						
								
//[1단계:개념] 6. [js] setTimout과 setInterval의 기능와 형식을 기술하세요.
/* 2. 기본형식
	setInterval(function(){반복할 내용},1/1000)
3. 중단처리
	해당 내용을 변수로 지정해서 
	var int01 = setInterval(function(){반복할 내용},1/1000)
	clearInterval(int01)로 하면 중단된다 */
	
//[1단계:확인] 7. [js] 2자리(0~99)숫자 두개를 임의로 3초내 출력해서 정답을 입력하면 정답여부를 출력하게 처리하세요.
/* if(confirm("문제시작하겠습니까?")){
	var num11Obj = document.querySelector("[name=num11]")
		num11Obj.value=parseInt(Math.random()*99+0)
	var num12Obj = document.querySelector("[name=num12]")
		num12Obj.value=parseInt(Math.random()*99+1)
		
	var corVal = Number(num11Obj.value)+Number(num12Obj.value)
	setTimeout(function(){
		//5초후에 수행될 내용
		alert("시간이 종료 되었습니다.")
		div.innerHTML=corVal;
		var inputVal = parseInt(document.querySelector("[name=sum]").value)
		if (corVal==inputVal){
			alert("정답")
			}else{alert("오답")}
		
	},5000)
} */
//[2단계:확인] 8. [js] 테이블 4X4테이블의 배경색상을 흰색으로 하고 1~16번째 cell까지 노랑색 배경색으로 배경 변하게 하세요
//               (해당 cell만 노랑 배경색, 마지막에 이르러선 다시 처음 cell로 부터 다시 시작)
				

		
	 			
				
//[1단계:확인] 9. [js] .forEach 활용하여 무지개 색상 7가지를 h2로 영문으로 표시하세요.
//[2단계:확인] 10. [js] .forEach 활용하여 무지개 색상 7가지를 h2로 배경색상으로 표시하세요.
var h3 = document.querySelector("h3")
var arrycolor = ["red","Orange","yellow","green","blue","indigo","purple"]
arrycolor.forEach(function(color,idx){
	h3.innerHTML+="<h2 style='background-color:"+color+";'>" +color+"</h2>"
	
})

					
//[1단계:확인] 11. [js] 부서정보 리스트 json 배열객체로 선언하고 .forEach 활용하여 테이블로 출력하세요.
					div.innerHTML="";
var show11="<table><tr><th>부서번호</th><th>부서이름</th><th>위치</th></tr>"

var arryDept =[
	{deptno:20,dname:"회계",loc:"서울"},
	{deptno:30,dname:"연구",loc:"부산"},
	{deptno:40,dname:"생산",loc:"대전"}

]
arryDept.forEach(function(dept,idx){
	show11+="<tr><td>"+dept.deptno+"</td><td>"+dept.dname+"</td><td>"+dept.loc+"</td></tr>"
});
show11+="</table>"
div.innerHTML=show11

</script>
</html>