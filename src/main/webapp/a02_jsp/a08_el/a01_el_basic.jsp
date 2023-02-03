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
# Exprossion Language
	1. jsp에서 사용가능한 새로운 스크립트 언어
	2. el의 주요기능
		1)jsp의 4가지 기본 객체가 제공하는 영역의 속성을 가진 변수로 사용
		2) 집합 객체에 대한 접근 방법 제공
		3) 수치연산, 관계 연산, 논리연산자 제공
		4) 자바 클래스의 메서드 호출 기능 제공
		5) 표현 언어만의 기본 객체 제공
	3. 간단한 구문 때문에 표현식 대신 사용
		-el과 jstl로 인해서 script(expression, scriptlet)를 사용하지 않을 수도 있다.
--%>
<%
	//페이지 범위 변수 선언
		pageContext.setAttribute("num01",25);
		pageContext.setAttribute("num02",35);
		pageContext.setAttribute("name","홍길동");
		session.setAttribute("sess01", "안녕하세요");
%>	
	<h2>숫자1:${num01}</h2>
	<h2>숫자1:${num02}</h2>
	<h2>합산:${num01+num02}</h2>
	<h2>이름1:${name}</h2>
	<h2>이름2:${name2}</h2>
	<h2>세션값:${sess01}</h2>
	<a href="a02_el_basic2.jsp">세션값 확인하러가기?</a>
	
	<%--request객체로 물건명 가격 갯수를 할당, el로 호출하되 총계까지 출력 --%>
	<%
		request.setAttribute("pname", "사과");
		request.setAttribute("price", 3000);
		request.setAttribute("cnt", 4);
		
	%>
	<h2>물건명:${pname }</h2>
	<h2>가격:${price }</h2>
	<h2>개수:${cnt }</h2>
	<h2>총:${cnt*price }</h2>
	<h2>등급:${cnt*price>10000?'MVP':'일반고객' }</h2>
</body>
<script type="text/javascript">
/*
 
*/
</script>
</html>