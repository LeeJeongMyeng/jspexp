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

<%--
# el을 통한 요청값 처리
	1.${param.요청키}:단일요청
	  ${paramValues[0].요청키} : 다중요청처리
 --%>

<form>
	이름:<input type="text" name="name"/><br>
	물건가격:<input type="text" name="price"/><br>
	갯수:<input type="text" name="cnt"/><br>
	<input type="checkbox" name="loc" value="서울"/>서울
	<input type="checkbox" name="loc" value="지방"/>지방
	<input type="checkbox" name="loc" value="제주"/>제주
	<input type="submit" value="등록"/>
</form>

<h2>요청값 처리</h2>
<h3>이름:${param.name }</h3>
<h3>이름(입력여부-없을떄):${empty param.name }</h3>
<h3>이름(입력여부-있을때):${not empty param.name }</h3>
<h3>총계:${param.price*param.cnt}</h3>
<h3>총계비교연산자:${param.price*param.cnt>=3000}</h3>
<h3>사는곳:${paramValues.loc[0] }</h3>
<h3>사는곳:${paramValues.loc[1] }</h3>
<h3>사는곳:${paramValues.loc[2] }</h3>


</body>
<script>
/*

 */
</script>
</html>