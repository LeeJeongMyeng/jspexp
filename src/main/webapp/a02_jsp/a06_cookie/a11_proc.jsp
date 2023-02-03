<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"    
    import="jspexp.a13_database.*"    
    import="jspexp.a13_database.vo.*"  
     import="java.net.URLEncoder"
         import="java.net.URLDecoder"   
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="/a00_com/a01_common.css" rel="stylesheet">
<script>
/*
 
 */
</script>
</head>
<body>
<%
	String proc = request.getParameter("proc");
	String[] cidx = request.getParameterValues("cidx");
	String[] ckey = request.getParameterValues("ckey");
	String[] cval = request.getParameterValues("cval");
	if(proc!=null){//쿠키값 화면에서 넘어올 때만 처리
		for(String cidxS:cidx){
			int idx = Integer.parseInt(cidxS);
			String key=URLEncoder.encode(ckey[idx],"UTF-8");
			String val=URLEncoder.encode(cval[idx],"UTF-8");

			if(!key.equals("")&&!val.equals("")){
			Cookie c = new Cookie(key,val);
			if(proc.equals("del")){
				c.setMaxAge(0);
			}
			response.addCookie(c);
			}
		}
	}
	response.sendRedirect("a10_CookieList.jsp");

%>
<%--
# 

 --%>


</body>
<script>
/*

 */
</script>
</html>