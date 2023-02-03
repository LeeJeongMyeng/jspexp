<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		<%-- jsp의 주석 --%>
		<%
			//scriptlet
		String name="홍길동"; //java
		int age = 25;
		String loc="서울";
		
		String pname="사과";
		int pcnt=3;
		int pprice=1000;
		
		int totpay = pcnt*pprice;
		%>
		<%-- 표현처리 --%>
		<h2>이름:<%=name%></h2>
		<h2>나이:<%=age%></h2>
		<h2>사는곳:<%=loc%></h2>

<table width="40%" style="border-collapse:collapse" border>
	<tr><th>이름</th><th>가격</th><th>개수</th></tr>
	<tr><td><%=pname%></td><td><%=pcnt%></td><td><%=pprice%></td></tr>
	<tr><td colspan="3"><%=totpay%></td></tr>
</table>

</body>
</html>