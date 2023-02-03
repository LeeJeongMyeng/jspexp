<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*" 
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

<%
A03_DeptDao Ddao= new A03_DeptDao();

A02_EmpDao dao= new A02_EmpDao();

%>
function callexp03(num01,num02){
		alert("밑변:"+num01+",높이:"+num02+"의 면적 ="+num01*num02*0.5);
	}

function exp08(){
	 var nameVal=document.querySelector("[name=name]").value;
	 var korVal=document.querySelector("[name=kor]").value;
	 var engVal=document.querySelector("[name=eng]").value;
	 var mathVal=document.querySelector("[name=math]").value;
	 
	 var totpay = Number(korVal)+Number(engVal)+Number(mathVal);
	 var avgpay = (Number(korVal)+Number(engVal)+Number(mathVal))/3;
	 
	 var exp08name=document.querySelector("#exp08name");
	 exp08name.innerText= nameVal;
	 
	 var exp08tot=document.querySelector("#totnum");
	 exp08tot.innerText= totpay;
	 
	 var exp08avg=document.querySelector("#avgnum");
	 exp08avg.innerText= avgpay;
}

/* function changeColor(){
	 //해당 객체가 가지고있는 문자열로 해당 배경 색상을 변경 처리..
	style.background-color=red
	 /* obj.style.color=white;} */


function like(){
		document.querySelector("#like2").innerText+="♥"
	}
	function unlike(){
		document.querySelector("#like2").innerText+="♡"
	}

/*
 
*/
</script>

</head>
<body>
<hr><h2>[1단계:개념] 1. jsp를 이용하여 객체형 배열을 처리할려고 한다. 처리하는 순서를 기술하세요.</h2>
			<%
		//객체형 list처리..
		// 1. 구조만들기
		// 2. 리스트로 데이터 넣기
		// 3. 반복문처리하기
	  		List<Dept> dlist = new ArrayList<Dept>();
		  		dlist.add(new Dept(10,"인사","서울"));
		  		dlist.add(new Dept(20,"회계","부산"));
		  		dlist.add(new Dept(30,"총무","제주도"));
		  		%>
		  		
		  	<table>
	<tr><th>부서번호</th><th>부서명</th><th>부서위치</th></tr>
	<%for(Dept d:dlist){ %>
	<tr><td><%=d.getDeptno() %></td><td><%=d.getDname() %></td><td><%=d.getLoc() %></td></tr>
	<%} %>
</table>
<hr><h2>[1단계:확인] 2. Computer 클래스에 제조사, 가격, 종류 속성을 선언하고, jsp 화면에 테이블로 리스트를 출력하세요.</h2>
		<%
	  		List<Computer> clist = new ArrayList<Computer>();
		  		clist.add(new Computer("한성",100000,"노트부"));
		  		clist.add(new Computer("삼성",200000,"데스크탑"));
		  		clist.add(new Computer("LG",300000,"노트북"));
		  		%>
		  		
	<table>
	<tr><th>부서번호</th><th>부서명</th><th>부서위치</th></tr>
	<%for(Computer c:clist){ %>
	<tr><td><%=c.getCompany() %></td><td><%=c.getPrice() %></td><td><%=c.getKind() %></td></tr>
	<%} %>
</table>
<hr><h2>[1단계:개념] 3. jsp에서 DB처리를 위해 필요한 설정을 기술하세요.</h2>
							1) jdbc드라이버 설정 /webapp/WEB-INF/lib
							2) dao를 위한 설정처리(ip,port,sid,계정,비번)연결부분확인
							3) dao을 기능 메서드 구현
							4) jsp에서 해당dao import,vo import
<hr><h2>[1단계:확인] 4. dao에 부서정보를 찾아서, jsp로 부서정보를 출력하세요.</h2>
		<table>
			<tr><th>사원번호</th><th>사원명</th><th>직책명</th><th>관리자번호</th><th>급여</th><th>부서번호</th></tr>
			<%
			for(Dept d:Ddao.getDeptSch()){
			%>
			<tr>
			<td><%=d.getDeptno() %></td>
			<td><%=d.getDname() %></td>
			<td><%=d.getLoc() %></td>
			</tr>
			<%} %>
		</table>
<hr><h2>[1단계:확인] 5. dao에 회원정보리스트 처리 기능메서드를 추가하고 jsp로 회원정보리스트를 출력하세요.</h2>
					<table>
			<tr><th>사원번호</th><th>사원명</th><th>직책명</th><th>관리자번호</th><th>급여</th><th>부서번호</th></tr>
			<%
			for(Emp e:dao.getEmpSch()){
			%>
			<tr>
			<td><%=e.getEmpno() %></td>
			<td><%=e.getEname() %></td>
			<td><%=e.getJob() %></td>
			<td><%=e.getMgr()%></td>
			<td><%=e.getSal()%></td>
			<td><%=e.getDeptno()%></td>

			</tr>
			<%} %>
		</table>

<hr><h2>[1단계:개념] 6. js의 함수의 기본형식을 기술하고 매개변수로 밑면과 높이를 전달하고, 삼각형의 면적으로 리턴값을 alert() 출력되게 처리해보세요.</h2>

				<h3 onclick="callexp03(4,5)">삼각형 면적 4,5 (클릭)</h3>
<hr><h2>[1단계:개념] 7. 이벤트와 이벤트핸들러 함수와의 관계를 실제 이벤트 처리 코드를 기준으로 설명하세요.</h2>
			1) 이벤트 핸들러 함수 선언 : 이벤트를 통해 처리할 내용 함수 선언
 	  		2) 이벤트 속성 선언 및 이벤트 핸들러 함수 호출
 	  			태그 on이벤트명="이벤트핸들러함수()"
 	  		3) 이벤트 핸들러에 매개변수 전달
 	  		 - 함수에 매개변수를 선언하여 문자열,숫자 데이터를 전달 할 수 있다.
 	  		 
<hr><h2>[1단계:확인] 8. 학생의 이름 정보와 국어,영어,수학점수를 입력 후, 클릭시, 총점과 평균이 출력되게 하세요.</h2>
			<form>
					이름:<input type="text" name="name">
					국어성적:<input type="text" name="kor">
					영어성적:<input type="text" name="eng">
					수학성적:<input type="text" name="math">
						<input type="button" value="합산" onclick="exp08()">		
			</form>
			<div>
			'<span id="exp08name"></span>'학생의 총 성적합은'<span id="totnum"></span>'점,
			평균은<span id="avgnum"></span>점입니다.
			</div>
				
<hr><h2>[1단계:확인] 9. 1~9까지 번호가 있는 3X3테이블을 만들고 해당 td를 클릭시 마다, 클릭한 td만 배경색상과 글자 색상이 변경되게 처리하세요.</h2>
<!-- 						<table>
							<tr><td onclick="changeColor()">red</td><td>2</td><td>3</td></tr>
							<tr><td>4</td><td>5</td><td>6</td></tr>
							<tr><td>7</td><td>8</td><td>9</td></tr>						
						</table> -->
<hr><h2>[3단계:확인] 10. 좋아요버튼과 싫어요 버튼 만들고, 좋아요 버튼을 누를 때 마다
                  하단에 ♥가 증가되고, 싫어요 버튼을 누를 때 마다♡ 증가 되게 처리해보세요 </h2>
                  <style>
                  	#form{float:left;}
                  </style>
		<form id="form">
         <input type="button" value="좋아요" onclick="like()">
		 <input type="button" value="싫어요" onclick="unlike()">
		<h2 id="like2">좋아요</h2>
	</form>
		
</body>
<script type="text/javascript">
/*
 
*/
</script>
</html>