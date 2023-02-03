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
//[1단계:확인] 5. [js] 키오스크 메뉴판(3가지)과 동일하게 메뉴가 나오고 +/-에 따라서 갯수가 선택되게 하여
//아래에 메뉴내용과 총금액이 나오게 처리하세요.
var fifth = document.querySelector("#fifth")
var cnt1 = 0;
var cnt2 = 0;
var cnt3 = 0;
var count1 = document.querySelector("#count1")
var count2 = document.querySelector("#count2")
var count3 = document.querySelector("#count3")

function cntplus1(){
cnt1++;
}
function cntminus1(){
cnt1--;
}
function cntplus2(){
cnt2++;
}
function cntminus2(){
cnt2--;
}
function cntplus3(){
cnt3++;
}
function cntminus3(){
cnt3--;
}

count1.innerText += cnt1;
count2.innerText += cnt2;
count3.innerText += cnt3;

function test(name="없음",price=0,cnt=0){
fifth.innerHTML+="물건명:"+name+", 가격:"+price+", 갯수"+cnt+"<br>"
}
const sum = (price, count) => price*count
fifth.innerHTML+= "총합계:"+sum
</script>

</head>
<body>
<h1>1번문제</h1>
<h2 onclick="buy()">아직 구매 안됨</h2>
		<h2 onclick="buy('사과')">아직 구매 안됨</h2>
		<h2 onclick="buy('바나나',3000)">아직 구매 안됨</h2>
		<h2 onclick="buy('오렌지',2000,4)">아직 구매 안됨</h2>
		<p></p>
<h1>2번 문제</h1>
<table>
<tr><td onclick="exp02('사과')">1개</td><td onclick="exp02('사과','바나나')">2개</td><td onclick="exp02('사과','바나나','딸기')">3개</td></tr>
</table>
<div id="exp02"> </div>


<h1>3번문제</h1>
	<h3 onclick="test2()">없음</h3>
	<h3 onclick="test2('7780')">사원번호</h3>
	<h3 onclick="test2('7780','오길동')">사번,사원명</h3>
	<h3 onclick="test2('7780','오길동','인사')">사번,사원명,부서번호</h3>
<div id="container2"></div>



<h1>4번문제</h1>
	<h3 onclick="this.innerHTML=calcu1(3000,2)+'원'">3000*2</h3>	
	<h3 onclick="this.innerHTML=calcu2(3000,2)+'원'">3000/2</h3>	
	<h3 onclick="this.innerHTML=calcu3(3000,2)+'원'">3000+2</h3>	
	<h3 onclick="this.innerHTML=calcu4(3000,2)+'원'">3000-2</h3>	

<h1>5번문제</h1>
<h3>돈까스 7000원 <span id="count1"></span>개<input type="button" name="cntplus" value="+" onclick="cntplus1()">
         <input type="button" name="cntminus" value="-" onclick="cntminus1()"></h3>
      <h3>라면 5000원 <span id="count2"></span>개<input type="button" name="cntplus" value="+" onclick="cntplus2()">
         <input type="button" name="cntminus" value="-" onclick="cntminus2()"></h3>
      <h3>김밥 3000원 <span id="count3"></span>개<input type="button" name="cntplus" value="+" onclick="cntplus3()">
         <input type="button" name="cntminus" value="-" onclick="cntminus3()"></h3>
      
      <h2>주문내역</h2>
      <div id="fifth"></div>

<h1>6번문제</h1>
	<%
	String num10 = request.getParameter("num10");
	int num10Int=0;
	if(num10!=null  && !num10.equals("")) num10Int = Integer.parseInt(num10);
	String num11 = request.getParameter("num11");
	int num11Int=0;
	if(num11!=null  && !num10.equals("")) num11Int = Integer.parseInt(num11);

	
	%>
	<form>
	1번값:<input type="text" name="num10">
	2번값:<input type="text" name="num11">
		<input type="submit" value="합산">
	</form>
	<h4>첫번쨰 숫자:<%=num10Int %></h4>
	<h4>두번쨰 숫자:<%=num11Int %></h4>
	<h4>합산:<%=num10Int+num11Int %></h4>
	
	
	<%!
		
		int chInt(String req){
		int ret=0;
		if(req!=null){
			try{
				ret = Integer.parseInt(req);
			}catch(Exception e){
				log("에러발생:"+e.getMessage());
			}
		}
		return ret;
	}
	
	
	%>
	
	
	
