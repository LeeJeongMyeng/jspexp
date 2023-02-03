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
<!-- <hr><h2>[1단계:확인] 4. [js] prompt창으로 두개의 숫자를 입력받아, 사칙연산을 처리한 결과를 p태그로 출력하세요.</h2>  -->
<%--
#
--%>
</body>
<script type="text/javascript">
var num01 = prompt("첫번째 숫자입력","0")
var num02 = prompt("두번째 숫자입력","0")
var show = document.querySelector("#show")
show.innerHTML += (parseInt(num01)+parseInt(num02))+"<br>"
/* show.innerHTML += (parseInt(num01)-parseInt(num02))+"<br>"
show.innerHTML += (parseInt(num01)*parseInt(num02))+"<br>"
show.innerHTML += (parseInt(num01/num02)+"<br>" */
/*
 
*/
</script>
</html>