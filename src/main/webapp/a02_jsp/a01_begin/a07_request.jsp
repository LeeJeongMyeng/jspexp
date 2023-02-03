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
	#요청객체 request
		1. jsp는 servlet이라는 java로 감싸는 코드이기에 내장된 객체의 참조변수를 활용하는 경우가 많다.
		2. request : HttpServletRequest의 참조 변수의 내용이다.
		3. 요청 객체는 요청값을 처리할 때, 주로 사용한다.
			1) 요청값 : client를 통해서 server로 전송된 데이터를 말한다.
				-query string(key=vlaue), 쿠기값, 기타 브라우저에서 서버로 전달 header정보 등이 있다.
		4.요청값(query string처리내용)
			1) 기본 요청값 처리
				request.getParameter("요청값")
		?name=홍길동&num01=25&num02=30
		
		ex) pname,price,cnt로 query string으로 전달하고
			화면에 h3로 물건명: @@@ 가격:@@@ 갯수@@@가 출력되도록하세요
			
			2) 요청값을 query string을 기반으로
				-값이 없으면 null(객체 메모리없음)
				-key=value형식이 있으면 문자열로 데이터를 가져온다.
 --%>
 	<h1>요청값 연습</h1>
 	<h2><%=request.getParameter("name") %></h2>
 	<h2><%=request.getParameter("num01") %></h2>
 	<h2><%=request.getParameter("num02") %></h2>
 	

 	<h3>물건명<%=request.getParameter("pname") %></h3>
 	<h3>가격:<%=request.getParameter("price") %>원</h3>
 	<h3>갯수:<%=request.getParameter("cnt") %>개</h3>
 	<h3>가격:<%=request.getParameter("price")+request.getParameter("cnt") %>원</h3>
</body>
<script type="text/javascript">
/*
 
*/
</script>
</html>