<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
  import="java.util.*"   
    import="jspexp.a13_database.*"    
    import="jspexp.a13_database.vo.*" 
      
    %>
  <%
  request.setCharacterEncoding("utf-8");
  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="/a00_com/a01_common.css" rel="stylesheet">
<script type="text/javascript">


</script>

</head>
<body>
<h2>2번 문제 </h2>
<form>
id(8~16):<input type="text" name="id02">
		<input type="button" value="아이디 check" onclick="checkid()">
		<input type="checkbox" name="idcheck">유효여부
</form>

회원아이디 : <input type="text" name="id"/>
<input type="button" value="유효check" onclick="ckValid(this)"/>
<input type="checkbox" id="isValid"/> 유효여부 

<h2>4번문제</h2>
<form>
	<input type="checkbox" name="team" value="네덜란드"/>네덜란드
	<input type="checkbox" name="team" value="세네갈"/>세네갈
	<input type="checkbox" name="team" value="잉글랜드"/>잉글랜드
	<input type="checkbox" name="team" value="미국"/>미국
	<input type="checkbox" name="team" value="프랑스"/>프랑스
	<input type="checkbox" name="team" value="오스트레일리아"/>오스트레일리아
	<input type="checkbox" name="team" value="아르헨티나"/>아르헨티나
	<input type="checkbox" name="team" value="폴란드"/>폴란드
	<input type="checkbox" name="team" value="모로코"/>모로코
	<input type="checkbox" name="team" value="크로아티아"/>수크로아티아박
	<input type="checkbox" name="team" value="일본"/>일본
	<input type="checkbox" name="team" value="스페인"/>스페인
	<input type="checkbox" name="team" value="포르투갈"/>포르투갈
	<input type="checkbox" name="team" value="대한민국"/>대한민국
	<input type="checkbox" name="team" value="브라질"/>브라질
	<input type="checkbox" name="team" value="스위스"/>스위스
</form>
<div id="container4">여기에 추가</div>

<h2>5번문제</h2>
<form>
	<input type="radio" name="prob" value="공부"/>공부
	<input type="radio" name="prob" value="취업"/>취업
	<input type="radio" name="prob" value="돈"/>돈
</form>
<div id="container5">여기에 문제할당</div>


<h2>6번문제</h2>
<form>
물건명 <input type="text" name="pname"/>
가격  <select onchange="totpay()" name="price">
	
	</select>
개수  <select onchange="totpay()" name="cnt">
		
	</select>
</form>
<div id="container6">ddd</div>

<h2>8번문제</h2>
<%

	//Emp e = new Emp("홍길동",30);
	//session.setAttribute("e01",e);
%>
<h2>세션생성완료</h2>
<h3>세선확인하러갑니다</h3>

<%
	Emp emp = (Emp)session.getAttribute("emp");
	boolean hasSess = emp!=null; //null이면 false, 아니면 true
	//세션이 있을때만 메서드 호출 없을땐 0으로
	int sesDeptno= hasSess?emp.getDeptno():0;
	
	List<Dept> dlist = new ArrayList<Dept>();
	dlist.add(new Dept(10,"인사",""));
	dlist.add(new Dept(20,"회계",""));
	dlist.add(new Dept(30,"네트워크",""));
	dlist.add(new Dept(40,"총무",""));
%>
<table>
	<tr><th>부서리스트</th></tr>
	<%for(Dept d:dlist){ %>
	<tr><td ondblclick="ckAuth('<%=d.getDeptno()%>')"><%=d.getDname() %></td></tr>
	<%} %>
</table>


</body>
<script type="text/javascript">
/*
2022-12-08
[1단계:개념] 1. form요소객체의 하위 속성을 속성값을 동적으로 변경하는 코드를 기술하세요
<input type="button" value="버튼이름" 
					onclick="function()" 클릭시 지정된 함수 실행 
					onchange="function()" 값이 변할때마다 해당함수에 값을 할당하여 실행	>
					
[1단계:확인] 2. 회원아이디를 입력하고 옆에 유효 CHECK 버튼을 클릭시,
               글자수가 8~16이고, himan가 아닐 때만 유효여부 checkbox표기하고, readOnly 속성으로 설정하세요.
               회원아이디 [    ] [유효check]  []유효여부 */
function checkid(){
	var id02 = document.querySelector("[name=id02]")
	var id02s = id02.value
	var idck = document.querySelector("[name=idcheck]")
	if(id02s.length<=8 || id02s.length>=16 || id02s=="himan"){
		alert("조건x 다시입력");
	}else{
		idck.checked=true;
		id02.readOnly=true;
		
	}
}
     

