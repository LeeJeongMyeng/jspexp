<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"    
    import="jspexp.vo.*" 
       import="jspexp.a13_database.vo.*"
   %>
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
# useBean을 활용한 객체 생성
1. jsp에서는 action 태그의 한 형식으로 useBean을 객체를 생성하여 사용하는데 활용한다.
2. 객체선언과 생성
	<jsp:useBean id="참조명" class="패키지.클래스명" scope="세션범위"/>
3. 호출
	1) <jsp.getProperty name="참조명" property="프로퍼티명"/>
		 ${참조명.property명}
	2) <jsp.getProperty name="참조명" property="프로퍼티명" value="할당할데이터"/>
		 ${참조명.setXXXX('할당데이터')}
 --%>
<jsp:useBean id ="pl01" class="jspexp.a13_database.vo.Dept"/>
<jsp:setProperty property="deptno" name="pl01" value="20"/>
<jsp:setProperty property="dname" name="pl01" value="회계"/>
<jsp:setProperty property="loc" name="pl01" value="서울"/>
<h2>부서명:<jsp:getProperty property="dname" name="pl01"/></h2>
<h2>부서번호:<jsp:getProperty property="deptno" name="pl01"/></h2>
<h2>위치:<jsp:getProperty property="loc" name="pl01"/></h2>


<jsp:useBean id ="pl02" class="jspexp.a13_database.vo.Dept"/>
${pl02.setDeptno("20") }
${pl02.setDname("생산") }
${pl02.setLoc("울산") }
<h2>부서명:${pl02.dname}</h2>
<h2>부서번호:${pl02.deptno}</h2>
<h2>위치:${pl02.loc}</h2>

<jsp:useBean id ="pl03" class="jspexp.a13_database.vo.Dept"/>
<jsp:setProperty property="deptno" name="pl03" value="20"/>
<jsp:setProperty property="dname" name="pl03" value="회계"/>
<jsp:setProperty property="loc" name="pl03" value="서울"/>
</body>
<script>


</script>
</html>