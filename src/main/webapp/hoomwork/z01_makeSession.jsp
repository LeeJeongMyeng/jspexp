<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"    
    import="jspexp.vo.*" 
       import="jspexp.a13_database.vo.*"
   %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="/a00_com/a01_common.css" rel="stylesheet">
<script>
/*
 
 */
</script>
</head>
<body>
<%
String sess = request.getParameter("sess");
if(sess!=null){
	 if(sess.equals("y")){
		 session.setAttribute("sess01","hi! session");
	 }else if(sess.equals("n")){
		 //session.invalidate();
		 session.removeAttribute("sess01");
	 }
 	response.sendRedirect("a18_1209.jsp");
 }
%>		

</body>
<script>
/*

 */
</script>
</html>