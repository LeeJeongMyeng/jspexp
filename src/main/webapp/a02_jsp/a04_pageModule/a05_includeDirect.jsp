<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
   import="java.util.*"
    import="jspexp.a13_database.*"    
    import="jspexp.a13_database.vo.*"
    import="jspexp.vo.*"
   %>
<%request.setCharacterEncoding("utf-8");%>
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
# include 디렉티브
1. 코드 차원에서 포함
2. 기본 형식
   <%@ include file="포함할 파일" ?
3. 활용
   - 모든 jsp 페이지에서 사용되는 변수 지정
   - 저장권 표시와 같은 간단하면서 모든페이지에 중복되는 문장
 --%>
<h2>인클루드 디렉티브 연습</h2>
<div style="border:1px solid red;">
   <%@ include file="a06_subPage.jsp" %>
</div>
<h2>선언된 변수 호출</h2>
<h3><%=name %></h3>
<h3><%=age %></h3>
<h3><%=loc %></h3>
<%
// ex) a07_main.jsp로 메인페이지로 선언하고
//      a08_sub.jsp
%>
</body>
<script type="text/javascript">
/*

 */
</script>
</html>