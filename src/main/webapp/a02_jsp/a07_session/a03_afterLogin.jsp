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
	Member m = new Member("A0001","홍길동",1000,"서울목동");
	session.setAttribute("m01",m);
%>
<h2>세션생성완료</h2>
<h3>세선확인하러갑니다</h3>

<%--
#
--%>
</body>
<script type="text/javascript">
var h3=document.querySelector("h3");
h3.onclick=function(){
	location.href="a04_sessionMenu.jsp"
}
</script>
</html>