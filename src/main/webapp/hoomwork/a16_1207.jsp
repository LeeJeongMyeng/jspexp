<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
  import="java.util.*"  
  import="jspexp.vo.*"  
    import="jspexp.a13_database.*"    
    import="jspexp.a13_database.vo.*" 
      
    %>
  <%
  request.setCharacterEncoding("utf-8");
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
<h2>6번</h2>
<form>
 날짜<input type="text" name="day"/>
 1팀<input type="text" name="team1"/>
 2팀<input type="text" name="team2"/>
 결과<input type="text" name="result"/>
 	<input type="button" value="입력" onclick="result1()">
 </form>
 
 <table id="tb06">
 	<tr><th>날짜</th><th>1팀</th><th>2팀</th><th>결과</th></tr>
 	<tbody>
 	
 	</tbody>
 </table>

<h2>7번</h2>
<form>
	<select name="me">
		<option value="가위">가위
		<option value="바위">바위
		<option value="보">보
	</select>
	<input type="button" value="갈바" onclick="rkfqk()">
</form>
<div id="result2"></div>




<h2>8번</h2>
<div id="result3"></div>
<select name="exp8" onchange="exp08(this.value)">
	<option value="+">+
	<option value="-">-
	<option value="*">*
	<option value="/">/
</select>
<div id="result4"></div>=<div id="result5"></div>

</body>
<script type="text/javascript">
/*
 2022-12-07
[1단계:개념] 1. 쿠키값의 생명주기(생성,변경,소멸)을 서버와 클라이언트 위치와 관계에서 코드와 함께 설명하세요.
Cookie c1 = new Cookie("c01","himan"); //변경도 동일함
c.setMaxAge(0); //쿠키의 생존주기를 0으로설정

[1단계:확인] 2. 쿠키값(coffee/americano)로 설정 후, 페이지 링크로 설정된 쿠키값을 리스트하세요.
Cookie c1 = new Cookie("coffee","americano");
//2. 쿠키 클라이언트에 보내기 
response.addCookie(c1);
%>
<h2>쿠키 확인</h2>
<a href="z16_showCookie.jsp">쿠키보러가기</a>
h2>쿠키값 보기</h2>

//z16_showCookie.jsp
   Cookie [] cookies = request.getCookies();
   for(Cookie c:cookies){
      if(!c.getName().equals("JSESSIONID"))
      out.print("<h2>"+c.getName()+":"+c.getValue()+"</h2>");
   }


[1단계:확인] 3. 쿠키값(coffee/vanilla)로 변경후, 페이지 링크로 설정된 쿠키값을 리스트하세요.
Cookie cks[] = request.getCookies();
for(Cookie c:cks){
	if(c.getName().equals("coffee")){
		c.setValue("vanilla");
		response.addCookie(c);
	}
}
<a href="z16_showCookie.jsp">쿠키값 확인</a>
[1단계:확인] 4. 쿠키값(커피) 삭제 후,  페이지 링크로 설정된 쿠키값을 리스트하세요.

Cookie cks[] = request.getCookies();
for(Cookie c:cks){
	if(c.getName().equals("coffee")){
		c.setMaxAge(0); //쿠키의 생존주기를 0으로설정
		response.addCookie(c);
	}
}
	
		
		
[1단계:개념] 5. form 요소객체의 주요 속성을 기술하세요.
1. form하위 요소 객체의 특징
	1) 선택자:name,id
		document.querySelector("[name=속성값]")
		document.querySelector("#아이디명")
	2) 속성값qusrud:value를 통해서 처리..
		dom01.value
		dom01.value="할당처리"
					
[1단계:확인] 6. 오늘 월드컵 대전 팀과 결과를 날짜/팀1/팀2/결과를 입력해서 테이블로 추가리스트 되게 처리하세요.*/

function result1(){
		var day = document.querySelector("[name=day]").value
		var team1 = document.querySelector("[name=team1]").value
		var team2 = document.querySelector("[name=team2]").value
		var result = document.querySelector("[name=result]").value
		
		var tb = document.querySelector("#tb06 tbody")
		
		tb.innerHTML+="<tr><td>"+day+"</td><td>"+team1+"</td><td>"+team2+"</td><td>"+result+"</td></tr>"
		
	}

	



//[1단계:확인] 7. 가위/바위/보를 select로 선택하게 하고, 컴퓨터와 play를 클릭해서,
//나의 선택과 컴퓨터 선택 결과가 나와서 승/무/패가 출력되게 하세요.
	
	
	

	
	
	
function rkfqk(){
	var result2 = document.querySelector("#result2")
	var me = document.querySelector("[name=me]").value

	
	
	
	
	var com = Math.floor(Math.random()*3+1)
	if(com==1){var com1="가위"}
	else if(com==2){var com1="바위"}
	else if(com==3){var com1="보"}
	

	if(me=="가위" && com1 =="보"){var rr="승";}
	else if(me=="가위" && com1 =="가위"){var rr="무";}
	else if(me=="가위" && com1 =="바위"){var rr="패";}
	else if(me=="바위" && com1 =="가위"){var rr="승";}
	else if(me=="바위" && com1 =="바위"){var rr="무";}
	else if(me=="바위" && com1 =="보"){var rr="패";}
	else if(me=="보" && com1 =="바위"){var rr="승";}
	else if(me=="보" && com1 =="보"){var rr="무";}
	else if(me=="보" && com1 =="가위"){var rr="패";}
	
	result2.innerText="나:"+me+" vs 컴:"+com1+"="+rr
	

	}


//[1단계:확인] 8. [@@][select +,-,*,/][@@] [결과확인] 임의의 숫자 두개가 나오고
//연산자의 선택하고 결과확인에 따라 연산처리결과가 하단에 h2로 출력되게 하세요
var num01 = Math.floor(Math.random()*101)
var num02 = Math.floor(Math.random()*101)
var result3 = document.querySelector("#result3")
result3.innerText = num01
var result4 = document.querySelector("#result4")
result4.innerText = num02

function exp08(val){
	var result5 = document.querySelector("#result5")

	var show = eval(num01+val+num02)
	result5.innerHTML = show
}



</script>
</html>