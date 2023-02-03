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
<%--
 #controller단내용
		request.setAttribute("model01","홍길동");
		request.setAttribute("model02",25);
		request.setAttribute("dept",new Dept(10,"인사","서울강북"));
 --%>
<h2>MVC모델 2단계(모델데이터 처리)</h2>
<h3>이름:${model01 }</h3>
<h3>나이:${model02 }</h3>
<h3>부서번호:${dept.deptno }</h3>
<h3>부서이름:${dept.dname }</h3>
<h3>부서위치:${dept.loc }</h3>
</body>
<script>
/*

 */
</script>
</html>