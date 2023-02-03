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
	<h2>세션설정 완료</h2>
	<%
		session.setAttribute("emp", new Emp("홍길동",3500,10));
	%>
<%--
#
--%>
</body>
<script type="text/javascript">
	alert("세션설정완료!!")
	if(confirm("세선메뉴 화면으로 이동하시겠습니까?")){
		location.href="a17_1208.jsp";
	}

/*
 
*/
</script>
</html>