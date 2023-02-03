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
<div id="container"></div>
<%--
#
--%>
</body>
<script type="text/javascript">
/*
  #Date객체의 시간간격에 대한 처리
	1. getTime()를 통해서 1970/1/1기준으로 1/1000시간을 가져올 수 있다.
*/

var div= document.querySelector("#container")
var d1 = new Date(1971,0,1)
div.innerHTML+="1970/1/의 getTime():"+d1.getTime()+"<br>"
var d2 = new Date()
div.innerHTML+="현재의 getTime():"+d2.getTime()+"<br>"

var d3 = new Date(2022,11,02,15,22,0)
div.innerHTML+="2022,11,02  15:22 0초:"+d3.getTime()+"<br>"
var d4 = new Date(2022,11,02,15,22,1)
div.innerHTML+="2022,11,02  15:22 1초:"+d4.getTime()+"<br>"
div.innerHTML+="d3과 d4의 차이:"+(d4.getTime()-d3.getTime())+"밀리세컨드<br>"

var d5 = new Date(2023,2,22,18,00)
div.innerHTML+="2023/03/22 18:00의 getTime():"+d5.getTime()+"<br>"
var diff = d5.getTime()-d2.getTime()
div.innerHTML+="현재시간과 차이(1/1000 getTime()):"+diff+"<br>"
div.innerHTML+="현재시간과 차이(초단위):"+parseInt(diff/1000)+"<br>"
div.innerHTML+="현재시간과 차이(분단위):"+parseInt(diff/1000/60)+"<br>"
div.innerHTML+="현재시간과 차이(시단위):"+parseInt(diff/1000/60/60)+"<br>"
div.innerHTML+="현재시간과 차이(일단위):"+parseInt(diff/1000/60/60/24)+"<br>"
// ex) 과정시작날: 2022/8/29 -오늘날짜

var d6 = new Date(2022,07,29,09,00)
div.innerHTML+="강의 시작:"+d6.getTime()+"<br>"
var diff2 = d2.getTime()-d6.getTime()
div.innerHTML+="강의 시작후, 오늘까지 출석(1/1000):"+diff2+"<br>"
div.innerHTML+="강의 시작후, 오늘까지 출석(초):"+parseInt(diff2/1000)+"<br>"
div.innerHTML+="강의 시작후, 오늘까지 출석(분):"+parseInt(diff2/1000/60)+"<br>"
div.innerHTML+="강의 시작후, 오늘까지 출석(시):"+parseInt(diff2/1000/60/60)+"<br>"
div.innerHTML+="강의 시작후, 오늘까지 출석(일):"+parseInt(diff2/1000/60/60/24)+"<br>"

</script>
</html>