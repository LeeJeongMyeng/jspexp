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

<%
Emp e =(Emp)session.getAttribute("e01");
boolean hasSess= e!=null;
if(hasSess){
	if(e.getDeptno()==10||e.getDeptno()==20||e.getDeptno()==30||e.getDeptno()==40){
%>
 	<h2>세션값 확인</h2>
 	<h3>이름:<%=e.getEname()%></h3>
 	<h3>부서번호:<%=e.getDeptno()%></h3>
 
<%}else{%>
	<h1>접근불가!</h1>
	<%} }%>
</body>
<script type="text/javascript">
var hasSess = <%=hasSess%>
if(!hasSess){
		alert("세션값이 없습니다. 설정하러 이동합니다.")
		location.href="a17_1208.jsp"
}
</script>
</html>