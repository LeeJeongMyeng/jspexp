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

<%-- a12_requestTest.jsp
  0. 현재페이지에서 page scope 데이터를 이름으로 설정하고,
             request scope 데이터는 나이로설정한다.
             요청 페이지 이동으로 a href="a13_requestForward.jsp"
  1. a13_requestForward.jsp
   		해당 페이지에서는 page scope데이터를 이름으로 설정하고,
   		request scope데이터를 나이로 설정한다.
   		request forward 처리
   2. a14_showSessionView.jsp
   		page scope데이터인 이름과  request scope데이터인 나이를 출력하세요
   		
--%>
<%
	pageContext.setAttribute("name","홍길동");
	request.setAttribute("age",28);
%>
<h2>페이지 범위 데이터:<%=pageContext.getAttribute("name") %></h2>
<h2>페이지 범위 데이터:<%=request.getAttribute("age") %></h2>
<a href = "a13_requestForward.jsp">a13 페이지이동</a>
</body>
<script type="text/javascript">
/*
 
*/
</script>
</html>