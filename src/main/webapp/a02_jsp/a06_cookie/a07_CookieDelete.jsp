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
# 쿠키의 수정
	1. 쿠키는 기본의 키를 기준으로 호출한 후, 다른 값을 반응객체(response)에 의해 추가하면 변경이 된다.
--%>
<%
	Cookie cks[] = request.getCookies();
	for(Cookie c:cks){
		if(c.getName().equals("price")){
			c.setValue("6000");
			response.addCookie(c);
		}
	}
%>
<h2>쿠키값 삭제</h2>
<a href="a05_CookieLiist.jsp">쿠키값 확인</a>
</body>
<script type="text/javascript">
/*
 
*/
</script>
</html>