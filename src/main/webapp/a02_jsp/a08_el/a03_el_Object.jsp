<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
  import="java.util.*"  
  import="jspexp.vo.*"  
   import="jspexp.a13_database.vo.*"
    %>
  <%
  request.setCharacterEncoding("utf-8");
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
# el활용한 VO객체 처리
	1.el은 VO객체를 property라는 개념으로 접근해서 호출할 수 있다.
	2. 저장시, 호출시
		1) scope에 따른 객체로 저장
			request.setAttribute("p01",new Person());
		2) 가져올 때..
			기존: <%=p01.getName()%>
			el: ${p01.name} 필드를 호출하는 것이 아님 getNmae()
			get 삭제 Name()==>name변경해서 처리..
			
			VO 필드를 name01로 바꿔도 접근 가능..?
				getName() ==> getName88()  ${p01.name88}
				==> el은 없으면 nullpointer처리하지않고 없는대로 출력함
				(조건문을 처리하지 않아도 된다는 의미)
--%>
<%
	request.setAttribute("p01", new Person("홍길동",25,"서울"));
	request.setAttribute("d01", new Dept(20,"회계","인천"));
%>

<h2>이름:${p01.name }</h2>
<h2>나이:${p01.age }</h2>
<h2>사는곳:${p01.loc }</h2><br>
<h1>부서정보</h1>
<h2>사는곳:${d01.deptno }</h2>
<h2>사는곳:${d01.dname }</h2>
<h2>사는곳:${d01.loc }</h2>
</body>
<script type="text/javascript">
/*
 
*/
</script>
</html>