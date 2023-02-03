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
<script>

function regTab(){
	var data = document.querySelector("[name=regMem]").value
	var players=data.split(",")
	var shHTML = "<table><tr><th>번호</th><th>이름</th></tr>"
	players.forEach(function(player,idx){
		shHTML+="<tr><td>"+(idx+1)+"</td><td>"+player+"</td></tr>"
	})
	shHTML+="</table>"
	document.querySelector("#show").innerHTML=shHTML;
}

</script>
<h2>4번 문제 리뷰</h2>
<form>
 <input type="text" name="regMem"/>
 <input type="button" value="등록" onclick="regTab()"/>
 </form>
 <div id = "show"></div>
 
 
 <h2>8번문제 리뷰(DB정보)</h2>
 <h2>주소:<%=application. getInitParameter("ip") %></h2>
 <h2>포트:<%=application. getInitParameter("port") %></h2>
 <h2>DB명:<%=application. getInitParameter("sid") %></h2>
 <h2>계정:<%=application. getInitParameter("username") %></h2>
 <h2>패스워드:<%=application. getInitParameter("pass") %></h2>
 
</body>
<script type="text/javascript">

//[2단계:확인] 4. [js] 팀인원등록[    ][등록] ==> 선수명을 ,단위로 구분해서 등록 버튼을 누르면 바로 밑에 테이블 형식으로 번호(1.2...)와 함께 이름이 출력되게 하세요

//[1단계:확인] 8. [jsp] 회원을 아이디(page), 이름(request), 포인트(session), 권한(application) 범위로 설정하여, 출력하세요.
//              요청값 범위 확인, 세션값 범위 확인 클릭을 통해 해당 범위 데이터를 확인하세요.

//[3단계:확인] 9. [jsp] 로그인페이지(z10_login.jsp) 아이디와 패드워드를 입력해서,  z11_checkValid.jsp로 submit처리하여
//                  인증이되면 session범위로 id를  설정하여 z11_main.jsp에 @@님 로그인되었습니다. 출력하게하고,
//                  그렇지 않으면 request의 forward메서드로 다리 z10_login.jsp 화면에서 로그인 실폐하였습니다가 
//                  출력되게 하세요.
<%--
 1. 업무 처리 flow 확인
     로그인페이지 아이디 패스워드 입력 ==> 인증 여부에 따라서 ==> 로그인 페이지/메인페이지
 
 2. 개발 순서
 	1) 로그인 화면 화면구성(z10_login.jsp)
 		4번항목을 같이 처리해도 무방하다.
 		<form action="z11_checkValid.jsp">
 	2) form action 요청페이지 호출 설정(유효성 check-js)
 	3) 요청값을 받은 내용을 처리(z11_checkValid.jsp)
 		-DB나 조건에 의해 인증되었을 떄, 세션값 설정 z11_main.jsp 이동처리
 		-인증되지 않았을 때, forward로 z10_login.jsp이동
 		if(id.equals("himan")&& pass.equals("7777")){
 			session.setAttribute("id",id);
 			response.sendRedirect("z12_main.jsp");
 		}else{
 			//request.setAttribute()로 처리해도 되지만,
 			//request.getParameter("id")로 처리가 되기에 생략가능
 			request.getRequestDispather("z10_login.jsp").forward(request,response);
 		}
 	4) 우효화 하지 않는 id에 대한 로그인화면 요청값 처리(z10_login.jsp)
 		-request 객체로 요청값 확인 및 인증되지 않은 경고창 처리
 		String id = request.getParameter("id")
 		boolean isInvalid = false;
 		if(id!=null){
 			isInvalid =true;
 		}
 		
 		js
 		var isInvalid=<%=isInvalid%>;
 		if(isInvalid) alert("<%=id%>는 인증된 계정이 아닙니다.);
 	5) 메인화면에서 session출력 z11_main.jsp
 		<h2><%=session.getAttribute("id")%>님 로그인 중입니다.</h2>
 --%>
</script>
</html>