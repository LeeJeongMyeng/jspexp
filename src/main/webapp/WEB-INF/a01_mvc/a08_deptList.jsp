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


<h2>부서정보 리스트 숙제</h2>
<form method="post">
 부서이름:<input type="text" name="dname" value="${param.dname}"/>
 위치:<input type="text" name="loc" value="${param.loc}"/>
 <input type="submit" value="검색"/>
 </form>
 <table>
 	<tr>
 	<th>부서번호</th>
 	<th>부서이름</th>
 	<th>위치</th>
 	</tr>
 	<c:forEach var="dept" items="${deptList }">
 	<tr>
 	<td>${dept.deptno }</td>
 	<td>${dept.dname }</td>
 	<td>${dept.loc }</td>
 	</tr>
 	</c:forEach>
 	
 </table>


</body>
<script>
/*

 */
</script>
</html>