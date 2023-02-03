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

<%--
# 기본 객체와 영역
	0. 개요
		jsp변수/객체는 네가지 영역으로 나누어 해당 변수가 존재하는 범위를 지정하여 처리할 수 있다.
		화면 단위로만 유지하는 경우, 
		요청값이 있어 요청처리되는 범위까지 가지고 있는 경우,동일한 브라우저로 서버와 연결되어 있는 경우까지 유지되는 경우
		서버가 다시 시작되기까지 유지되는 범위로 처리할 수 있다.
		
		서버의 자원(메모리,cpu등)을 효율적으로 필요에 의해서 사용하기 위해 
		session scope를 사용한다.
		
	1. 네가지 영역
		1) page영역 : 하나의 jsp페이지를 처리할 때, 사용되는 영역
		2) request영역 : 하나의 http 요청을 처리할 때 사용되는 영역
			특정페이지에서 requst,response탑재시켜 forward
		3) session영역 :  하나의 웹브라우저와 관련된 영역
		 특정 메모리에 session 정보를 저장시켜 ps) 특정한 위치에 금고로 보관
		 	(서버와 클라이언트가 손을 잡고있는 동안만)
		4) application영역 : 하나의 웹 어플리케이션 관련된 영역 
		 	클라이언트 상관없이 서버에서 보관하는 정보
		 	ps) 서버가 없어지거나 재기동할떄 사라진다.
		 	
		==>DB영역 : 브라우저/서버 계속
			웹서버가 재기동 되더라도 DB서버에 데이터가 저장되어 있기 때문에 활용할 수 있다.
			-가장 넓은 영역의 지속적인 데이터를 처리할 떄는 DB버서에 데이터를 할당한다.
			ex) 로그인 정보, 회원 정보, 몇주전 구매한 정보 들..
			
	2. 기능메서드
		1) XXX.setAttribute("저장키","저장값/객체"):키로 저장
		1) XXX.getAttribute("저장키"):키로 호출
		1) XXX.removeAttribute("저장키"):저장된 키의 속성을 삭제
		
--%>
<%
	// 1.page범위 설정
		pageContext.setAttribute("page01","페이지 범위 데이터(page scope)");
	// 2.request 범위 설정
		request.setAttribute("request02","request범위데이터(request scope)");
	// 3. session 범위 설정
		session.setAttribute("session03","session 범위 데이터(session scope)");
	// 4. application 범위설정
		application.setAttribute("application04","application 범위 데이터(application scope)");
	
	
	
%>

<table>
	<tr><th>페이지 범위 데이터</th><td><%=pageContext.getAttribute("page01") %></td></tr>
	<tr><th>요청 범위 데이터</th><td><%=request.getAttribute("request02") %></td></tr>
	<tr><th>세션 범위 데이터</th><td><%=session.getAttribute("session03") %></td></tr>
	<tr><th>어플리케이션 범위 데이터</th><td><%=application.getAttribute("application04") %></td></tr>
</table>
 <a href = "a11_requestTest.jsp">request 테스트합니다.</a>
<a href = "a10_showScopePage.jsp">session 테스트합니다.</a>
<!-- 
	#session 범위
		1. 같은 브라우저에서 요청값을 forward하지않아도 있는 데이터 범위
		2. 서버vs브라우저가 연결관계에 있을 때, 유지된다.
			1) 브라우저를 다 닫아버리면 사라진다.
			2) 다른 브라우저로 로딩해도 사라진다.
			
  ex) a15_sessionExp.jsp 물건명 가격 갯수 구매처를 각 4가지 session범위로 처리하세요
 -->
 <%
	// 1.page범위 설정
		pageContext.setAttribute("pname","사과");
	// 2.request 범위 설정
		request.setAttribute("price",1000);
	// 3. session 범위 설정
		session.setAttribute("cnt",3);
	// 4. application 범위설정
		application.setAttribute("buyloc","마트");
%>
<table>
	<tr><th>물건명</th><td><%=pageContext.getAttribute("pname") %></td></tr>
	<tr><th>가격</th><td><%=request.getAttribute("price") %></td></tr>
	<tr><th>갯수</th><td><%=session.getAttribute("cnt") %></td></tr>
	<tr><th>구매처</th><td><%=application.getAttribute("buyloc") %></td></tr>
</table>
<a href= "a15_sessionExp.jsp">예제문제 session확인 이동</a>

</body>
<script type="text/javascript">
/*
 
*/
</script>
</html>