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
	#forward처리
		1. 특정한 페이지에서 request와 response객체와 함께
			대상 페이지로 전송하는 기능을 하는 액션 스크립트
		2. 다음 페이지에서 요청값을 받을 수 있다.
			<h2><%=pageContext.getAttribute("page_name");%>
			<h2><%=request.getAttribute("req_name");%>
		3. 요청값을 받아서 중간 페이지에서 분기 처리할 때, 주로 활용 된다.
			1) 로그인 화면 ==> 중간페이지 ==> 다시 로그인이냐? 페인페이지냐
--%>

<%
	pageContext.setAttribute("page_name","홍길동");
	request.setAttribute("req_name", "마길동");
%>
<jsp:forward page ="a17_goPage.jsp"/>

<%--
	ex) a18_forwardTest.jsp?id=himan 처리하여
		요청값이 himan일 때는 로그인 성공 페이지 a19_main.jsp로 전송 그 외는 20_error.jsp로 로그인 실패 페이지로 이동하여 출력
 --%>
 
 
 
</body>
<script type="text/javascript">
/*
 
*/
</script>
</html>