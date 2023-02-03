<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"    
    import="jspexp.vo.*" 
       import="jspexp.a13_database.vo.*"
   %>
<%request.setCharacterEncoding("utf-8");%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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


<h2 onclick="goToAjax()">데이터 가져오기</h2>
<div id="container">
	
</div>

</body>
<script>
function goToAjax(){
	var xhr=new XMLHttpRequest()
	xhr.open("get","z02_data.jsp",false)
	xhr.send()
	document.querySelector("#container").innerHTML=xhr.responseText
}
</script>
</html>