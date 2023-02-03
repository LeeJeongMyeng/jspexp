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

<%
/* - cidx : index로 체크된 값만 전달 
  ckey : 쿠키의 요청 키를 전달
  cval : 쿠키의 요청 값을 전달
- proc : 쿠키의 등록/수정/삭제 처리..(add,upt/del) */

String proc = request.getParameter("proc");
// 프로세스:등록수정삭제
String []cidx = request.getParameterValues("cidx");
String []ckey = request.getParameterValues("ckey");
String []cval = request.getParameterValues("cval");


if(proc!=null){
	for(String cidxS:cidx){
		// check box로 선택되어진 key/value
		int idx=Integer.parseInt(cidxS);
		String key = ckey[idx];
		String val = cval[idx];
		if(proc.equals("add")||proc.equals("upt")){
			Cookie c = new Cookie(key,val);
			response.addCookie(c);
		}
		if(proc.equals("del")){
			for(Cookie c:request.getCookies()){
				if(c.getName().equals(key)){
					c.setMaxAge(0);
					response.addCookie(c);
				}
				
			}
		}
	}
}
response.sendRedirect("a05_CookieLiist.jsp");

%>
</body>
<script type="text/javascript">
/*
 
*/
</script>
</html>