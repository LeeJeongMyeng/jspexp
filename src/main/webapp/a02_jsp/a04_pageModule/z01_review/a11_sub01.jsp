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

	<h2>포함된 페이지</h2>
	물건명:${param.name}
	가격:${param.price}
	갯수:${param.cnt}

<%

%>
</body>
<script>
/*

 */
</script>
</html>