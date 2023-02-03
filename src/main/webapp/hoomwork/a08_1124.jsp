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
<h3>[2단계:확인] 3. (DB처리)부서번호와 부서명이 있을 때, 해당 부서페이지로 이동하고, 그렇지 않을 때, 해당 부서가 없습니다. 경고창 처리하세요. */</h3>
	<%
	String deptno = request.getParameter("deptno");
	int deptnoInt=0;
	if(deptno!=null && !deptno.equals("")) deptnoInt = Integer.parseInt(deptno);
		
		String dname = request.getParameter("dname");
		boolean isFail = false;
		if(dname!=null){
			A06_PareparedDao dao = new A06_PareparedDao();
			//서버단 
			// 데이터가 있을 떄만 이동 그외는 이동되지 않게 처리..
			if(dao.Dept(deptnoInt,dname)){
				//서버단에서 페이지 이동을 결정할 떄, response.sendRedirect
				response.sendRedirect("a07_1123.jsp");
			}else{
				// 현재 페이지에서 로그인 처리하기 때문에 생략 가능
				// rsponse.sendRedirect("a08_login.jsp")
				isFail=true;
			} 
		}
	
	%>
<form>
	부서번호:<input type="text" name="deptno">
	부서명:<input type="text" name="dname">
	<input type="submit" value="로그인">
</form>

<h3>[1단계:확인] 4. [화면구현] 배열로 월드컵 D조팀  ul로 리스트 출력하세요.</h3>
	<%
	String team4[] = {"프랑스","호주","덴마크","튀니지"};
	%>
		<ul>
		<%for(String team:team4){%>
			<li><%=team %></li>
		<% }%>
		</ul>

	<%-- <h3>[화면구현] 2차원 배열로 월드컵 A,B조 및 그 팀들을 선언하고 ol/ul을 계층적으로 출력하세요.</h3>
		<%
		String teamA[][]={{"A,B"},{"카타르","에콰도르","세네갈","네덜란드"},{"잉글랜드","이란","미국","웨일스"}};
		%>
			<ul>
		<%for(int exp4=0; exp4<=teamA[0].length;exp4++){%>
				<li><%=teamA[0][exp4] %>
					<ul>
						<%for(int exp5=0; exp5<=teamA[1].length;exp5++){%>	
							<li><%= teamA[exp4+1][exp5] %></li>
						<%} %>				
					</ul>
				</li>
		<%} %>

			</ul> --%>
<h3>[1단계:확인] 6. [화면구현] 오늘 월드컵 출전 팀과 경기 시간을 배열로 선언하고 select의 value는 시간, 레이블은 팀명을 출력하되,
				선택했을 시간을 경고창으로 출력되게 하세요.(배열, Code객체)</h3>
	<%
		String team6[] = {"스위스,카메룬","우루과이,한국","스페인,코스타리카","벨기에,캐나다"};
		String time[] = {"오후1시","오후4시","오후7시","오후10시"};
	%>
		<select name="exp6" onchange="alert(this.value)">
			<%for(int exp6=0; exp6<team6.length; exp6++){ %>
			<option value="<%=time[exp6] %>"><%=team6[exp6]%></option>
			<%} %>
		</select>
<h3>[1단계:확인] 7. [화면구현] 사이트 상단 메뉴항목을 배열로 5개 선언하고, 각 메뉴별로 배경색상을 지정한후, 수평으로 리스트 출력되게 하세요.</h3>
	<%
		String menu[] = {"메뉴1","메뉴2","메뉴3","메뉴4","메뉴5"};
	String mcolor[] ={"red","blue","green","yellow","purple"};
	List<Code> sch = new ArrayList<Code>();
	sch.add(new Code("오후7시","웨일스:이란"));
	sch.add(new Code("오후7시","웨일스:이란"));
	sch.add(new Code("오후7시","웨일스:이란"));
	sch.add(new Code("오후7시","웨일스:이란"));
		for(Code c:sch){
			out.print("<option value='"+c.getKey()+"'>"+c.getValue()+"<.option>");
		}
	%>
		<h2>
<%for(int cnt12=0; cnt12<menu.length; cnt12++){%>
<div style='background-color:<%=mcolor[cnt12]%>;'><%=menu[cnt12] %> </div>
<%} %>
</h2>

<br>

<div>
<h1>[1단계:확인] 8. [화면구현] jsp에서 테이블로 2X3, 3X4, 5X2를 만들고, 2의 배수, 4의 배수, 5의 배수로 출력하세요.(배경색상은 홀짝 다르게 출</h1>

<table>
<%
	for(int cnt=1; cnt<=6; cnt++){
		if(cnt%3==1) out.print("<tr>");
		out.print("<td>"+cnt*2+"</td>");
		if(cnt%3==0) out.print("</tr>");
	}
%>
</table>
</div>
</body>
<script type="text/javascript">
/*
 [1단계:개념] 1. response는 request와 대비해서 어떤 역할을 하는 객체인가?
		 클라이언트와 웹 서버 사이의 요청에 관련된 정보는 request객체에 저장되어 관리가 되며, 응답에 관련된 정보는 response 객체에 저장되고 관리된다.
		 
[1단계:개념] 2. response.sendRedirect와 location.href의 차이점을 기술하세요.

<response.sendRedirect>
- 기조ㅓㄴ페이지를 새로운 페이지로 변경시킨다.
- 형태: 메서드
<location.href>
- 새로운 페이지로 이동된다.
-형태: 속성(객체)

[1단계:확인] 3. 조건(부서번호와 (DB처리)부서명이 있을 때, 해당 부서페이지로 이동하고, 그렇지 않을 때, 해당 부서가 없습니다. 경고창 처리하세요.
		 function gotoDept(){
	var Id = document.querySelector("[name=id]").value
	var Pass = document.querySelector("[name=pass").value
	
	if(Id.equlas('himan')&&Pass.equlas('7777')){
		location.href="z02_dept.jsp";
	}else{
		alert("정보가 일치하지않습니다.")
	}
	
} */				



	

</script>
</html>