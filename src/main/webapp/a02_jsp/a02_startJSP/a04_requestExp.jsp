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
 ?pname01=사과&pname02=오렌지&pname03=수박을 처리하여 
  request.getParameterNames()로 가져와서 테이블로 출력
--%>

	<%-- <h2>pname01:<%=request.getParameter("pname01")%></h2>
 	<h2>pname02:<%=request.getParameter("pname02")%></h2>
 	<h2>pname03:<%=request.getParameter("pname03")%></h2>
 --%>

	


<form>
	과일1:<input type="text" name="pname1" value="사과">
	과일2:<input type="text" name="pname2" value="오렌지">
	과일3:<input type="text" name="pname3" value="딸기">
	<input type="submit">
	</form>
	<table>
	<tr><th>키</th><th>과일</th></tr>
	<%
	Enumeration e = request.getParameterNames();
	while(e.hasMoreElements()){
		String key = (String)e.nextElement();
	%>
	 <tr><td><%=key %></td><td><%=request.getParameter(key) %></td></tr>
	<%} %>
	</table>




</body>
<script type="text/javascript">
/*
 
*/
</script>
</html>