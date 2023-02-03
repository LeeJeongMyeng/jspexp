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
 2022-11-25
[2단계:확인] 1. [jsp] 회원등록리스트(회원아이디,회원명,포인트,권한(select-관리자/일반사용자/방문객))로 출력 리스트를 처리하세요.
*/
</script>

</head>
<body>

<%
List<Member> mlist = new ArrayList<Member>();
mlist.add(new Member("A0001","이정명",1000,"관리자"));
mlist.add(new Member("A0002","김정명",2000,"일반사용자"));
mlist.add(new Member("A0003","박정명",3000,"일반사용자"));
mlist.add(new Member("A0004","나정명",4000,"방문객"));
%> 

<form>
	<table>
	<%for(int idx=0;idx<mlist.size();idx++){
		Member m = mlist.get(idx);      
   %>
		<tr>
		<td><input type="checkbox" name="id" value="<%=m.getId()%>"></td>
		<td><input type="text" name="name" value="<%=m.getName() %>"></td>
		<td><input type="text" name="point" value="<%=m.getPoint()%>"></td>
		<td><input type="text" name="auth" value="<%=m.getAuthority()%>"></td>
		<td><select name="deptno">
				<option value="관리자" <%=m.getAuthority()=="관리자"?"selected":"" %>>관리자</option>
				<option value="일반사용자" <%=m.getAuthority()=="일반사용자"?"selected":"" %>>일반사용자</option>
				<option value="방문객" <%=m.getAuthority()=="방문객"?"selected":"" %>>방문객</option>

		</select></td><tr>
		 <%} %>
	</table>
</form>

</body>
<script type="text/javascript">
/*
 
*/
</script>
</html>