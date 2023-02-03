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
<style>
	button{
		width:150px;
		height:100px;
		background-color:black;
		color:white;
	}
</style>
	<div id="container2"></div>
	<div id="container4"></div>
	<h2>5번문제</h2>
	<button onclick="refresh()">초기화</button>
	<button onclick="createScore()">성적생성</button>
	<button onclick="printScore()">성적 출력</button>	
	<button onclick="underScore()">내림차순정렬하기</button>
	<button onclick="upperScore()">오름차순 정렬하기</button>
	<button onclick="Rank3()">Rank3 출력</button>
	<div id="container5"></div>
	<br><br><br><br>
	<div id="container8"></div>
	<button onclick="underScore9()">내림차순정렬하기(9번)</button>
	<div id="container9"></div>
	<h2>8번 스앵님 리뷰</h2>
	
	<table id="tab02">
            <thead><tr><th>국가</th><th onclick="ord('win')">승</th>
                     <th onclick="ord('eq')">무</th><th onclick="ord('def')">패</th>
                     <th onclick="ord('gd')">골득실</th><th onclick="ord('pt')">승점</th></tr></thead>
            <tbody></tbody>
         </table>
         <script type="text/javascript">
         function Team(nat,win,eq,def,gd,pt){
            this.nat = nat
            this.win = win
            this.eq = eq
            this.def = def
            this.gd = gd
            this.pt = pt
            this.prn = function(){
               return "<tr><td>"+this.nat+"</td><td>"+this.win+"</td><td>"+this.eq+"</td><td>"
                     +this.def+"</td><td>"+this.gd+"</td><td>"+this.pt+"</td></tr>"
            }
         }
         var grpA = []
         grpA.push(new Team("네덜란드",2,1,0,4,7))
         grpA.push(new Team("세네갈",2,0,1,1,6))
         grpA.push(new Team("에콰도르",1,1,1,1,4))
         grpA.push(new Team("카타르",0,0,3,-6,0))
         
         var tb02 = document.querySelector("#tab02 tbody")
         function ord(pro ){
            grpA.sort(function(left, right){
               // js에서 객체 속성 객체명.속성, 객체명[속성]
               return right[pro] - left[pro];
            })
            show2()
         }
         show2()
         function show2(){
            var addHTML =""
            grpA.forEach(function(team){
               addHTML += team.prn()
            })
            tb02.innerHTML = addHTML
         }
         </script>
<%--
#
--%>
</body>
<script type="text/javascript">

// 2022-11-30
//[1단계:개념] 1. [js] 배열과 반복문 처리형식 4가지를 예제를 통해서 설명하세요.
/* var arry01=[]
var arry02=[1000,2000,3000]
var arry03=new Array()
var arry04=new Array(5)
var arry05=new Array(3000,4000,5000)

 		1.for문
 			1) for(var idx=0; idx<배열.length;idx++){
 				배열[idx] : 배열의 index로 접근해서 가져온다.
 			}
 		2. for(var idx in 배열){
 			idx : 배열의 index를 문자열로 가져온다.
 			배열[idx] : 배열에 할당된 값을 가져온다.
 			}
 		3. for(var 단위데이터 of 배열){
 			배열의 단위데이터를 변수에 할당하여 가져온다.	
 			} 
 		4. 배열.forEach(function(단위데이터,index,배열전체){})*/
 		
//[1단계:확인] 2. [js] Math.random(), parseInt()를 이용해서 학생 10명의 국어점수를 임의로 발생하여 배열 할당하여 테이블로 출력하세요.
//[1단계:확인] 3. [js] 위 2번 문제를 기능메서드를 활용하여 1~3등을 출력하세요.

		var div2 = document.body.querySelector("#container2")
		var array06s=[]
 		
 	
 		for(var cnt=1;cnt<=10;cnt++){
 			var array06={}
 			array06.cnt=cnt
 			array06.kor=parseInt(Math.random()*101)
 			array06s.push(array06)
 		}
 		
 		array06s.sort(function(left,right){
 			return right.kor-left.kor
 		})
 		div2.innerHTML+="<h2>2번문제</h2>"
 		var show02 = "<table>"
 		show02+="<tr><th>번호</th><th>국어</th></tr>"
 		
 			for(var idx=0; idx<3; idx++){
 				show02+="<tr><td>"+array06s[idx].cnt+"번</td><td>"+array06s[idx].kor+"</td></tr>"
 			}

 			show02+="</table>"
 			div2.innerHTML+=show02
 		
 		



//[1단계:확인] 4. [js] 위 2번 문제를 메서드를 활용하여 최대점수와 최저점수를 삭제처리하고 출력하세요.
			
			var div4 = document.body.querySelector("#container4")
			div4.innerHTML+="<h2>4번문제</h2>"
				array06s.pop(); // 마지막꺼 삭제
				array06s.shift(); // 첫번쨰꺼 삭제
				
 		var show04 = "<table>"
 		show04+="<tr><th>번호</th><th>국어</th></tr>"
 			for(var idx=0; idx<array06s.length; idx++){
 				show04+="<tr><td>"+array06s[idx].cnt+"번</td><td>"+array06s[idx].kor+"</td></tr>"
 			}

 			show04+="</table>"
 			div4.innerHTML+=show04
			
