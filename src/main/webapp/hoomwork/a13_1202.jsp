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
<form method="post" action="a50_check.jsp">
물건명<input type="text" name="pname">
	<input type="submit"/>
</form>
 
 <%-- a50_check.jsp
 		String pname=request.getParameter("pname");
 	if(pname!=null){
 		String page01="";
 		if(pname.equals("사과")){
 			request.setAttribute("msg","재고 있음");
 			page01="a53_main.jsp";
 		}else{
 			request.setAttribute("msg","재고 없음");
 			page01="a54_main.jsp";
 		}
 		RequestDispatcher rd = request.getRequestDispatcher(page01);
 		rd.forward(request,response);
 	}
 
 3. 최종페이지 가져오기.
 	a53_main.jsp(재고있음), <%=request.getAttribute("msg")%>
 	a54_main.jsp(재고없음), <%=request.getAttribute("msg")%>

z40_cal.jsp
	String price=request.getParameter("price"); if(price==null) price="0";
	String cnt=request.getParameter("cnt"); if(cnt==null) cnt="0";
	int priceI=Integer.parseInt(price);
	int cntI=Integer.parseInt(cnt);
	int tot = priceI*cntI;
	String page01="z42_normal.jsp";
	if(tot>=100000){
	 page01="z41_mvp.jsp";
	}
	<jsp:forward page="<%=page01%>"/>

z41_mvp.jsp
	<%=request.getParameter("name")%>
z42_normal.jsp
	<%=request.getParameter("name")%>


  --%>


<h2>2-2번문제</h2>

<%--  z40_cal.jsp
	String price=request.getParameter("price"); if(price==null) price="0";
	String cnt=request.getParameter("cnt"); if(cnt==null) cnt="0";
	int priceI=Integer.parseInt(price);
	int cntI=Integer.parseInt(cnt);
	int tot = priceI*cntI;
	request.setAttribute("tot",tot);
	String page01="z42_normal.jsp";
	if(tot>=100000){
	 page01="z41_mvp.jsp";
	} 
	<jsp:forward page="<%=page01%>"/>
	
	
	z41_mvp.jsp
	<h2><%=request.getParameter("name")%>구매MVP페이지</h2>
	<h3><%=request.getAttribute("tot")%>원 구매</h3>
z42_normal.jsp
	<h2><%=request.getParameter("name")%>구매 일반 페이지</h2>
	<h3><%=request.getAttribute("tot")%>원 구매</h3>
	<jsp:forward page="<%=page01%>"/>
	--%>

<form method="post" action="z40_cal.jsp">
	물건명:<input type="text" name="name"/>
	가격: <input type="text" name="price"/>
	갯수:<input type="text" name="cnt"/>
	<input type="submit" value="구매">
</form>


<h2>3번문제</h2>
<form method="post" action="a51_check.jsp">
	id:<input type="text" name="id"/>
	<input type="submit" value="등록">
</form>
<%
String hasId = (String)request.getAttribute("hasId");
boolean isCheck=false;
if(hasId!=null){
isCheck=true;
} 
String id = request.getParameter("id");
%>
<script>
var isCheck=<%=isCheck%>
if(isCheck){
	var hasId="<%=hasId%>"
	if(hasId=="Y"){
		alert("등록된 아이디가 있습니다.");
	}else{
	alert("등록가능합니다..");
	document.querySelector("[name=id]").value="<%=id%>"
	}
}
</script>

<%--
1. 화면 구현 name=id
2. a51_check.jsp
	<%
String id = request.getParameter("id");
if(id!=null){
	A06_PareparedDao dao = new A06_PareparedDao();
	request.setAttribute("hasId",dao.checkId(id)?"Y":"N");
%>
	<jsp:forward page="a13_1202.jsp"/>
<%}%>
3.현재 페이지
	String hasId = request.setAttribute("hasId");
	boolean isCheck=false;
	if(hasId!=null){
	isCheck=true;
	}
	<script>
	var isFirst=<%=isFirst%>
	if(isFirst){
		var hasId="<%=hasId%>"
		if(hasId=="Y"){
			alert("등록된 아이디가 있습니다.");
		}else{
		alert("등록가능합니다..");
		document.querySelector("[name=id]").value="<%=id%>"
		}
	}

 --%>

<h2>5번문제</h2>
<div id="container"></div>


<h2>5-2번문제(오늘로부터 몇일?)</h2>
	<form>
		<input type="date" name="indate" />
		<input type="button" value="날짜확인" onclick="calDate()"/>
	</form>
	<h3 id="container6"></h3>
<script>
	function calDate(){
		var toDay= new Date()//오늘 날짜
		var inDate = document.querySelector("[name=indate]").value.split("-")
		
		var stDay= new Date(inDate[0],inDate[1]-1,inDate[2])
		var diff =toDay.getTime()-stDay.getTime()
		var dayCnt = Math.floor(diff/1000/60/60/24)
		document.querySelector("#container6").innerText
		=Math.abs(dayCnt)+"일"+((dayCnt>0)?"전":"이후")
		//Math.abs(dayCny) :오늘 이전은 + 오늘 이후는 -값 절대값 처리
		//((dayCnt>0)?"전":"이후") : 오늘 이전은 + 오늘 이후는 -값 
	}
</script>

