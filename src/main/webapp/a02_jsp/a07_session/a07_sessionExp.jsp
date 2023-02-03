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
	ex) a05로 세션만들고
			세션삭제 버튼 만들어서 클릭하면 현재 페이지에서 요청값으로 삭제하게하고 세션값을 삭제처리
			
 --%>
	<%String sess01 =	(String)session.getAttribute("sess01");
		String ses=request.getParameter("ses");
		if(ses!=null && ses.equals("n")){
			session.invalidate();
			//e다음 페이지를 호출할떄 없어지므로 한번더 호출
			response.sendRedirect("a07_sessionExp.jsp");
		}
	%>
	
		<h2>세션상태:<%=sess01!=null?sess01:"세션없음" %></h2>
		<form>
			<input type="hidden" name="ses" value="n"/>
			<button>삭제</button>
		</form>
		

</body>
<script type="text/javascript">




</script>
</html>