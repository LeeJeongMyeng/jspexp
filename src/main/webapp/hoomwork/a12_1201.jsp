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
<style>
input[type=text]{
width:50%;
position:block;
}
input[type=button]{

}
</style>
<script type="text/javascript">

</script>

</head>
<body>
<div id="container2"> </div>
<form>
	<input type="button" value="100일 후" onclick="after(100)">
	<input type="button" value="500일 후" onclick="after(500)">
	<input type="button" value="1000일 후" onclick="after(1000)">
</form>
<div id="container3"> </div>

<h2>7번문제</h2>


<h2>9-1번</h2>
선수이름:<input type="text" name="playername" >
<input type="button" value="팀1에 전송" onclick="goteam(0)"/>
<input type="button" value="팀2에 전송" onclick="goteam(1)"/>
<div>
<iframe name="iframe1" src="a23_iframe1.jsp" width="50%" height="40%"></iframe>
<iframe name="iframe2" src="a23_iframe2.jsp" width="50%" height="40%"></iframe>
</div>
<h2>9-2</h2>
<div id="container9"> </div>
<div id="container10"></div>
<iframe name="iframe3" src="a23_iframe3.jsp" width="50%" height="40%"></iframe>
<iframe name="iframe4" src="a23_iframe4.jsp" width="50%" height="40%"></iframe>
<!-- <input type="button" value="딸기" name="딸기" onclick="tofruit(0)"/> -->

<h3>9-2스앵님 풀이</h3>
<style>td{width:33%;height:33%;}</style>

<h2>두개의 장바구니에 담기</h2>
<select name="cart">
   <option value="cart1">장바구니1</option>
   <option value="cart2">장바구니2</option>
</select>
<table>
   <%
   String []fruits = {"사과","바나나","수박","오랜지","귤","딸기","키위","망고","체리"};
   for(int idx=0;idx<fruits.length;idx++){
      if(idx%3==0) out.print("<tr>");
      out.print("<td onclick='ch01(this.innerText)'>"+fruits[idx]+"</td>");
      if(idx%3==2) out.print("</tr>");
   }
   %>
</table>
<iframe name="cart01" src="z23_sub.jsp" height="200px"></iframe>
<iframe name="cart02" src="z24_sub.jsp" height="200px"></iframe>

<script type="text/javascript">  
function ch01(fruit){
   var chCart = document.querySelector("[name=cart]").value
   
   if(chCart=="cart1")cart01.document.body.innerHTML+=fruit+","
   if(chCart=="cart2")cart02.document.body.innerHTML+=fruit+","
}
</script>
</body>
<script type="text/javascript">

//[1단계:개념] 1. 날짜객체(Date)의 기능메서드(년/월/일, 요일, 시간/분,초)를 기술하세요
			/* 2) 특정날짜
 				Date("영문명날짜")
 				Date("영문명날짜,년도")
 				Date("영문명날짜,년도,시:분,초")
 				Date(년도,월index,날짜)
 				// 요일 월/화/수/목/금/토/일 - 0~6
 				// 월(month) JAN/FEB/MAR.. -0~11
 				Date(년도, 월index, 날짜)
 				Date(년도, 월index, 날짜,시,분,초)
 				Date(년도, 월index, 날짜,시,분,초,1/1000초) */
//[1단계:확인] 2. 현재날짜로 부터 2000시간 이후의 년도, 월, 일, 시간:분 형식으로 출력하세요.
 var div2 = document.body.querySelector("#container2")

var toDay = new Date()
toDay.setHours(toDay.getHours()+2000)
div2.innerHTML ="2번(현재기준 2000시간 후):"+ toDay.toLocaleString()+"<br>"

//[1단계:확인] 3. 기념일 계산 : 기준 년 [    ] 월[    ] 일[     ] 계산할 일수 : [select 100/500/1000] 이후 
//==> 선택했을 때, 해당 날짜를 출력
var div3 = document.body.querySelector("#container3")
var toDay3 = new Date()
div3.innerHTML +="현재날짜:"+ toDay3.toLocaleString()+"<br>"

function after(a){
	toDay3.setDate(toDay3.getDate()+a)
	div3.innerHTML +="3번(100일후):"+ toDay3.toLocaleString()+"<br>"
}
//[3단계:확인] 3. 기념일 계산 : 기준일 [    ] 계산할 일수 : [    ] [이전][이후]  
//기준일(type="date")은 default로 오늘 날짜가 년-월-일로 입력되고, 해당날짜를 입력 후, 버튼 클릭시, 기념을 계산할 날짜가 하단에 출력되게 하세요.

	

