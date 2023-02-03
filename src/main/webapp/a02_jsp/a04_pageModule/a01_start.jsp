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

<%--
	#페이지 모듈화 및 요청 흐름처리
		1.jsp는 외부페이지를 모듈화 하여 포함되어 처리할 수 있다.
			jsp ==> java라는 개념에 의해, 외부의 다른 컴파일된 파일을 포함시켜서 처리하는 방법과 
			포함되어서 하나의 컴파일로 파일을 처리하는 방법으로, 두가지 방식의 사용이 가능하다.
		
			1) 독립된 java파일을 호출하여 처리하는 경우
				<jsp:incalude액션 태그>
				다른 객체이기에 데이터를 전달할 떄도 요청값 형식으로 전달한다.
			2) 현재 페이지에서 포함시켜 결국은 하나의 jsp로 만들어 처리하는 경우
				include 디렉티브
				같은 파일로 생각해서 변수를 위에서 아래로의 흐름에 따라 선언해서 사용하면된다.
				
		2. 그외에서 request의 forward개념으로 현재 페이지를 호출하지만 요청값을 가지고, 특정한 페이지로
			이동처리하는 jsp의 액션태그인 jsp:forward가 있다. --%>
		
		
		<jsp:forward page="a01_page.jsp"></jsp:forward>
		<%
		//위 내용으로 화면 전환에 문제가 있을 경우에는 어래의 java코드를 처리함
			RequestDispatcher
				rd = request.getRequestDispatcher("a01_page.jsp");
			rd.forward(request,response);
			//request범위로 데이터를 가지고 있으려면, 이렇게 매번 forward처리해야 하능하지만,
			// session은 a href나 response.sendRedirect()로 이동하더라도
			// session값을 가지고 있을 수 있다.
		%>
		
		
			
	<%--		
	# jsp:include 액션태그
		1. 다른 jsp페이지의 실행결과를 현재 위치에 삽임
		2. 기본형식
			1) <jsp:include page="포함할 페이지" flush="true"/>
			2) page 속성: 포함할 외부 jsp페이지 
			3) flush속성: 지정한 jsp페이지를 실행하기 전에 출력 버퍼를 플러시 할 지의 여부를 지정한다.
			     true는 출력 버퍼를 플러시 하고 false이면 하지 않는다.	
			ps) 버퍼개념 - 화면을 구현하는데 어느정도의 데이터가 있는 패킷(데이터단위)가 있어야 표현이 되는데,
				네트워크 속도가 좋지 않을 때, 현재화면을 조금씩 로딩하는것보다 모든내용을 다 받아서 로딩하는것이
				효율 적일 때, 버퍼라는 메모리를 써서 한꺼번에 출력하는 것이다.
				ex) 비유 - 1톤의 물을 이용해서 우물을 환성할 때, 조금씩 양동이를 가지고 나르다가, 다 차게되면 보여주는방식	  
		3. <jsp:param>액션 태그
			1) 신규 파라미터를 추가하는데 사용
				<jsp:param name="파라미터이름" value="값"/>
				
	#<jsp:include>액션 태그와 include 디렉티브
		1.<jsp:include>
			1)요청시간에 처리
			2) 별도의 파일로 요청 처리 흐름을 이동
			3) request 기본 객체나 <jsp:param>을 이용한 파라미터 전달
			4) 화면의 레이아웃의 일부분을 모듈화 할때, 주로 사용된다.
		2.<include 디렉티브>
			1) jsp파일을 자바 소스로 변환할 때 처리
			2) 현재 파일에 삽입시킴
			3) 페이지 내에 변수를 선언 후 , 변수에 값 저장
			4) 다수의 jsp페이지에서 공통으로 사용되는 변수를 지정하는 코드나 저작권 같은 문장을 포함한다.
--%>
<h2>include 액션 페이지 호출</h2>
<div style="border:1px solid blue">
	<jsp:include page="a02_subPage.jsp">
		<jsp:param value="사과" name="name"/>
		<jsp:param value="3000" name="price"/>
		<jsp:param value="4" name="cnt"/>
	</jsp:include>
</div>
</body>
<script type="text/javascript">
/*
 
*/
</script>
</html>