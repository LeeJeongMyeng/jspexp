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
<style>
td{width:25%;}
</style>
<script type="text/javascript">
/*
 
*/
</script>

</head>
<body>
	<table> 
 	   <tr><td></td><td></td><td></td><td></td></tr>
 	   <tr><td></td><td></td><td></td><td></td></tr>
 	   <tr><td></td><td></td><td></td><td></td></tr>
 	   <tr><td></td><td></td><td></td><td></td></tr>
 	</table>

</body>
<script type="text/javascript">

var tds = document.querySelectorAll("td")
	function init(){
	for(var idx=0; idx<tds.length;idx++){
		tds[idx].innerText=idx+1
		tds[idx].style.background=""
		}
	}
	init();
	var idx=0;
	setInterval(function(){
		init() //초기화로 해당 cell만 노랑색 처리.
		tds[idx%16].style.background="yellow" //idx%16 0~15범위에서 게속 반복 처리된다.
		idx++;
	},1000)


//[2단계:확인] 8. [js] 테이블 4X4테이블의 배경색상을 흰색으로 하고 1~16번째 cell까지 노랑색 배경색으로 배경 변하게 하세요
//(해당 cell만 노랑 배경색, 마지막에 이르러선 다시 처음 cell로 부터 다시 시작)

/*
 1. 화면 구현 
 	<table> td{width:25%;}
 	   <tr><td></td><td></td><td></td><td></td></tr>
 	   <tr><td></td><td></td><td></td><td></td></tr>
 	   <tr><td></td><td></td><td></td><td></td></tr>
 	   <tr><td></td><td></td><td></td><td></td></tr>
 	</table>
 	
 2. js
 	var tds = document.querySelectorAll("td")
 	function init(){
		for(var idx=0; idx<tds.length;idx++){
			tds[idx].innerText=idx+1
			tds[idx].background=""
		}
 	}
 	init();
 	var idx=0;
 	setInterval(function(){
 		init() //초기화로 해당 cell만 노랑색 처리.
 		tds[idx%16].background="yellow" //idx%16 0~15범위에서 게속 반복 처리된다.
 		idx++
 	},1000)
 */


</script>
</html>