<h2>8번문제</h2>
<div id="container8"></div>

<h2>8-2번문제</h2>
<table id="FIFA">
	<thead><tr><th>나라</th><th>승</th><th>무</th><th>패</th><th>승률</th></tr></thead>
	<tbody></tbody>
</table>



</body>
<script type="text/javascript">
/*
 [1단계:개념] 1. [jsp] forward란 무엇인가? 페이지 처리의 scope 범위를 기술하세요.
		 			forward로 지정해놓은 페이지에
		 			request값을 전달할 수있다.
		 			
		 			pageContext - 해당 페이지
		 			request - 명령에 의해 전달된 페이지까지 가능
		 			session - 해당 브라우저(다른 모델의 브라우저는 안됨)가 연동되어있는동안 전체....단, 브라우저가 다 닫히면 종료
		 			application - 서버가 돌아가는동안 전체*/
		 			
//[1단계:확인] 2. [jsp] 물건명:[   ][재고여부] 클릭시, form으로 submit 처리하여 
//               a50_check.jsp에 이동해서 a53_main.jsp(재고 있음),  a54_main.jsp(재고 없음),
  		             			
               
/*[2단계:확인] 3. [jsp] form으로 물건명 가격 갯수를 입력해서 전송했을 때, 두번째 페이지(z40_cal.jsp)에서 총비용이
               100000이상이면 MVP페이지(z41_mvp.jsp)로 forward처리 그렇지 않으면
               Normal페이지(z42_normal.jsp)로 이동하게 하세요.
               
               
               
                  
[3단계:확인] 3. [jsp] id:[   ][등록여부] 클릭시, form으로 submit 처리하여 a51_check.jsp에 이동해서 DB에 있을 때와 없을 때는 나누어 
            request setAttribute("hasId","Y"/"N")로 설정하여 등록가능 여부를 처리하세요
            	
            
[1단계:개념] 4. [js] 날짜 객체의 getTime()은 어떤 메서드 인가?
						UTC를 기준으로 경과 한 밀리초를 반환합니다.
						
						
[1단계:확인] 5. [js] 2022/12/01와 2023/01/01의 사이의 시간과 날짜수를 출력하세요.*/

					var div5= document.querySelector("#container")

					var d1 = new Date(2022,11,01,12,00)
					div5.innerHTML+=d1.getTime()+"<br>"
					var d2 = new Date(2023,00,01,12,00)
					div5.innerHTML+=d2.getTime()+"<br>"
					
					var diff1 = d2.getTime()-d1.getTime()
					div5.innerHTML+=diff1+"<br>"
					div5.innerHTML+="시간:"+parseInt(diff1/1000/60/60)+"<br>"
					div5.innerHTML+="날짜:"+parseInt(diff1/1000/60/60/24)+"<br>"			
					
						

//[2단계:확인] 5. [js] 오늘로 부터 몇일? [@@@@-@@-@@][날짜 확인] 날짜를 @@@-@@-@@ 형식으로 입력하고,
//               날짜 확인 버튼을 클릭시, 며칠되었지 출력하세요.


//[1단계:개념] 7. [js] map(), filter()의 차이점을 기술하세요
						/*
						map= 계산식 등 return값으로 해당내용을 바꿈
						filter = 조건에 의해 맞는 부분만 걸러서 출력
						*/
						
//[1단계:확인] 8. [js] 0~100점의 임의의 국어점수 5명을 만들고 출력하고, 이 점수를 15% 점수를 올린 배열과 60점이상인 배열을 출력하세요.
var div8= document.querySelector("#container8")
				var points=[]
					for(var cnt=0; cnt<5;cnt++){
						points.push(parseInt(Math.random()*101))
					}
div8.innerHTML+=points+"<br>"
  var points1 = points.map(function(point){return point+point*0.15})
  var points2 = points1.filter(function(point){return point>=60})
  div8.innerHTML+=points1+"<br>"
  div8.innerHTML+=points2+"<br>"
//[3단계:확인] 8. [js] 월드컵 조별팀의 기본속성(나라,승,무,패)로 특정조의 팀들을 현재 성적으로 등록시키고,
//승수를 한번에 1씩 올리고, 해당 팀들을 테이블로 출력하고, 이중 승률이 50%이상인 팀만 추출하여 배열 출력하세요
	var hgrp=[]
  	hgrp.push({nat:"포르투갈",win:2,eq:0,def:1})
  	hgrp.push({nat:"한국",win:1,eq:1,def:1})
  	hgrp.push({nat:"우루과이",win:1,eq:1,def:1})
  	hgrp.push({nat:"가나",win:0,eq:0,def:2})
  	console.log(hgrp)
  	hgrp.map(function(team){
  		team.win = team.win+1
  		team.winRatio = Math.round(team.win/(team.win+team.def)*100)
  		return team
  	})
  	var hgrp=hgrp.filter(function(team){
  		return team.winRatio>=50
  	})
  	console.log(hgrp)
  	var show=""
  	hgrp.forEach(function(t){
  		show+="<tr><td>"+t.nat+"</td><td>"+t.win+"</td><td>"+t.eq+"</td><td>"+
  		t.def+"</td><td>"+t.winRatio+"%</td></tr>"
  	})
  	document.querySelector("#FIFA tbody").innerHTML=show
  	
</script>
</html>