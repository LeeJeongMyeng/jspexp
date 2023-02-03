<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"    
    import="jspexp.vo.*" 
       import="jspexp.a13_database.vo.*"
   %>
<%request.setCharacterEncoding("utf-8");%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
 #jstl의 흐름제어
 	1. if- 조건이 true인경우 몸체 내용 실행
 		<c:if test="조건">
 		</c:if>

	2. choose when -otherwise
		<c:choose>
			<c:when test="${조건1}">
				처리내용1
			</c:when>
			<c:when test="${조건2}">
				처리내용2
			</c:when>
			<c:otherwise>
				기타처리 경우
			</c:otherwise>
		</c:choose>
 --%>
 
 
 <%--
	#el의 empty
	 1. null, ""(공백)을 다 포함하는 내용을 처리할ㄸ꺠 활용
	 2. not emptu : null이 아니고, ""(공백)이 아닐떄 
 --%>
 <form>
 	부서명: <input type="text" name="dname"/>
 	 <input type="submit"/>
 </form>
 	<c:if test="${not empty param.dname }">
 		<h2>등록한 부서명은 ${param.dname }</h2>
 	</c:if>
 
 
<%--ex) 국어 영어 점수를 입력해서 해당 점수가 있을 떄 만 총합이 출력되게 하세요 --%>
<form>
	국어:<input type="text" name="kor"/>
	영어:<input type="text" name="eng"/>
	수학:<input type="text" name="math"/>
	<input type="submit"/>	
</form>
 
 <c:if test="${not empty param.kor }">
 		<c:if test="${not empty param.eng }">
 				<c:if test="${not empty param.math }">
 						<h2>국어점수:${param.kor }</h2>
 						<h2>영어점수:${param.eng }</h2>
 						<h2>수학점수:${param.math }</h2>
 				</c:if>
 		</c:if>
 </c:if>
 
 <c:if test="${not empty param.kor && not empty param.eng && not empty param.math }">
 		<%-- jstl은 모두가 전역변수 개념 --%>
 		<c:set var="tot" value="${param.kor+param.eng+param.math }"></c:set>
 		<c:set var="avg" value="${tot/3 }"></c:set>
 				<h2>총합:${tot }</h2>
 </c:if>
 <h3>평가등급:
 <c:choose>
 	<c:when test="${avg>=90 }">A등급</c:when>
 	<c:when test="${avg>=80 }">B등급</c:when>
 	<c:when test="${avg>=70 }">C등급</c:when>
 	<c:when test="${avg>=60 }">D등급</c:when>
 	<c:when test="${avg>=50 }">E등급</c:when>
 	<c:otherwise>등급매길 수준이아님 넌;</c:otherwise>
 </c:choose>
 </h3>

 
 <%-- ex) 나이를 입력받아 성년/미성년/나이범위는 숫자로 0이상일 경우만하여 --%>
 <form>
 	<input type="text" name="age"/>
	<input type="submit" />
 </form>
 
 <c:if test="${not empty param.age }">
 	<c:set var="age" value="${param.age }"></c:set>
 	<h2>나이:${age }세
 	<c:choose>
 		<c:when test="${age >=19}"> 성인입니다.</c:when>
 		<c:when test="${age <19}"> 미성년자입니다.</c:when>
 	</c:choose>
 	</h2>
 </c:if>
 
 
<%

%>
</body>
<script>
/*

 */
</script>
</html>