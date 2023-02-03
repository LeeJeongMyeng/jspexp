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



<!-- [1단계:개념] 1. 배열형 DOM객체의 속성 처리 방식을 기본예제로 기술하세요. -->
		
  		<!-- document.querySelectorAll("다중의 선택자") 
  		태그,#id,.class로 선택이 가능하다.
  		단, id의 경우는 단일지정이기때문에 All은 뺴야함.
  	2. 배열문과 반복 처리
  		domArry[0]: 개별적인 단위 DOM객체	
  		domArry[1]: 개별적인 단위 DOM객체	
  	
  		for(var idx=0; idx<배열.length; idx++)
  			// 각 DOM의 데이터 처리
  			domArry[idx].innerText = "입력데이터" -->
  			
<!-- [1단계:확인] 2. 월드컵 16강 팀들을 배열로 리스트하고, 8X2 테이블에 DOM으로 출력하세요  -->
			<h2>2번문제</h2>
			<table id="tab02">
				<tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr>
				<tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr>
			</table>

<!-- [1단계:확인] 3. 사원번호/사원명 5개,  부서번호와 부서명4개를 json데이터를 선언하고,
 하나는 테이블에 하나는 select의 option에 레이블과 value로 출력해보세요 -->
 <h2>3번문제</h2>
<table id="tab03">
<tr><th>사원명</th><th>사원번호</th><th>부서명(부서번호)</th></tr>
<tr><td></td><td></td><td></td></tr>
<tr><td></td><td></td><td></td></tr>
<tr><td></td><td></td><td></td></tr>
<tr><td></td><td></td><td></td></tr>
<tr><td></td><td></td><td></td></tr>
</table> 

<h2>처리 2번방법</h2>



<%-- [1단계:개념] 4. 예외 처리하는 형식(페이지 지정, 서버단위) 내용을 기본 예제를 통해서 설명하세요.  --%>
						<%--
						1. 페이지 지정단위
							에러 노출 시킬 페이지: errorPage="z51_errPage.jsp"
							에러 발생 처리 페이지: isErrorPage="true" 
						
						2. 서버 단위
							web.xml에
						1)
							<error-page>
						  	<error-code>404</error-code>
						  	<location>/a02_jsp/a05_error/z03_404Error.jsp</location>
						    </error-page>
						2)
							<error-page>
						  	<exception-type>java.lang.NullPointerException</exception-type>
						  	<location>/a02_jsp/a05_error/z04_nullException.jsp</location>
						    </error-page>
						
						 --%>
<%-- [1단계:확인] 5. z55_errPage.jsp로 에러 페이지를 지정하고, z51_callError.jsp 지정된 페이지로 에러가 호출되게 처리해보세요. --%>
					<%--
					 errorPage="z51_errPage.jsp"  로 에러를 노출 시킬 페이지에 삽입하여 에러 발생시 해당페이지로 유도.
					 
					* z51에러페이지에서는 해당 에러에 대한 정보를 띄우도록함.
					 <%if(exception!=null){ %>
					<h2>에러가 발생했습니다.</h2>
					<table>
						<tr><td>에러 타입:<%=exception.getClass().getName() %></td></tr>
						<tr><td>에러 타입:<%=exception.getMessage() %></td></tr>
						<tr><td>불편을 끼쳐드려 죄송합니다.</td></tr>
						<tr><td>잠시 기다리시면 조속히 처리하도록 하겠습니다.</td></tr>
						<tr><td>담당자 : 홍길동 사원(010-0000-0000)</td></tr>
					</table>
					<%}else{ %>
						<h2>아직 예외 없음/테스트용</h2>
					<%} %>
					
					
					--%>
<%-- [1단계:확인] 6. 새로운 프로젝트를 web.xml 파일과 함께 만들어서 404, 500 에러를 페이지를 지정하여 대체 화면으로 처리하세요. --%>
					<%--
						  <error-page>
  							<error-code>404</error-code>
						  	<location>/a01_exp/z01_404Error.jsp</location>
						  </error-page>
						  
						  <error-page>
						  	<error-code>500</error-code>
						  	<location>/a01_exp/z02_500Error.jsp</location>
						  </error-page>
					 --%>
<%-- [1단계:확인] 7. 위 프로젝트에 NullPoinerException, ArrayIndexOutBoundsException을 처리하는 에러페이지를 만들고 
			web.xml에 등록하고 테스트를 통해서 해당 화면이 나타나게 하세요. --%>
			<%--
			 <error-page>
			  	<exception-type>java.lang.NullPointerException</exception-type>
			  	<location>/a01_exp/z03_NullPointer.jsp</location>
			  </error-page>
			  <error-page>
			  	<exception-type>java.lang.NumberFormatException</exception-type>
			  	<location>/a01_exp/z04_NumberFormat.jsp</location>
			  </error-page>
			 --%>
</body>
<script type="text/javascript">

var tab02 = document.querySelectorAll("#tab02 td")
var players = ["네덜란드","미국","아르헨티나","호주","일본","크로아티아","브라질","한국"
				,"잉글랜드","세네갈","프랑스","폴란드","모로코","스페인","포르투갈","스위스"]
for(var idx=0; idx<tab02.length;idx++){
	tab02[idx].innerText=players[idx]
}



var tab03 = document.querySelectorAll("#tab03 td")
var emp=[{ename:"홍길동",empno:1001},{ename:"신길동",empno:1002},{ename:"이길동",empno:1003},{ename:"박길동",empno:1004},{ename:"김길동",empno:1005}]
var dept=[{dname:"회계",deptno:10},{dname:"생산",deptno:20},{dname:"연구",deptno:30},{dname:"영업",deptno:40}]


var show03 = "<select onchange='alert(this.value)'>"
dept.forEach(function(dp,idx){
	show03 +="<option value='"+dept[idx].deptno+"'>"+dept[idx].dname+"</option>"
})
	show03+="</select>"

emp.forEach(function(ep,idx){
	var tdIdx = idx*3
	tab03[tdIdx].innerText = emp[idx].ename
	tab03[tdIdx+1].innerText = emp[idx].empno
	tab03[tdIdx+2].innerHTML = show03
	})
	




</script>
</html>