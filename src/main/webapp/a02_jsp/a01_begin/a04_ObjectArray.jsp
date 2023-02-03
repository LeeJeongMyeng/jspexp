<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
   
      import="jspexp.a13_database.*"    
    import="jspexp.a13_database.vo.*" 
    import="java.util.*"
    %>
  <%
  

  		
  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		//객체형 list처리..
		// 1. 구조만들기
		// 2. 리스트로 데이터 넣기
		// 3. 반복문처리하기
	  		List<Dept> dlist = new ArrayList<Dept>();
		  		dlist.add(new Dept(10,"인사","서울"));
		  		dlist.add(new Dept(20,"회계","부산"));
		  		dlist.add(new Dept(30,"총무","제주도"));
				
		  		for(int idx=0; idx<dlist.size();idx++){
		  			Dept d= dlist.get(idx);
		  			log(d.getDeptno()+":"+d.getDname()+":"+d.getLoc());
  			
  		}	
		  		
		  		
		  		
	%>
	
<table>
	<tr><th>부서번호</th><th>부서명</th><th>부서위치</th></tr>
	<%for(Dept d:dlist){ %>
	<tr><td><%=d.getDeptno() %></td><td><%=d.getDname() %></td><td><%=d.getLoc() %></td></tr>
	<%} %>
</table>

</body>
</html>