//[1단계:개념] 5. 전체 날짜 시간 기능메서드(형식 따른 내용) 기술하세요.
/*
 
 			FullYear, Month, Date, Day, Hours, Minutes, Seconds, Milliseconds
 			ex) getFullYear(), getHours(), setSeconds(25)
 		
 var div = document.body.querySelector("#container")
 var date7 = new Date()
 div.innerHTML+= date7.getFullYear()+"년"+(date7.getMonth()+1)+"월"+date7.getDate()+"일"
 div.innerHTML+= date7.getHours()+"시"+date7.getMinutes()+"분"+date7.getSeconds()+"초<br>"
 */
 
/* //[1단계:개념] 6. include 액션태그와 include 지시자와 기능적인 차이점을 기술하세요.
					
					1.jsp:include
			1)요청시간에 처리
			2) 별도의 파일로 요청 처리 흐름을 이동
			3) request 기본 객체나 jsp:param을 이용한 파라미터 전달
			4) 화면의 레이아웃의 일부분을 모듈화 할때, 주로 사용된다.
		2.<include 디렉티브>
			1) jsp파일을 자바 소스로 변환할 때 처리
			2) 현재 파일에 삽입시킴
			3) 페이지 내에 변수를 선언 후 , 변수에 값 저장
			4) 다수의 jsp페이지에서 공통으로 사용되는 변수를 지정하는 코드나 저작권 같은 문장을 포함한다.
					*/ 
//[1단계:확인] 7. include 액션태그를 활용하여 하위페이지 z21_sub.jsp에 월드컵 B조별리그 1위 팀명과 승점을 전송해보세요
								
//[1단계:확인] 8. include 지시자를 활용하여 메인헤서 최고 득점 선수 정보(국가, 이름, 점수) 정보를 form으로 입력하게 하고
//하위페이지 z22_sub.jsp에서 요청값을 처리하고, 다시 메인에서 입력된 요청변수를 출력하게 하세요
					

//[1단계:확인] 9. 2개 iframe을 활용하여 이름을 입력하게 하고 선택하게 하여 2개 팀에 선수를 나누어 출력하게 하세요.
function goteam(idx){
	var nameVal=document.querySelector("[name=playername]").value
	if(idx==0) iframe1.document.body.innerHTML+=nameVal
	if(idx==1) iframe2.document.querySelector("h2").innerText+=nameVal
}
					
//[2단계:확인] 9. select[장바구니1/장바구니2]로 선택하게 하고 3X3 과일명을 리스트하고, 해당 과일명을 클릭시마다 포함된 장바구니1(iframe),
//장바구니2(iframe)에 포함되게 하세요.
var div9 = document.body.querySelector("#container9")
var fruits = []
fruits.push({name1:"딸기",name2:"사과",name3:"바나나"})
fruits.push({name1:"키위",name2:"망고",name3:"용과"})
fruits.push({name1:"수박",name2:"오렌지",name3:"배"})

var show ="<table><tr><th>메뉴</th><th>메뉴</th><th>메뉴</th></tr>"
	fruits.forEach(function(fruit){
		show+="<tr><td onclick=input('"+fruit.name1+"')>"+fruit.name1+"</td>"
					+"<td onclick=input('"+fruit.name2+"')>"+fruit.name2+"</td>"
					+"<td onclick=input('"+fruit.name3+"')>"+fruit.name3+"</td></tr>"
			})
	show+="</table>"
	div9.innerHTML+=show

/* 	for(int idx=0; idx<fruits.length;idx++){
		if(idx%3==0) out.print("<tr>");
		out.print("<td onclick='ch01=(this.innerText)'")
		
	} */
	
	
var div10 = document.body.querySelector("#container10")
function input(fruit){
	show2="선택한 과일명:<input type='text' name='fruit' value='"+fruit+"' >"
			+"<input type='button' value='장바구니1' onclick='golist(0)'/>"
			+"<input type='button' value='장바구니2' onclick='golist(1)'/>"
	div10.innerHTML =show2
	var fruitname=fruit
	}
	function golist(idx){
		var nameVal=document.querySelector("[name=fruit]").value
		if(idx==0){
			iframe3.document.body.innerHTML+=nameVal
			div10.innerHTML="";
			alert("장바구니1에 담았습니다 감사합니다.")
			}
		if(idx==1){
			iframe4.document.body.innerHTML+=nameVal
			div10.innerHTML="";
			alert("장바구니2에 담았습니다 감사합니다.")
			}
		}
		
	


	
/* function goteam(idx){
		var nameVal=document.querySelector("[name=playername]").value
		if(idx==0) iframe3.document.body.innerHTML+=nameVal
		if(idx==1) iframe4.document.querySelector("h2").innerText+=nameVal
	} */

</script>
</html>