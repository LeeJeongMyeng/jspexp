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
<jsp:useBean id="dao" class="jspexp.a13_database.A06_PareparedDao"/>
<jsp:useBean id="reMem" class="jspexp.a13_database.vo.Member"/>
<jsp:setProperty property="*" name="reMem"/>
<body>   
   <c:if test="${not empty dao.login(reMem)}">
      <c:set var="mem" scope="session" value="${dao.login(mem)}"/>   
      <%--삭제할때는 session.removeAttribute("mem")
      <c: remove var="mem" scope="session"/>
      		session전체삭제 : session.invalidate()
       --%>
   </c:if>

</body>
<script>
var isFail='${mem.id}'
	   if(isFail==''){
	      alert("로그인 실패\n로그인 페이지 이동")
	      location.href="a01_login.jsp"
	   }else if(isFail!=''){
	      alert("로그인 성공\n메인페이지이동")
	      location.href="a03_checkSession.jsp"
	   }

</script>
</html>