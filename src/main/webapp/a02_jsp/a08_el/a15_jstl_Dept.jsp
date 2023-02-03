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
<jsp:useBean id="Ddao" class="jspexp.a13_database.A06_PareparedDao"/>
<jsp:useBean id="Dsch" class="jspexp.a13_database.vo.Dept"/>
<jsp:setProperty property="*" name="Dsch"/>
<c:if test="${empty param.dname }">${Dsch.setDname("")}</c:if>
<c:if test="${empty param.loc }">${Dsch.setLoc("")}</c:if>

<h2>부서정보확인</h2>
	<form method="post">
		<input type="text" name="dname" value="${sch.dname }"/>
		<input type="text" name="loc" value="${sch.loc }"/>
		<input type="submit" value="검색">
	</form>
	
	<table>
		<tr><th>부서번호</th><th>부서명</th><th>위치</th></tr>
		<c:forEach var="dept" items="${Ddao.getDeptList(Dsch) }">
		<tr><td>${dept.deptno }</td><td>${dept.dname }</td><td>${dept.loc }</td></tr>
		</c:forEach>
	</table>
	
<%--
	#처리순서
		1. 기본화면 구성
			1) 검색form
			2) 데이터리스트 테이블
		2. 처리할 useBean선언
			1)dao
			2)VO
		3. 요청값에 대한 default설정 null=>""
		4. 반복문 jstl, el통해서 데이터 출력
		 

 --%>
<%

%>
</body>
<script>

</script>
</html>