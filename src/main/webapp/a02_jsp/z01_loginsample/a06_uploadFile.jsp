<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>        
<%@page import = "java.util.Enumeration"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>업로드 성공!(파일정보)</h2>





<%
String loc="C:/a01_javaxep/workspace/jspexp/src/main/webapp/a02_jsp/z02_upload";
int maxSize=1024*1024*5; // 키로바이트*메가바이트*기가바이트
MultipartRequest multi = new MultipartRequest(
         request,
         loc,
         maxSize, 
         "utf-8",
         new DefaultFileRenamePolicy()
);
%>



</body>
<script type="text/javascript">

</script>
</html>