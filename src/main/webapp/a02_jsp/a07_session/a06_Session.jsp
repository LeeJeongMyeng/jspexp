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
	String sess = request.getParameter("sess");
	String ses = request.getParameter("ses");
 if(sess!=null){
	 if(sess.equals("y")){
		 session.setAttribute("sess01","hi! session");
	 }else if(sess.equals("n")){
		 //session.invalidate();
		 session.removeAttribute("sess01");
	 }
 	response.sendRedirect("a05_stopSession.jsp");
 }
 
 if(ses!=null){
	 if(ses=="n"){
		 session.removeAttribute("sess01");
	 }
	 response.sendRedirect("a07_sessionExp.jsp");
 }
 
%>

<%--
#
--%>
</body>
<script type="text/javascript">
/*
 
*/
</script>
</html>