var idOb = document.querySelector("[name=id]")
var ckValOb = document.querySelector("#isValid")
function ckValid(obj){
   if(obj.value=="유효check"){
      var len = idOb.value.length
      if(len>=8 && len<=16 && idOb.value!='himan'){
         ckValOb.checked = true
         idOb.readOnly = true
         obj.value="아이디재입력"
         //
      }
   
   }else{
      ckValOb.checked = false
      idOb.readOnly = false
      idOb.value="";idOb.focus()
      obj.value="유효check"
   }
}

               
 /*              
[1단계:확인] 3. checkbox, radio, select의 js로 접근할 때, 차이점을 기술하세요.
				 다중으로 적용시, check박스는 여러개의 값을 받을수있기때문에 for문과 index값으로 값을 전부 처리하여 checked값을 적용시키거나 불러온다.
				 			radio는 여래개중 하나만 값을 받기떄문에 this로 처리한다.
				 			
[1단계:확인] 4. checkbox와 월드컵 출전팀을 리스트하고, check 후, 16강진출 버튼 클릭시, 선택된 팀만 하단에 리스트하게 하세요. */
var team = document.querySelectorAll("[name=team]")
var div4 = document.querySelector("#container4")

for(var idx=0; idx<team.length;idx++){
	team[idx].onclick=function(){
		ckData();
	}
}

function ckData(){ //체크된 값을 넣기
	var add3="";
	for(var idx=0;idx<team.length;idx++){
		if(team[idx].checked){
			add+=team[idx].value+",";
		}
	}
	div4.innerText=add3
}

//[1단계:확인] 5. radio를 이용해서 현재 해결해야 할 문제(3가지) 중에 가장 중요한 것을 클릭시, 하단에 표현되게 하세요.
var probs = document.querySelectorAll("[name=prob]")
var div5 = document.querySelector("#container5")
 for(var idx=0; idx<probs.length; idx++){
	 
	 probs[idx].onclick=function(){
		 var add2=""
		 if(this.checked){
			 add2=this.value
		 }
		 div5.innerText=add2
	 }
 }

//[1단계:확인] 6. 물건명, 가격select(1000단위~9000), 갯수(select 1~9) 가격나 갯수를 선택시, 하단에 구매한 물건과 총비용을 출력되게 하세요

	var pname = document.querySelector("[name=pname]")
	var price = document.querySelector("[name=price]")
	var cnt1 = document.querySelector("[name=cnt]")
	var div6 = document.querySelector("#container6")
	var add=""
var add2=""
for(var cnt=1; cnt<10; cnt++){
	add+="<option>"+cnt*1000+"</option>"
	add2+="<option>"+cnt+"</option>"
}
price.innerHTML= add;
cnt1.innerHTML= add2;

function totpay(){
	var tot = price.value*cnt1.value
	div6.innerText="구매물건:"+pname.value+",총비용:"+tot

}


					


//[1단계:확인] 7. 쿠키와 세션의 궁극적인 차이점으로 설정 코드와 함께 설명하세요
				/* 쿠키는 서버의 자원을 전혀 사용하지 않으며, 세션은 서버의 자원을 사용합니다.*/
				/*쿠키:Cookie c1 = new Cookie("name03","dlwjdaud");*/
				/*세션:Person m = new Person("홍길동",25,"신림동");
						session.setAttribute("p01",m); */
				
//[1단계:확인] 8. Emp Vo로 세션을 설정하고, 세션이 없을 때, 세션설정하는 페이지로 이동하게 하되, 세션 확인하는 페이지에서
//                   10/20/30/40  테이블 리스트에서 클릭시, 해당 부서만 접근가능 alert() 그 외는 접근 불가능 alert()로딩되게 처리하세요.
		
		
		var h3=document.querySelector("h3");
h3.onclick=function(){
	location.href="z01_showSession.jsp"
}	

<%--
1) 세선 처리 페이지 및 리스트 페이지 이동(ex)로그인 후, 세션설정 후에 리스트 페이지로 이동
	z43_makeSession.jsp
2) a17_1208.jsp
	- 세션가져오기(만약에 sesstion이 없으면 세션페이지에서 세션처리하기)
	-현재 페이지에서 테이블 리스트 출력
		메뉴 리스트를 클릭시, 지정된 메뉴의 권한 내용과 세션에 있는 권한과 비교하여 같으면 접근, 다르면 접근 불가능
--%>

var hasSess = <%=hasSess %>
if(!hasSess)
	alert("세션이 없습니다. 설정페이지로 이동합니다.")
	location.href="z43_makeSession.jsp"
}
if(hasSess){
	
}
var sesNo= <%=sesDeptno%> //만약에 deptno가 없으면 null
function ckAuth(deptno){
	//세션에 있는 deptno와 부서리스트에서 전달하는 detpno가 같을 떄
	// 권한 있기 때문에 이동가능
	if(sesNo==deptno){
		alert("권한이 있습니다. 이동성공")
	}else{
		alert("권한이 없습니다..")
	}
}
/*
  z43_makeSession.jsp
  	<h2>세션설정</h2>
 */
</script>
</html>