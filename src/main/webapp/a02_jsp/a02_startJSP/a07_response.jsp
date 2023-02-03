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
	#response 기본 객체
		1. 웹 브라우저에 전송하는 응답 정보 설정
		2. 주요 기능
			1) 헤더 정보 입력
			2) 리다이렉트 처리
		3. 기능메서드
			1) addDateHeader(String name, long date)
				name 헤더에 date를 추가 처리 1971/1/1 기준 1/1000초 단위 설정
			2) addHeader(String name, String value)
				name 헤더에 value를 값으로 추가한다.
			3) adIntHeader(String name, in value)
				name 헤더에 정수값 value를 추가한다.
			4) setDateHeader(String name, long date)
				name 헤더의 값을 date로 지정한다. date는 1970년1월1일 이후 흘러간 시간을
				1/1000초 단위로 나타낸다.
			5) setHeader(String name, String value)
				name 헤더의 값을 value로 지정한다.
			6) setIntHeader(String name, int value)
				name 헤더의 값을 정수 값 value로 지정한다.
		4. 리다이렉트
			1) 특정 페이지로 이동하라고 웹 브라우저에 응답
			2) 서버 안에서 명령문으로 특정 페이지로 이동 처리
				response.sendREdirect(String location)
				요청에 의해서 데이터를 전송하고 그 전송된 내용이 판단에 의해서
				페이지가 결정될때.. 
			  ex)로그인의 경우, DB내용에 따라 페이지 결정
				 
			 cf) location.href="이동페이지" 브라우저에서 특정한 페이지로 이동 처리
			 		화면에 클릭하여 페이지이동, 메뉴이동은 js, a href처리
--%>


		<h2> redirect와 location.href의 차이</h2>
		<h3>redirect</h3>
		<form>
			이동할 페이지
			<select name="page01">
				<option value="a07_admin.jsp">관리자 페이지</option>
				<option value="a07_normal.jsp">일반 사용자 페이지</option>	
			</select>
			<input type="submit" value="이동(서버단)">
			<input type="button" value="이동(클라이언트단)" onclick="gopage()">
		</form>
		
		<%
			String page01 = request.getParameter("page01");
			if(page01!=null){
				//서버단에서 요청값에 따라 특정 페이지를 이동해서 출력처리
				//서버단에서는 DB처리, java로직 처리 등
				response.sendRedirect(page01);
			}
			//form화면에 아이디 패스워드를 입력해서 해당 서버로 이동하여 해당 요청값이 'himan/7777'일 떄는
			// 메인페이지 니동(a07.main.jsp),그렇지 않으면 현재 페이지(a07_response.jsp)에 있게 처리하세요
		%>
		


</body>
<script type="text/javascript">
	 function gotoLogin(){
		var Id = document.querySelector("[name=id]").value
		var Pass = document.querySelector("[name=pass").value
		
		if(Id.equlas('himan')&&Pass.equlas('7777')){
			location.href="a07_main.jsp";
		}else{
			alert("정보가 일치하지않습니다.")
		}
		
	} 

		
	function goPage(){
		// 서버단에 가지않고, 여기서 바로 특정 자원으로 location.href를 통해서 처리
		var page01Ob = document.querySelector("[name=page01]").value
		location.href=page01Ob.value
	}
</script>
</html>