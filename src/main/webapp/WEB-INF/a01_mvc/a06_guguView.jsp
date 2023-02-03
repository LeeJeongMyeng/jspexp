<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"    
    import="jspexp.vo.*" 
       import="jspexp.a13_database.*"
   %>
<%request.setCharacterEncoding("utf-8");%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:requestEncoding value="utf-8"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="/a00_com/a01_common.css" rel="stylesheet">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script>
/*
 
 */
</script>
</head>
<body>

	<form action="/gugu.do">
		단수<select name=num01>
		<c:forEach var="grade" begin="2" end="9">
			<option>${grade }</option>
		</c:forEach>
			
		 </select>
		카운트<select name=num02> 
			<c:forEach var="count" begin="1" end="9">
			<option>${count }</option>
		</c:forEach>
		</select>
		<input type="submit" value="계산"/>
	</form>

	<h2>${result}</h2>
</body>
<script>
/*

 */
</script>
</html>