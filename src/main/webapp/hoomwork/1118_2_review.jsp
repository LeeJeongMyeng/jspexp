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
 #개발 순서
  1. 필요로하는 조회조건 SQL작성 ==> 동작이되는 쿼리인지 확인
  2. 회원리스트 기능 메서드 Dao 확인
  	SELECT * FROM MEMBER
	WHERE name LIKE '%'||'이'||'%'
	and authority LIKE '%'||'관'||'%'
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
 	String name = request.getParameter("name"); if(name==null) name="";
 	String authority = request.getParameter("authority"); if(authority==null) authority="";
 	Member sch = new Member(name,authority);
 	A06_PareparedDao dao= new A06_PareparedDao();
 %>
 <form>
 	회원명:<input type="text" name="name" value="<%=name %>">
 	 관리:<input type="text" name="authority" value="<%=authority %>">
 	<input type="submit" value="검색">
 </form>
 <table>
 	<tr><th>아이디</th><th>권한</th><th>이름</th><th>비밀번호</th><th>포인트</th></tr>
 	<%for(Member m:dao.getMemberList(sch)){ %>
 	<tr><th><%=m.getId() %></th><th><%=m.getAuthority() %></th><th><%=m.getName() %></th><th><%=m.getPass() %></th><th><%=m.getPoint() %></th></tr>
 	<% }%>
 </table>
</body>
<script type="text/javascript">

</script>
</html>