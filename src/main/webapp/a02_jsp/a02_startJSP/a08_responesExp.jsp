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
	<h3>로그인</h3>
	<form>
		아이디:<input type="text" name="id">
		패스워드:<input type="password" name="pass">
		<input type="submit" value="로그인">
	</form>
		<%
		A06_PareparedDao dao = new A06_PareparedDao();
		
			String id = request.getParameter("id");
			String pass = request.getParameter("pass");
			boolean isFail = false;
			if(id!=null&&pass!=null){
				
				//서버단 
				// 데이터가 있을 떄만 이동 그외는 이동되지 않게 처리..
				if(dao.login(id,pass)){
					//서버단에서 페이지 이동을 결정할 떄, response.sendRedirect
					response.sendRedirect("a09_main.jsp");
				}else{
					// 현재 페이지에서 로그인 처리하기 때문에 생략 가능
					// rsponse.sendRedirect("a08_login.jsp")
					
					isFail=true;
					//response.sendRedirect("a09_main.jsp?ckLog=Y");
				      //요청값을 넘기면 초기페이지가 아니라 로그인 check된 페이지라는
				      //것을 구분해주면 처리할 수 있다.
				} 
			}
		
		%>

</body>
<script type="text/javascript">

var isFail = <%=isFail%>
if(isFail){
	alert("로그인 실패, 인증된 아이디가 없습니다.")
}
/*
 
*/
</script>
</html>