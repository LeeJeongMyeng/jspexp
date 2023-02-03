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


<style>td{width:33%;height:33%;}</style>

<h2>두개의 장바구니에 담기</h2>
<select name="cart">
   <option value="cart1">장바구니1</option>
   <option value="cart2">장바구니2</option>
</select>
<table>
   <%
   String []fruits = {"사과","바나나","수박","오랜지","귤","딸기","키위","망고","체리"};
   for(int idx=0;idx<fruits.length;idx++){
      if(idx%3==0) out.print("<tr>");
      out.print("<td onclick='ch01(this.innerText)'>"+fruits[idx]+"</td>");
      if(idx%3==2) out.print("</tr>");
   }
   %>
</table>
<iframe name="cart01" src="z23_sub.jsp" height="200px"></iframe>
<iframe name="cart02" src="z24_sub.jsp" height="200px"></iframe>

<script type="text/javascript">  
function ch01(fruit){
   var chCart = document.querySelector("[name=cart]").value
   
   if(chCart=="cart1")cart01.document.body.innerHTML+=fruit+","
   if(chCart=="cart2")cart02.document.body.innerHTML+=fruit+","
}
</script>
</body>
<script type="text/javascript">
/*
 
*/
</script>
</html>