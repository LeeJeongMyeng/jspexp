<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
  import="java.util.*"  
  import="jspexp.vo.*"  
    import="jspexp.a13_database.*"    
    import="jspexp.a13_database.vo.*" 
      
    %>
   <%request.setCharacterEncoding("utf-8");%>
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


<form>
	물건명<input type="text" name="name">
	가격<input type="text" name="price">
	<input type="submit" value="구매">
</form>


<div style="border:1px solid red;">
   <%@ include file="a08_sub.jsp" %>
</div>
<h2>선언된 변수 호출</h2>
<h3><%=name %></h3>
<h3><%=price %></h3>

<%
// ex) a07_main.jsp로 메인페이지로 선언하고
//      a08_sub.jsp
%>
</body>
<script type="text/javascript">
/*
 
*/
</script>
</html>