<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"    
    import="jspexp.vo.*" 
       import="jspexp.a13_database.vo.*"
   %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="/a00_com/a01_common.css" rel="stylesheet">
<script>
/*
 
 */
</script>
</head>
<body>

<%--
*
1단계:개념] 1. 세션의 삭제방법을 기술하세요
#세션 종료/타임아웃
1.session.invalidate()이용해서 세션 종료
	1)세션이 종료되면 기존에 생성된 세션이 삭제
	2) 이후 접근시 새로운 세션생성됨
2. 마지막세션 사용 이후, 유효시간이 지나면 자동 종료
	1)web.xml파일에서 지정
		<session-config>
			<session-timeout>
				30
	2) session기본 객체의 setMaxInactiveInterval()메서드 이용해서 지정
		초단위 지정 
[1단계:확인] 2. 로그인 클릭시 session에 설정 후 다시 Member의 아이디와 이름이 출력되고 하고,
           로그아웃 클릭시, 로그인해야합니다가 출력되게 하세요. --%>
           
           <input type="button" value="로그인" onclick="makeSes('y')">
           <input type="button" value="로그아웃" onclick="makeSes('n')">
           <%
				String sess01 =	(String)session.getAttribute("sess01");
				if(sess01!=null){
				out.print("<h3>세션생성됨:"+sess01+"</h3>");
				}else{
				out.print("<h3>세션생성됨:없음</h3>");
				}
			%>
           		
<!-- [1단계:확인] 3. el로 session범위로 사원 정보 사원번호, 사원명, 부서명을 저장후, 페이지가 이동해서도
           해당 정보를 출력하는 것을 확인하세요. -->
           	<%
           		session.setAttribute("e01",new Emp("홍길동",20));
           	%>
           	<input type="button" value="3번문제 확인" onclick="location.href='z01_printELsession.jsp'"/>
           <!-- z01_printELsession
           			<h2>사원명:${e01.ename}</h2>
					<h2>사원번호:${e01.deptno}</h2>
           
           
            -->
           
<!-- [1단계:확인] 4. 1~100까지 임의의 숫자를 session객체에 국어/영어/수학 점수로 할당후, el로 각 점수와 총점,
            평균, 평균70이상일때 합격 그외는 불합격을 출력하세요. -->
            
            <%
            	int kor = (int)(Math.random()*100);
            	int eng = (int)(Math.random()*100);
            	int math = (int)(Math.random()*100);
            	session.setAttribute("kor",kor);
            	session.setAttribute("eng",eng);
            	session.setAttribute("math",math);
            %>
            <h2>4번문제</h2>
            <h3>국어:${kor}</h3>
            <h3>영어:${eng}</h3>
            <h3>수학:${math}</h3>
            <h3>총점:${kor+eng+math}</h3>
            <h3 id="container4"></h3>
            <h3 id="container4_1"></h3>
            
        
            	
      
            
            
            
<!-- [1단계:개념] 5. el의 property란 무엇인가 기술하세요. -->
<!-- 
	VO를 통하여 el로 값을 받을때, 필드로 호출하는 것이 아닌 get메서드로 값을 받기에
	필드에있는 변수명은 바뀌어도 지장이없다.
	단, get메서드의 명을 다꿀경우 el에서 호출하는 name도 함께 변경되어야한다.
	ex) VO의 getName()을 el로 받을떄는 exp.name이며,
		VO의 필드에있는 private String name을 name112로 해도 el의 호출명은 그대로 exp.name이다.
		VO의 getName112() 로 변경했을 경우는 el의 호출명은 exp.name112이다.
 -->

<!-- [1단계:확인] 6. Member객체로 session객체로 할당한 후, 해당 객체를 el로 호출하여 출력하세요. -->
	<h2>6번문제</h2>
	<%
	request.setAttribute("m01", new Member("a001","홍길동",1001,"마스터"));
	%>
	
	<h2>아이디:${m01.id}</h2>
	<h2>아이디:${m01.name}</h2>
	<!-- MemberVO에서 필드의 private int point를 point002로 바꿧을 경우 -->
	<h2>아이디:${m01.point}</h2> <!-- get메서드에서 호출하기에 전혀 상관없음. -->
	<!-- MemberVO에서 getAuthority()를 authority002로 바꿧을 경우 -->
	<h2>아이디:${m01.authority002}</h2>


</body>
<script>
function makeSes(val){
	location.href="z01_makeSession.jsp?sess="+val
}
var totnum = ${(kor+eng+math)/3};
var totnumInt = parseInt(totnum)
document.querySelector("#container4").innerText="평균"+totnumInt
if(totnumInt>70){
document.querySelector("#container4_1").innerText="결과:합격"
}else{
	document.querySelector("#container4_1").innerText="결과:불합격"	
}


</script>
</html>