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
<script>
/*
 
 */
</script>
</head>
<body>

<%--
# DB연동하여 출력된 데이터 확인하기
 --%>
 <jsp:useBean id="dao" class="jspexp.a13_database.A02_EmpDao"/>
 <jsp:useBean id="sch" class="jspexp.a13_database.vo.Emp"/>

<table>
	<tr><th>사원번호</th><th>사원명</th><th>사원직책</th><th>관리자번호</th>
	<th>입사일</th><th>급여</th><th>부서번호</th></tr>
	<c:forEach var="emp" items="${dao.getEmpSch() }">
	<tr><td>${emp.empno }</td><td>${emp.ename }</td>
	    <td>${emp.job} </td><td>${emp.mgr }</td>
	    <td><fmt:formatDate value="${emp.hiredate}"/></td>
	    <td><fmt:formatNumber value="${emp.sal }"/></td><td>${emp.deptno }</td></tr>
	</c:forEach>
</table>

</body>
<script>
/*

 */
</script>
</html>