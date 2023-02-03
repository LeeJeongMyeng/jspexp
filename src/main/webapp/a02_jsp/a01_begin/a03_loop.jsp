<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%--
 #jsp에서 조건문과 반복문처리
 	1. 반복문 처리
 		1) 자바코드는 scriptlet에 넣고, 출력하는 부분은 expression에 넣어서 구분하여 처리
 		
 		2) 처리 순서
 			- 한단위 기본코드를 만든다.
 			- 출력할 부분을 index0으로 처리해본다.
 			- 출력내용을 위아래에 java코드는 <%%>로 감싸준다
 			- 반복문의 기본형식을 아래위로 넣는다.
 			-index부분을 변수로 처리해준다.
 --%>
 
<%
	String[] arry={"사과","바나나","딸기"};
	int[] arry2={1000,2000,3000};
	String[] ename={"홍길동","박길동","김길동","호랑이","토끼","사슴"};
	int[] empno={1,2,3,4,5,6};
	int[] deptno={1001,1002,1003,1004,1005,1006};
	
%>
	<%for(String fruit:arry){ %>
	<h2><%=fruit %></h2>
	<%} %>
	
	<%for(int idx=0; idx<arry2.length;idx++){ %>
	<h3><%=arry2[idx] %></h3>
	<%} %>
	
	<h3>물건의 정보</h3>
	<table style="border-collapse:collapse" border>
		<tr><th>no</th><th>물건명</th><th>가격</th></tr>
		<%for(int idx=0; idx<arry2.length;idx++){ %>
		<tr><td><%=idx+1 %></td><td><%=arry[idx] %></td><td><%=arry2[idx] %></td></tr>
		<%} %>
	
	
	
	</table>

<table style="border-collapse:collapse" border>
	<tr><th>사원명</th><th>사원번호</th><th>부서번호</th></tr>
		<%for(int idx=0; idx<empno.length;idx++){%>
		<tr><td><%=ename[idx] %></td><td><%=empno[idx] %></td><td><%=deptno[idx] %></td></tr>	
		<%} %>
</table>

</body>
</html>