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

function goShowPage(){
	 if(confirm("z02_show.jsp로 이동하시겠습니까?")){
	 	location.href="z02_show.jsp";

	 }
}
function goSignUpPage(){
	 if(confirm("회원등록으로 이동하시겠습니까?")){
	 	location.href="../a02_jsp/a01_begin/a13_EmpInsertFrom.jsp";

	 }
}

function goSalGradePage(){
	 if(confirm("등급등록으로 이동하시겠습니까?")){
	 	location.href="../a02_jsp/a01_begin/a14_GradeInsertFrom.jsp";

	 }
}
</script>

</head>
<body>

<h3>2번문제</h3>
<%--
 #개발 순서
  1. 필요로하는 조회조건 SQL작성 ==> 동작이되는 쿼리인지 확인
  2. 회원리스트 기능 메서드 Dao 확인
  3. 추가 기능 메서드 확인(조회 조건 vo를 확인 - 생성자 확인)
  4. 회원 리스트 기능메서드 복사해서
     - sql삽입
     - 매개변수 vo로 할당
     - pstmt처리 내용 확인
  5. 화면 구성
  	 - form 조회
  	 - 리스트 테이블 만들기
  6. 요청값 설정
  7. 요청값에 따른 DB호출
  
  

 --%>
<%
 String ename=request.getParameter("ename");      if(ename==null) ename="";
 String job=request.getParameter("job");          if(job==null) job="";
 
 A02_EmpDao dao= new A02_EmpDao();
 Emp sch = new Emp(ename, job);
 //초기에 전체 데이터 로딩, 입려내용에따라 검색되게 처리
%>

<form>
	<table>
		<tr><th>사원명</th><td colspan="2"><input type="text" name="ename" value="<%=ename %>"/></td></tr>
		<tr><th>직책</th><td colspan="2"><input type="text" name="job" value="<%=job %>"/></td></tr>
		<tr><td colspan="3"><input type="submit" value="검색"/>
		<input type="button" style="background-color:gray;" value="등록" onclick="goSignUpPage()"/></td></tr>
		</table>
</form>


			<table>
			<tr><th>사원번호</th><th>사원명</th><th>직책명</th><th>관리자번호</th><th>급여</th><th>부서번호</th></tr>
			<%
			for(Emp e:dao.getEmpSch2(sch)){
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
		

<h2>3번문제</h2>

<% 
String low2=request.getParameter("low");      if(low2==null) low2="0";
String hi2=request.getParameter("hi");      if(hi2==null) hi2="9999";
int lowsalInt = Integer.parseInt(low2);
int hisalInt = Integer.parseInt(hi2);
A04_salgrade SDao = new A04_salgrade();
SalGrade sch3 = new SalGrade(lowsalInt, hisalInt);
%>
<form>
	<table>
		<tr><th>최저등급</th><td colspan="2"><input type="text" name="low" value="<%=low2 %>"/></td></tr>
		<tr><th>최고등급</th><td colspan="2"><input type="text" name="hi" value="<%=hi2 %>"/></td></tr>
		<tr><td colspan="3"><input type="submit" value="검색"/>
		<input type="button" style="background-color:gray;" value="등록" onclick="goSalGradePage()"/></td></tr>
	</table>
</form>

<table>
			<tr><th>등급</th><th>최저연봉</th><th>최고연봉</th></tr>
			<%
			for(SalGrade s:SDao.getGradeSch(sch3)){
			%>
			<tr>
				<td><%=s.getGrade() %></td>
				<td><%=s.getLowsal() %></td>
				<td><%=s.getHisal() %></td>
			</tr>
			<%} %>
		</table>

<h3>4번문제</h3>
<h1 onclick="goShowPage()">클릭하세요</h1>

<h3>5번문제</h3>
<%
	String name="이정명";
	int age=28;
%>

<h3>6번문제</h3>
 <p>2번문제와 병합</p>


<h2>9번</h2>
<table id="exp09"></table>
</body>
<script type="text/javascript">
               var sname="<%=name%>";
             // var sname = 홍길동 ==> 변수로 인식하여 에러가 발생한다.
             // 이 라인에 에러가 발생하는 순간 이후js는 처리가 되지않는다.
               var sage="<%=age%>";
               var old=(sage>19)?"성인입니다.":"미성년자입니다.";

               alert(sname+" "+sage+" "+old+">_<");
               
 var body = document.body
	let tot01=0;

	 for(let cnt=1; cnt<=20; cnt++){
		 tot01 +=5;
	 }
	 body.innerHTML += "<h2>7번문제 총합:"+tot01+"</h2>";
/*[1단계:확인] 8. [js] 객체와 for in 구문의 관계를 음악정보(음악명,가수명,발매연도)를 통해 선언하고 출력하세요.*/
 body.innerHTML += "<h2>8번문제</h2>";
 
 var music ={mname1:"노래제목1",singer1:"가수1",year:221010, mname2:"제목3",singer2:"가수2",year2:221011,mname3:"제목2",singer3:"가수3",year3:221012}
 var body = document.body
 for(let prop3 in music){
	 body.innerHTML+=prop3+":"+music[prop3]+"<br>" 	  
 }
 
/*[1단계:확인] 9. [js] 배열과 for of 구문을 통해서 프리미어리그 순위 리스트를 테이블로 출력해보세요. */

    var tab01 = document.querySelector("#exp09")
    var ids = ['맨유','첼시','리버풀']
    var names = ['1','2','3']
    var addHTML = "<tr><th>팀이름</th><th>순위</th></tr>";
    for(var idx=0; idx<ids.length;idx++){
       addHTML+= "<tr><td>"+ids[idx]+"</td><td>"+names[idx]+"</td></tr>"
    }
    tab01.innerHTML = addHTML;
   
 
</script>
</html>