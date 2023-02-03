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
<h2>2번문제</h2>
<h3 id="container2"></h3>
<h3 id="container2_3"></h3>

<form>
<table id="tab02">
	<col width="33%"><col width="33%"><col width="33%">
	<tr style="height:40px"><td colspan="2">@@X@@</td><td></td></tr>
	<tr><td>7</td><td>8</td><td>9</td></tr>
	<tr><td>4</td><td>5</td><td>6</td></tr>
	<tr><td>1</td><td>2</td><td>3</td></tr>
	<tr><td>C</td><td>0</td><td>정답확인</td></tr>
</table>

</form>

<h2>4번문제</h2>
<table>
<tr><td class="cls02 cls04">1</td><td class="cls04">1</td><td class="cls04">1</td><td class="cls04">1</td></tr>
<tr><td class="cls02">1</td><td>1</td><td>1</td><td>1</td></tr>
<tr><td class="cls02">1</td><td>1</td><td>1</td><td>1</td></tr>
<tr class="cls01"><td class="cls02">1</td><td>1</td><td>1</td><td>1</td></tr>
</table>

<h2>마지막문제</h2>
<table class="cls10">
<tr><td>안녕</td><td>안녕</td><td>안녕</td><td>안녕</td><td>안녕</td></tr>
<tr><td>안녕</td><td>안녕</td><td>안녕</td><td>안녕</td><td>안녕</td></tr>
<tr><td>안녕</td><td>안녕</td><td>안녕</td><td>안녕</td><td>안녕</td></tr>
<tr><td>안녕</td><td>안녕</td><td>안녕</td><td>안녕</td><td>안녕</td></tr>
<tr><td>안녕</td><td>안녕</td><td>안녕</td><td>안녕</td><td>안녕</td></tr>
</table>

<h2>마지막문제2</h2>
<table id="cls11">
<tr><td>안녕</td><td>안녕</td><td>안녕</td><td>안녕</td><td>안녕</td></tr>
<tr><td>안녕</td><td>안녕</td><td>안녕</td><td>안녕</td><td>안녕</td></tr>
<tr><td>안녕</td><td>안녕</td><td>안녕</td><td>안녕</td><td>안녕</td></tr>
<tr><td>안녕</td><td>안녕</td><td>안녕</td><td>안녕</td><td>안녕</td></tr>
<tr><td>안녕</td><td>안녕</td><td>안녕</td><td>안녕</td><td>안녕</td></tr>
</table>
</body>
<script type="text/javascript">

//[1단계:개념] 1. JSON객체의 형변환메서드 2개의 기능을 예제를 통해서 기술하세요.
					/*
					 JSON.stringify()
					 JSON.parse()
					*/
//[1단계:확인] 2. 임의의 구구단 출력 h2로 출력 eval함수를 활용하여 3X3 테이블에  0~9 정답확인 문자열 생성
//            @@@ X @@  = ?
//            테이블 ==> cell 클릭시 ?에 입력될 숫자를 출력하고,
//            정답확인 버튼 클릭시 출력되게 처리. 정답여부를 출력되게 하세요

/*
  1) 화면 구현
  	- 문제 출력h2,? 정답입력 출력내용span
  	- 테이블구현
  2) DOM객체 선언 및 임의의 문제 출력
  	var gugu document.querySelector("h2")
  	var inNum document.querySelector("span")
  	var td document.querySelector("#tab01 td")
  	
  	
 */
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
		
		
	
				
		
			

//[1단계:개념] 3. DOM의 선택자의 종류와 출력기능 속성을 구분하여 기술하세요.
					/*
					document.querySelector() --> 단일선택자
					document.querySelectorAll() --> 다중선택자
					태그(<h2>,<p><td>등), #아이디 .클래스
					*/
					
					
//[1단계:확인] 4. 4X4 테이블을 1~16까지 출력하고, 가장 밑라인 클래스로 cls01은 배경색상을 노랑색 ,  왼쪽라인 클래스로 cls02 글자색상을 파랑색, 
//      왼쪽라인 클래스로 cls03 빙고라고 표시, 위쪽 라인은 클래스로 cls04 처리하고 글자를 오른쪽 정렬 처리 처리되게 하세요.
				var cls01 = document.querySelectorAll(".cls01")
				 cls01[0].style.background="yellow"
				var cls02 = document.querySelectorAll(".cls02")
				
				cls02.forEach(function(cls) {
   					 cls.style.color="blue"
   					 cls.innerText="빙고"
						});
				var cls04 = document.querySelectorAll(".cls04")	
				cls04.forEach(function(cls4) {
					 cls4.style.textAlign = "right";
						});
   					

				
				
				 
//[1단계:개념] 5. DOM의 css 속성과 일반 속성의 차이점을 기술하세요.
				/* 	기본 속성
 	  			.속성 = 속성값 : 태그가 가지고있는 기본 속성을 읽어오거나 설정할 수 있다.
 	  		3) style 속성\
 	  			.style.속성 = 속성값: css속성이 적용된 내용을 설정할 수 있다. */
//[1단계:개념] 6. DOM의 innerText와 innerHTML의 차이점을 기술하세요.
/*
html = 태그를 랜더링 하여 실행
text = 문자열 그대로를 실행한다.
 */
//[1단계:확인] 7. 5X5 테이블을 임의의 25개 숫자(0~100)로 출력하고, 이 중 짝수 열의 글자색상을 파랑색으로 출력하세요.
					var cls10 = document.querySelectorAll(".cls10 td")
					cls10.forEach(function(cls04){
						cls04.innerText = Math.floor(Math.random()*101);
						if(cls04.innerText%2==0){
							cls04.style.color="blue"
						}
					})
					
					
					var cls11 = document.querySelectorAll("#cls11 td")
					var tdsEvent = document.querySelectorAll("#cls11 td:nth-child(2n)")
					
					for(var idx=0; idx<cls11.length;idx++){
						cls11[idx].innerText=Math.floor(Math.random()*101);
					}
 	  				for(var idx=0; idx<tdsEvent.length;idx++){
 	  					tdsEvent[idx].style.color="blue"
 	  				}
				
				
					
					
					
</script>
</html>