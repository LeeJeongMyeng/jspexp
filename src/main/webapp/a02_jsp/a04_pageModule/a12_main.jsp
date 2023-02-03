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
<form>
 	<input type="text" name="tname">
 	<input type="button" value="1번" onclick="go1(1)">
 	<input type="button" value="2번" onclick="go1(2)">
 	<input type="button" value="3번" onclick="go1(3)">
</form>

<iframe name="team1" src="a13_sub.jsp" width="50%" height="40%"></iframe>
<iframe name="team2" src="a14_sub.jsp" width="50%" height="40%"></iframe>
<iframe name="team3" src="a15_sub.jsp" width="50%" height="40%"></iframe>





</body>
<script type="text/javascript">


function go1(idx){
	//var fr = document.querySelectorAll("iframe")
	//alert(fr[idx].document.body.innerHTML)
	//frame, href에서 호출되는 객체는 BOM(browser object medel)
	//DOM객체의 상위 객체로 BOM명.document.querySelector("포함된 개체 접근")
	var tnameVal=document.querySelector("[name=tname]").value
	if(idx==1) team1.document.body.innerHTML+=tnameVal
	if(idx==2) team2.document.body.innerHTML+=tnameVal
	if(idx==3) team3.document.body.innerHTML+=tnameVal

}






</script>
</html>