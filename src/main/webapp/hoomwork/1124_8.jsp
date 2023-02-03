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

<%--7번
<style> css 메뉴 리스트 
for문 배열 처리. 
<ul><li><a href="#">메뉴내용</a></li></ul>
--%>
<style>span{border-radius:5px;padding:5px;}
</style>
<%
String []menus={"로그인","메인화면","상품분류1","상품분류2","관리자"};
String []bks={"orange","pink","yellowgreen","aliceblue","silver"};
for(int idx=0;idx<menus.length;idx++){
%>
   <span style='background:<%=bks[idx]%>'><%=menus[idx] %></span>
   
<%} %>
<%--8번--%>
<td >

<h2>2x3</h2>
<table>
<%
for(int cnt=1;cnt<=6;cnt++){
   if(cnt%3==1)out.print("<tr>");
   out.print("<td style='background:"+(cnt%2==0?"yellow":"pink")+"'>"+cnt*2+"</td>");
   if(cnt%3==0)out.print("</tr>");
}
%>
</table>
<h2>3x4</h2>
<table>
<%
for(int cnt=1;cnt<=12;cnt++){
   if(cnt%4==1)out.print("<tr>");
   out.print("<td style='background:"+(cnt%2==0?"yellow":"pink")+"'>"+cnt*4+"</td>");
   if(cnt%4==0)out.print("</tr>");
}
%>
</table>
<h2>5x2</h2>
<table>
<%
for(int cnt=1;cnt<=10;cnt++){
   if(cnt%2==1)out.print("<tr>");
   out.print("<td style='background:"+(cnt%2==0?"yellow":"pink")+"'>"+cnt*5+"</td>");
   if(cnt%2==0)out.print("</tr>");
}
%>
</table>
</body>
<script type="text/javascript">
/*
 
*/
</script>
</html>