<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
  import="java.util.*"  
  import="jspexp.vo.*"  
    import="jspexp.a13_database.*"    
    import="jspexp.a13_database.vo.*" 
      
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
	# application 기본 객체: 초기파라미터
		1. application은 서버(was) 단위로 데이터를 저장하고 호출되는 객체이다.
		2. 서버 정보를 설정 및 로딩
			1) 서버단위로 사용할 정보를 web.xml에서 설정하고,
			2) 모든 소스에서 해당 설정 내용을 호출하여 사용할 수 있다.
		3. 초기화 파라미터 설정(web.xml)
			<context-param>
				<descript>파라미터 설명(필수아님)
				<param-name>파라미터이름
				<param-value>파라미터값
			ps) 모든 소스에 특정한 값을 변경을 해야하는 경우..
			 파일 서버위치, 특정 네트워크를 통해 접속하는 서버의 경로,DB서버 정보
			 공통 유치에 키값으로 설정하고 그것만 변경하면 모든 소스를 자동적으로 적용되면
			 효과적으로 처리가 가능하다.
			 
			 
		4. application 기본 객체의 초기화 파라미터 관련기능
			1) getInitParameter(String name) : 이름이 name인 웹 어플리케이션
			 	초기화 파라미터의 값을 읽어온다. 존재하지않을 경우 null리턴
			2) getInitParameterName() : 웹 어플리케이션의 초기 파라미터의 이름 목록을
										리턴한다.
--%>
<%
// 서버단위로 데이터 저장

application.setAttribute("name01","홍길동(application)");
pageContext.setAttribute("name02","김길동(age)");
%>
<%--
	모든 브라우저를 닫고 주소만 복사하거나,
	다른 브라우저를 열고 주소만 복사하면
	pageContext는 출력되지않지만 application은 출력된다.
	==> application 범위: 서버가 재기동하지 않는 이상 유지된다.

 --%>
 <h2><%=application.getAttribute("name01") %></h2>
 <h2><%=pageContext.getAttribute("name02") %></h2>
 <a href="a05_show.jsp">페이지이동</a>
 
 <%--
 	a06_applicationSet.jsp
 	
  --%>
  
  <form>
  	아이디:<input type="text" name="Login_id" >
  	비밀번호:<input type="text" name="Login_pass" >
  		<input type="submit" value="로그인">
  </form>
  
  <%
  	String Login_id2 = request.getParameter("Login_id");
  application.setAttribute("Login_id",Login_id2);
  %>
<h2><%=application.getAttribute("Login_id") %></h2>  
  
  
  
</body>
<script type="text/javascript">
/*
 
*/
</script>
</html>