<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
  import="java.util.*"  
  import="jspexp.vo.*"  
    import="jspexp.a13_database.*"    
    import="jspexp.a13_database.vo.*" 
      
    %>
  <%
  request.setCharacterEncoding("utf-8");
  %>
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

<%--
# 세션의 중단
	1. 세션은 3가지 형태로 중단을 처리할 수 있다.
		1) 명시적으로 중단 메서드에 의해서
			session().invalidate()
			ex)로그아웃하면 지금까지 설정된 세션을 중단 시켜준다.
		2) 시간을 설정해서 해당 시간 이후 중단 처리(초)
			session.setMaxInactiveInterval(1000)
			해당 시간동안 요청이 없을때 중단
		3) web.xml에서 서버단위로 설정
			서버단위에 분단위로 요청이 없을때 중단
				<session-config>
 					<session-timeout>30</session-timeout>
 				</session-config>
--%>
<h2 onclick="makeSess()">세션설정 (로그인 후 세션 생성)</h2>
<h2 onclick="delSess()">세션 삭제 (로그아웃)</h2>
<%
String sess01 =	(String)session.getAttribute("sess01");
	if(sess01!=null){
		out.print("<h3>세션생성됨:"+sess01+"</h3>");
	}else{
		out.print("<h3>세션생성됨:없음</h3>");
	}
%>
</body>
<script type="text/javascript">
function makeSess(){
	location.href="a06_Session.jsp?sess=y"
}
function delSess(){
	location.href="a06_Session.jsp?sess=n"
}
</script>
</html>