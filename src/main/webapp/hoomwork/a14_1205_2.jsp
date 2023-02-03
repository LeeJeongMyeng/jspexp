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

<h2> 구구단</h2>
<table id="tab01">
	<col width="33%"><col width="33%"><col width="33%">
	<tr style="height:40px"><td colspan="2">@@X@@</td><td>0</td></tr>
	<tr><td>7</td><td>8</td><td>9</td></tr>
	<tr><td>4</td><td>5</td><td>6</td></tr>
	<tr><td>1</td><td>2</td><td>3</td></tr>
	<tr><td>C</td><td>0</td><td>정답확인</td></tr>
</table>

</body>
<script type="text/javascript">
/* var tds = document.querySelector("#tab01 td")
var corNum=0
ranGugu();
function ranGugu(){
	var grade = Math.floor(Math.random()*8+2)
	var cnt = Math.floor(Math.random()*9+1)
	corNum=grade*cnt
	tds[0].innerHTML= grade+"X"+cnt
}

for(var idx=0; idx<tds.length; idx++){
	tds[idx].onclick=function(){
		if(this.innerText=="정답확인"){
			if(tds[1].innerText==corNum){
				alert("정답\n다음문제");
				ranGugu();
			}else{
				aletr("오답\n다시 풀어보세요");
				tds[1].innerText=""
			}
		}else{
			tds[1].innerText+=this.innerText
			if(this.innerText=="C") tds[1].innerText=""
		}
	}
} */



var tds = document.querySelectorAll("#tab02 td")
var corNum = 0
var inNum = tds[1]
//var gugu = tds[0] 
//var inNum = tds[1]
ranGugu(); //초기에 함수 선언 
function ranGugu(){
   var grade = Math.floor(Math.random()*8+2)
   var cnt = Math.floor(Math.random()*9+2)
   corNum = grade*cnt
   tds[0].innerText = grade + " X " + cnt
}
for(var idx = 0; idx<tds.length;idx++){
   tds[idx].onclick=function(){
      if(this.innerText =="정답확인") {
         //입력한 내용과 정답 여부가 같은지 
         if(tds[1].innerText==corNum){
            alert("정답\n다음 문제로 넘어갑니다.");
            ranGugu();
            inNum.innerText=""
            
         }else{
             alert("오답\n다른 정답을 입력하세요");
            inNum.innerText=""
         }   
      }else{
         //번호를 클릭시, 입력한 내용을 출력하는 곳에 출력 처리
         tds[1].innerText += this.innerText
         if(this.innerText =="C")tds[1].innerText=""
      }
      
   }
}
</script>
</html>