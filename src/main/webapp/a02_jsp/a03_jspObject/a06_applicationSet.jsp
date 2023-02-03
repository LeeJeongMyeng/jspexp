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
 ex) 판매물품명:@@@(page범위)
 	 장바구니 담기:@@@(application 범위)
 	 장가부기 확인 클릭 ==> 클릭
 	 
 	 
--%>
<form>
	판매물품명<input type="text" value="" name="prod01">
	장바구니 담기<input type="text" value="" name="prod02">
	<input type="submit" value="담기">
</form>
<%
// 서버단위로 데이터 저장
String prod01 = request.getParameter("prod01");
application.setAttribute("prod1",prod01);
pageContext.setAttribute("prod2","[name=prod02]");
%>
<a href="a07_show.jsp">페이지이동</a>
</body>
<script type="text/javascript">
/*
 
*/
</script>
</html>