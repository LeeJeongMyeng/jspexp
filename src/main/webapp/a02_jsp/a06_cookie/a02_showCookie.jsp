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
<div id="container"></div>
<%-- 
#
--%>
<h2>쿠키값 보기</h2>
<%
//a02_showCookie.jsp
   Cookie [] cookies = request.getCookies();
   for(Cookie c:cookies){
      if(!c.getName().equals("JSESSIONID"))
      out.print("<h2>"+c.getName()+":"+c.getValue()+"</h2>");
   }
%>
<%--
JSESSIONID는 쿠키의 default 


--%>
</body>
<script type="text/javascript">
/*

 */

var div = document.querySelector("#container")
div.innerHTML+="<br>"
</script>
</html>