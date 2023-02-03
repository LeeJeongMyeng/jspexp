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
	#세션이란
		1.웹컨테이너에서 클라이언트의 정보를 보관할 때 사용된다.
		2. 오직 서버에서만 생성
		3. 클라이언트마다 세션이 생성
	# 세션 생성
		1.page지시자에서  session속성값을 true로 설정(default)
		2.session.setAttribute("키",등록객체)
		3. 속성 이용해서 클라이언트 관련 정보 저장
	#세션 종료/타임아웃
		1.session.invalidate()이용해서 세션 종료
			1)세션이 종료되면 기존에 생성된 세션이 삭제
			2) 이후 접근시 새로운 세션생성됨
		2. 마지막세션 사용 이후, 유효시간이 지나면 자동 종료
			1)web.xml파일에서 지정
				<session-config>
					<session-timeout>
						30
			2) session기본 객체의 setMaxInactiveInterval()메서드 이용해서 지정
				초단위 지정 
--%>
<%

	Person m = new Person("홍길동",25,"신림동");
	session.setAttribute("p01",m);
%>
<h2>세션생성완료</h2>
<h3>세선확인하러갑니다</h3>
</body>
<script type="text/javascript">

var h3=document.querySelector("h3");
h3.onclick=function(){
	location.href="a02_showSession.jsp"
}
<%--
 	a02_showSession.jsp
 	
 	Person p =(Person)session.getAttribute("p01")
 	<h2>세션값 확인</h2>
 	<h3>이름:<%=p.getName()%></h3>
 	<h3>이름:<%=p.getAge()%></h3>
 	<h3>이름:<%=p.getLoc()%></h3>
 
 --%>
</script>
</html>