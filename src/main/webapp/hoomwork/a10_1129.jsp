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
	<h2>2번문제</h2>
		<div id="exp2"></div>
	<h2>3번문제</h2>
		<form>
			아이디:<input type="text" name="exp3id"  onkeyup="exp3(this)">
		</form>
		<span id="exp3">dd</span>
		
	<h2>3-2문제</h2>
	<form>
		아이디:<input type="text" name="exp4id" id="exp4id">
		<input type="submit" value="입력" onclick="exp4()">
	</form>
		<span id="exp4"></span>
	
	<h2>4번문제</h2>
		<h3>reviㄷㅈ있음</h3>
	
	



<h2>8번문제</h2>>
<% 
// 1.page범위 설정
			pageContext.setAttribute("id8","A0001");
		// 2.request 범위 설정
			request.setAttribute("name8","홍길동");
		// 3. session 범위 설정
			session.setAttribute("point8","1000점");
		// 4. application 범위설정
			application.setAttribute("div8","관리자");
			%>
			<table>
		<tr><th>페이지 범위 데이터(아이디)</th><td><%=pageContext.getAttribute("id8") %></td></tr>
		<tr><th>요청 범위 데이터(이름)</th><td><%=request.getAttribute("name8") %></td></tr>
		<tr><th>세션 범위 데이터(포인트)</th><td><%=session.getAttribute("point8") %></td></tr>
		<tr><th>어플리케이션 범위 데이터(권한)</th><td><%=application.getAttribute("div8") %></td></tr>
	</table>
</body>
<script type="text/javascript">

 
//[1단계:개념] 1. [js] 대입연산자를 통한 변수의 대입과 객체의 대입의 메모리 할당의 차이점을 예제를 통해서 기술하세요 
//일반 변수는 stack영역에 데이터를 바로 할당하기에 대입을 해도 다른 메모리를 사용한다.
//배열을 포함한 객체는 대입연산자에 의해 객체가 실제 저장하는 주소값을 할당하기에
//주소를 복사해서 할당했으므로, 동일한 객체를 참조하기에 이름이 다르지만
//동일한 객체를 바라보고있어서 한쪽에 데이터가 변경되는 다른쪽도 동일하게 처리된다.


//[1단계:확인] 2. [js] 선수1(소속,이름,득점)을 json 객체로 선언하여, 대입연산자로 선수2할당한 경우와 ...(spread) 키워드로 
//                  deep복사한 선수2를 만들어 득점을 증가했을 때, 차이를 출력하세요.
var div2 = document.querySelector('#exp2');
 var p01 = {team:"LG",name:"홍길동",point:5};
 var p02 = p01;
 var p03 = {...p01};
 p02.point=8;
 //JSON.Stringify(객체) : 객체를 문자열로 변환해서 활용
 		div2.innerHTML +="<h2>객체 복사 후</h2>"
		 div2.innerHTML += JSON.stringify(p01)+"<br>"
		 div2.innerHTML += JSON.stringify(p02)+"<br>"
		 div2.innerHTML += JSON.stringify(p03)+"<br>"
                  
//[1단계:확인] 3. [js] 회원 아이디를 입력하면 입력된 수를 옆에 표시하세요.
var div3 = document.querySelector("#exp3")
function exp3(obj){
	var exp03id =obj.value.length
		div3.innerHTML=exp03id
		 }
//[2단계:확인] 3. [js] 회원 아이디를 입력시 글자수 제한을 8~16로 처리하기로 했다. 입력시, 해당 범위에 맞지 않으면
//               하단에 입력범위는 8~16 표시하고 그외에는 입력가능으로 표시하게 하세요.
var div4 = document.querySelector("#exp4")

function exp4(){
	var exp4ids = document.getElementById('exp4id').value.length

		if(exp4ids<8 || exp4ids >16){
			alert("입력 범위는 8~16자입니다.")
		}else{
			div4.innerHTML=exp04ids
		}
		 }
						
//[2단계:확인] 4. [js] 팀인원등록[    ][등록] ==> 선수명을 ,단위로 구분해서 등록 버튼을 누르면 바로 밑에 테이블 형식으로 번호(1.2...)와 함께 이름이 출력되게 하세요

/* var playerName = document.getElementById('exp4id').value
var playerName2 = playerName.split(",") */
var div5 = document.querySelector("#exp5") 
function exp5(){
	var playerName = document.getElementById('exp5id').value
	var playerNames = playerName.split(",") 
	var show5 = "<table><tr><th>번호</th><th>선수명</th></tr>" 
	 playerNames.forEach(function(pname,idx){
		show+="<tr><td>"+(idx+1)+"</td><td>"+pname+"</td></tr>"
	}) 
	show5+="</table>"
	div5.innerHTML+=show5;
}



//[1단계:확인] 5. [jsp] 웹 서버단위로 초기 설정값을 설정할려고 한다. 처리 방식을 기술하세요
					/*
			web.xml파일을 XML.EDITER로 열어 아래와같은 명령어를 삽입한다.
					<context-param>
  	<description>로깅 여부</description>
  	<param-name>logEnagled</param-name>
  	<param-value>ture</param-value>
  </context-param>
  <context-param>
  	<description>디버깅 레벨</description>
  	<param-name>debugLevel</param-name>
  	<param-value>5</param-value>
  </context-param>
					*/
//[1단계:확인] 6. [jsp] 웹 서버에서 DB 주소, port, sid, 계정, 비번설정해서 DB를 접속할려고 한다. 처리하고, 호출하세요.
							
//[1단계:개념] 7. [jsp] 세션 scope의 4가지 범위를 예제와 함께 기술하세요.
<%-- 		 1. 네가지 영역
		1) page영역 : 하나의 jsp페이지를 처리할 때, 사용되는 영역
		2) request영역 : 하나의 http 요청을 처리할 때 사용되는 영역
		3) session영역 :  하나의 웹브라우저와 관련된 영역
		4) application영역 : 하나의 웹 어플리케이션 관련된 영역
		
		
		// 1.page범위 설정
			pageContext.setAttribute("page01","페이지 범위 데이터(page scope)");
		// 2.request 범위 설정
			request.setAttribute("request02","request범위데이터(request scope)");
		// 3. session 범위 설정
			session.setAttribute("session03","session 범위 데이터(session scope)");
		// 4. application 범위설정
			application.setAttribute("application04","application 범위 데이터(application scope)");

	<table>
		<tr><th>페이지 범위 데이터</th><td><%=pageContext.getAttribute("page01") %></td></tr>
		<tr><th>요청 범위 데이터</th><td><%=request.getAttribute("request02") %></td></tr>
		<tr><th>세션 범위 데이터</th><td><%=session.getAttribute("session03") %></td></tr>
		<tr><th>어플리케이션 범위 데이터</th><td><%=application.getAttribute("application04") %></td></tr>
	</table> --%>
		
//[1단계:확인] 8. [jsp] 회원을 아이디(page), 이름(request), 포인트(session), 권한(application) 범위로 설정하여, 출력하세요.
//              요청값 범위 확인, 세션값 범위 확인 클릭을 통해 해당 범위 데이터를 확인하세요.
				


//[3단계:확인] 9. [jsp] 로그인페이지(z10_login.jsp) 아이디와 패드워드를 입력해서,  z11_checkValid.jsp로 submit처리하여
//                  인증이되면 session범위로 id를  설정하여 z11_main.jsp에 @@님 로그인되었습니다. 출력하게하고,
//                  그렇지 않으면 request의 forward메서드로 다리 z10_login.jsp 화면에서 로그인 실폐하였습니다가 
//                  출력되게 하세요.

</script>
</html>