//[3단계:확인] 5. [js] 영어점수 10명을 초기화면에 테이블로 만들고 기능버튼에 따라 처리한 테이블 내용을 출력하세요
//               [임의점수생성][내림차순][오름차순][상위Rank3]
 	var div5 = document.body.querySelector("#container5")
			
	var array07s=[]
 			
 	function show(){ //출력기능
 				show05="<table>"
 	 		 		show05+="<tr><th>번호</th><th>영어</th></tr>"
 	 				array07s.forEach(function(array07){
 	 					show05+="<tr><td>"+array07.cnt+"번</td><td>"+array07.eng+"</td></tr>"
 							})
 							show05+="</table>"
 					 			div5.innerHTML=show05
 				
 			}
			
 	function refresh(){ //초기화
 				array07s.splice(0,10)
 				alert("초기화 되었습니다.")
 				show()
 			}

	function createScore(){ //성적생성
 				
		alert("성적이 생성되었습니다. 성적출력 버튼을 통해 프린트해주세요!! ")	
			for(var cnt=1;cnt<=10;cnt++){
	 			var array07={}
	 			array07.cnt=cnt
	 			array07.eng=parseInt(Math.random()*101)
	 			array07s.push(array07)
	 		}
	}
	
	function printScore(){ //생성 출력
		div5.innerHTML+="<h2>5번문제</h2>"
			show()
	}
	
 			function underScore(){ //내림차순
 				array07s.sort(function(left,right){
 		 			return right.eng-left.eng
 		 		})
 		 		show()
 		 		
 			}
 			function upperScore(){ //오름차순
 				array07s.sort(function(left,right){
 		 			return left.eng-right.eng
 		 		})
 		 		show()
 		 		
 			}
 			
  			function Rank3(){ //rank3
  				array07s.sort(function(left,right){
 		 			return right.eng-left.eng
 		 		})
 			
 		 	array07s.splice(3,7)
 		 	show()
 				
 			} 
 			
 			
 			
 			
 			
//[1단계:개념] 6. [js] sort()기능메서드의 한계점을 [1,5,92,124,234]를 기준으로 설명하세요.
		// 숫자의 크기와 상관없이 가장 앞자리 숫자의 크기로 정렬이된다.
		// 결과==> 1,124,234,5,92
		
//[1단계:확인] 7. [js] 월드컵 선수(나라,이름,골,도움)를 3명을 배열로 설정한 후, 초기 화면을 테이블로 출력하고,
//                   골기준으로 내림차순 정렬처리하는 화면을 처리하세요.
			var div8 = document.body.querySelector("#container8")
			var array08s=[{cont:"한국",name:"손흥민",goal:100,asist:108}]
			array08s.push({cont:"포르투갈",name:"호날두",goal:2,asist:5})
			array08s.push({cont:"프랑스",name:"앙리",goal:10,asist:30})
			
			array08s.sort(function(left,right){
				return right.goal-left.goal;
			})
			
			var show08 = "<table>"
				show08+="<tr><th>국적</th><th>이름</th><th>골</th><th>어시</th></tr>"
					array08s.forEach(function(array08){
	 					show08+="<tr><td>"+array08.cont+"</td><td>"+array08.name+"</td>"
	 							+"<td>"+array08.goal+"</td><td>"+array08.asist+"</td></tr>"
							})
				show08+="</table>"
				div8.innerHTML=show08
//[1단계:개념] 8. [js] 특정 조의 팀속성(국가, 승점)를 배열로 등록한 후(승점은 임의로 입력), 승점기준으로 내림차순으로 테이블로 출력하세요.
//[3단계:개념] 8. [js] 특정 조를 데이터로 넣고, 팀속성(국가,승,무,패,골득실,승점)을 기준으로 테이블로 출력한 후, 테이블 상단항목을
//            클릭시, 해당 내용의 내림차순으로 정렬되게 하세요.
			var div9 = document.body.querySelector("#container9")
			var array09s=[{cont:"벨기에",win:1,eq:1,def:1,goal:0}]	
				array09s.push({cont:"폴란드",win:1,eq:1,def:1,goal:-2})
				array09s.push({cont:"불가리아",win:0,eq:2,def:1,goal:-2})
				array09s.push({cont:"우루과이",win:0,eq:2,def:1,goal:-5})
			
				function show09(){var show09 = "<table>"
					show09+="<tr><th>국적</th><th>승</th><th>무</th><th>패</th><th>득실</th><th>승점</th></tr>"
						array09s.forEach(function(array09){
							var point = (array09.win*3)+array09.eq
							show09+="<tr><td>"+array09.cont+"</td><td>"+array09.win+"</td>"
									+"<td>"+array09.eq+"</td><td>"+array09.def+"</td>"
									+"<td>"+array09.goal+"</td><td>"+point+"</td></tr>"
						})
						show09+="</table>"
						div9.innerHTML=show09}
			show09()
					
			function underScore9(){
						array09s.sort(function(left,right){
							lpay = left.win*3+left.eq
							rpay = right.win*3+right.eq
							return rpay-lpay;
						})
						show09()
					}
//8번 스앵님 방식===========================================================================
	
	
	
	
	
</script>
</html>