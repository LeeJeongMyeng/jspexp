<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"    
    import="jspexp.vo.*" 
       import="jspexp.a13_database.vo.*"
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

<form>
점수: <input type="text" name="point"/>
	<input type="submit"/>
</form>	

<h2>점수:${param.point} </h2>
<h2>입력값여부:${not empty param.point} </h2>
<h2>70점이상 여부:${param.point>=70} </h2>
<h2>합격여부:${param.point>=70?'합격':'불합격' }</h2>


</body>
<script>
/*

 */
</script>
</html>