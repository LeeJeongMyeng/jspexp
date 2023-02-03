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
#
--%>

<%

%>
<style>
iframe{
border:1px solid blue;
}
</style>
이름:<input type="text" name="name">
<input type="button" value="프레임1에 전송" onclick="go(0)"/>
<input type="button" value="프레임2에 전송" onclick="go(1)"/>
<input type="button" value="프레임3에 전송" onclick="go(2)"/>




<iframe name="frame01" src="a10_sub.jsp" width="50%" height="40%"></iframe>
<iframe name="frame02" src="a11_sub.jsp" width="50%" height="40%"></iframe>
<iframe name="frame03" src="a09_sub.jsp" width="50%" height="40%"></iframe>
</body>
<script type="text/javascript">

function go(idx){
	//iframe으로 데이터를 화면별로 전송하는 것은 서버와 관련 없이
	// 현재로딩된 js,html을 이용해서 DOM으로 접근하여 처리하는 것이다.
	// DOM(document object model)
	
	//var fr = document.querySelectorAll("iframe")
	//alert(fr[idx].document.body.innerHTML)
	//frame, href에서 호출되는 객체는 BOM(browser object medel)
	//DOM객체의 상위 객체로 BOM명.document.querySelector("포함된 개체 접근")
	var nameVal=document.querySelector("[name=name]").value
	if(idx==0) frame01.document.body.innerHTML+=nameVal
	if(idx==1) frame02.document.querySelector("h2").innerText+=nameVal
	if(idx==2) frame03.document.querySelector("[name=call]").value+=nameVal
}
</script>
</html>