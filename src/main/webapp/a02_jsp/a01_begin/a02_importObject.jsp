<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
	import="jspexp.a13_database.vo.*" 

    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style type="text/css">

	table{border-collapse:collapse;}
</style>

</head>
<body>
<%
	Person p01 = new Person("홍길동",25,"서울");
	Product p02 = new Product("사과",25,3000);
%>

	<table width="30%" border>
		<tr><th>이름</th><td><%=p01.getName() %></td></tr>
		<tr><th>나이</th><td><%=p01.getAge() %></td></tr>
		<tr><th>사는곳</th><td><%=p01.getLoc() %></td></tr>
	</table>
	<table>
		<tr><th>물건명</th><td><%=p02.getProduct()%></td></tr>
		<tr><th>갯수</th><td><%=p02.getCnt() %></td></tr>
		<tr><th>가격</th><td><%=p02.getPrice() %></td></tr>
		<tr><td colspan="2"><%=p02.getCnt()*p02.getPrice()%></td></tr>
	</table>
</body>
</html>