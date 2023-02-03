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

<table>
	<tr><th>물건명</th><td><%=pageContext.getAttribute("pname") %></td></tr>
	<tr><th>가격</th><td><%=request.getAttribute("price") %></td></tr>
	<tr><th>갯수</th><td><%=session.getAttribute("cnt") %></td></tr>
	<tr><th>구매처</th><td><%=application.getAttribute("buyloc") %></td></tr>
</table>
</body>
<script type="text/javascript">
/*
 
*/
</script>
</html>