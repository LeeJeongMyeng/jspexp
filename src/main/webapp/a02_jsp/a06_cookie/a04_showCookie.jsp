a01_makeCookie.jsp<%@ page language="java" contentType="text/html; charset=UTF-8"
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
<h2 align="center">터프쿠키확인(장바구니 담긴 물건)</h2>

<%
	Cookie[] cookies = request.getCookies();


%>

<table>
	<tr><th>키</th><th>값</th></tr>
		<%for(Cookie ck:cookies){
			if(!ck.getName().equals("JSESSIONID")){
		%>
			<tr><td><%=ck.getName() %></td><td><%=ck.getValue() %></td></tr>
		<%} }%>
</table>
<%--
#
--%>
</body>
<script type="text/javascript">
/*
 
*/
</script>
</html>