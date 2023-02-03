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
<h1>[1단계:개념] 1. [jsp] 세션 scope의 첫단계 객체 pageContext 는 어디까지 데이터가 유지 되는 것인가?</h1>
		 				<h2>해당 페이지를 벗어나면 사라진다.</h2>
<h1>[1단계:확인] 2. [jsp] 물건가격과 갯수를 pageContext로 저장하고, 저장된 내용을 출력하되, 총계까지 출력하세요. </h1>
	<%
	  pageContext.setAttribute("prod01","사과");
	  pageContext.setAttribute("price01",2500);
	  pageContext.setAttribute("cnt01",5);
	%>
	<h2>물건명:<%=pageContext.getAttribute("prod01") %></h2>
	<h2>가격:<%=pageContext.getAttribute("price01") %></h2>
	<h2>갯수:<%=pageContext.getAttribute("cnt01") %></h2>
<h1>[1단계:확인] 3. [jsp] Dept정보를 pageContext범위로 저장하고 호출하세요.</h1>
		<%
		pageContext.setAttribute("dept01", new Dept(20,"회계","서울"));
		Dept d01 = (Dept)pageContext.getAttribute("dept01");
		%>
		<h2> 부서번호:<%=d01.getDeptno() %></h2>
		<h2> 부서번호:<%=d01.getDname() %></h2>
		<h2> 부서번호:<%=d01.getLoc() %></h2>
		
<h1>[1단계:개념] 4. [jsp] application 범위를 설명하고 회원 아이디와 권한 이름을 설정하고 다른 페이지에서 호출하세요.</h1>
				<h2>범위는 해당 서버가 종료, 혹은 재가동 되기전까지 유지가 된다.</h2>
	<%
	application.setAttribute("name","홍길동");
	application.setAttribute("div","관리자");
	%>
 <a href="a09_1128_exp.jsp">페이지이동</a>
 
<h1>[1단계:확인] 5. [js] json형식의 객체로 월드컵의 팀명 소속조 승 무 패의 속성을 선언하고, for in 구문 테이블로 출력하세요.</h1>
<div id="exp05"></div>
 			
</body>
<script type="text/javascript">

// 5번은 a09_1128_5.jsp에..




//[1단계:확인] 6. [js] 월드컵의 날짜와 시간별 팀1, 팀2의 일정을 출력하는 생성자형 객체를 선언하고, 오늘 한국/가나팀 일정계획을 출력하세요.
//ex) Player 클래스를 선언하고, 선수명 소속팀 점수 getRecord()속성 리턴 및 출력
class Play{
	constructor(date,time,team1,team2){
		this.date=date
		this.time=time
		this.team1=team1
		this.team2=team2
	}
		getPlay(){
			return this.team1+"vs"+this.team2+"경기 일정 ==>"+this.date+"<"+this.time+"> <br>"
		}
	
}
var p1 = new Play("가나","한국","11월28일","오후10시")
div.innerHTML=p1.getPlay()
//[1단계:확인] 7. [js] 위 내용을 내일일정 기준으로 여러 경기를 배열로 추가해서 출력하게 하세요.
	var Plays=[]
Plays.push(new Play("브라질","스위스","11월29일","오전1시"))
Plays.push(new Play("포르투갈","우루과이","11월29일","오전4시"))
Plays.forEach(function(t01){
	div.innerHTML+=t01.getPlay()
})
//[1단계:확인] 8. [js] class Product에 물건명과 가격을 선언하여 생성자를 통해 초기화하고 set get 메서드를 통해서 호출하고 저장하는
//            필드를 은닉하여 처리하게 하세요.

				class Product{
  		//필드값을 구분하여 get/set활용할 때 사용한다.
  		constructor(pname, price){
  			this._pname = pname
  			this._price= price
  		}
  		// 기능메서드를 이용해서 저장과 호출을 분리 처리.
  		get pname(){
  			return this._pname;
  		}
  		set pname(input){
  			return this._pname=input
  		}
  		
  		//기능메서드
  		gettotal(){
  			return this._pname+"의 가격"+this._price+"원"
  		}
  	}
			var p2 = new Product("사과",2000)
			//p2.pname="딸기" // set width(input) 호출 처리.._width은익처리
			div.innerHTML=p2.gettotal()
// get width() 에 정의된 내용 호출
</script>
</html>