<h1> 6번 풀이2</h1>


<form>
	1번값:<input type="text" name="num15">
	2번값:<input type="text" name="num16">
		<input type="submit" value="합산">
	</form>
	
<%
int num15 = chInt(request.getParameter("num15"));
int num16 = chInt(request.getParameter("num16"));
int totnum2 = num15+num16;
%>
<h3>합계 : <%=totnum2 %></h3>
<h1>7번문제</h1>

<%!
String ret = "";
public String div(int plusTot){
	 
	   if(plusTot>70){ 
	     ret = "합격";
	   } else{
		   ret="불합격";
	   }
	   return ret;
	}
%>


<%
String num20 = request.getParameter("num20");
String num30 = request.getParameter("num30");
int num20Int=0;
if(num20!=null  && !num20.equals("")) num20Int = Integer.parseInt(num20);
int num30Int=0;
if(num30!=null  && !num30.equals("")) num30Int = Integer.parseInt(num30);
int plusTot = num20Int+num30Int;
div(plusTot);
%>

<form>
	1번점수:<input type="text" name="num20">
	2번점수:<input type="text" name="num30">
		<input type="submit" value="합산">
	</form>
	<div>총점수:<%=plusTot %></div>
	<div><%=ret %></div>
</body>
<script type="text/javascript">


//[1단계:확인] 1. [js] 가변매개변수 arguments를 활용하여 가변적으로 구매 정보를 매개변수로 처리하여 출력하게 하세요.
				var p=document.querySelector("p")
					function buy(){
							if(arguments.length==0){
								
								p.innerHTML="구매없음<br>"
							}else{
								var add=""
								for(var idx in arguments){
									add+=arguments[idx]+" "
								}
								p.innerHTML=add+"<br>"
							}
	}
//[1단계:확인] 2. [js] ... 가변매개변수에 따라 등록할 물건의 이름 1/2/3개 다른 매개변수로 설정하여 하단에 p태그로 클릭시 마다 처리되게 하세요
		function exp02(...pnames){
		var tot="";
			for(var pay of pnames){
				tot+=pay;	
			}
		var pObj = document.querySelector("#exp02")
		pObj.innerHTML = "인원수:"+pnames.length
}
//[1단계:확인] 3. [js] default 가변매개변수를 활용하여 사원번호, 사원명, 부서번호를 클릭시 마다, 처리하는 내용을 하단에 테이블로 추가 하여 출력하세요
//               login(), login(7780) login(7880,'오길동') login(8000,'이영자','인사')
var div2 = document.body.querySelector("#container2")
function test2(name="없음",pass='없음',id='없음'){
div2.innerHTML="사번:"+name+",이름:"+pass+",부서번호:"+id+"<br>" }
						


//[1단계:확인] 4. [js] 화살표 함수를 활용하여 사칙연산을 처리 및 출력하세요.

const calcu1 = (num03,num04) => num03*num04
const calcu2 = (num03,num04) => num03/num04
const calcu3 = (num03,num04) => num03+num04
const calcu4 = (num03,num04) => num03-num04

//[1단계:확인] 6. [jsp] jsp에서 숫자형 데이터가 요청값이 없더라도 숫자형 데이터가 에러 나지 않게 할려고 한다.
//                 아래 화면을 입력값이 없더라도 전송시 에러 발생하지 않게
//                첫번째 숫자 : [   ]
//                두번째 숫자 : [   ]  [합산]
//               1) javascript 단 처리 부분
//               2) jsp 처리 부분을 나누어서 처리하세요
//[1단계:확인] 7. [jsp] script의 declare를 활용하여, 입력값이 70이상 일때, 합격 그외 불합격 처리하는 기는
//           메서드를 선언하고, expression으로 호출하여 처리하세요. 







</script>
</html>