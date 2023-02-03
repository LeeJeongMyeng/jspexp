<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"    
   import="jspexp.a13_database.*"   
    import="jspexp.a13_database.vo.*"  
   %>
<%request.setCharacterEncoding("utf-8");%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:requestEncoding value="utf-8"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="/a00_com/a01_common.css" rel="stylesheet">
<style type="text/css">
/*

*/

</style>
<script>

</script>
</head>
<body>
<%
String ename= request.getParameter("ename");if(ename==null) ename="";
String job=request.getParameter("job");if(job==null) job="";
String frSal=request.getParameter("frSal");if(frSal==null) frSal="0";
String toSal=request.getParameter("toSal");if(toSal==null) toSal="9999";
double frSalD =Double.parseDouble(frSal);
double toSalD =Double.parseDouble(toSal);

A02_EmpDao dao=new A02_EmpDao();/* 전체내용 */
Emp sch=new Emp(ename, job, frSalD, toSalD);
//초기에 전체 데이터 로딩, 입력 내용에 따라서 검색되게 처리 
%>





	<h2>사원정보 조회</h2>
<!-- 	<table>
		<tr><th>사원명</th><td colspan="2"><input class="sch" type="text" name="ename" value=""/></td></tr>
		<tr><th>직책</th><td colspan="2"><input class="sch" type="text" name="job" value=""/></td></tr>
		<tr><th>시작연봉</th><td><input class="sch" type="text" name="frsal" value="0"/></td><td>
							<input class="sch" type="text" name="tosal" value="99999"/></td></tr>
		<tr><td colspan="3"><input type="button" id="schBtn" value="검색"/></td></tr>
		</table> -->
	<input type="button" id="schBtn" value="검색"/>
	<div id="container"></div>
	
	
</body>
<script type="text/javascript">
/*
  #비동기적으로 화면 로딩 처리
 */
 
 
 
 
 
 
 
 
 
/*  var enameOb=document.querySelector("[name=ename]")
 var jobOb=document.querySelector("[name=job]")
 var frsalOb=document.querySelector("[name=frsal]")
 var tosalOb=document.querySelector("[name=tosal]")
 var schArr=document.querySelectorAll(".sch")
 var schBtn=document.querySelector("#schBtn")
 schArr.forEach(function(sch){
	 sch.onkeyup=function(){
		 if(event.keyCode==13){
			 search()}
	 }
 }) */
 
 
 schBtn.onclick= search //검색버튼 클릭시
		function search(){
		loadData()
	 }
	
 

function loadData(){
	 var xhr = new XMLHttpRequest()
	 xhr.open("get","z05__Emplist2.jsp",true) //비동기 방식으로 화면
	 xhr.send()
	 // 비동기 이벤트 선언 및 핸들러 할당.
	 //XMLHTTP의 상대(readystate)가 변경될 떄 마다 (on chang라는 의미
	 xhr.onreadystatechange=function(){
		 // 전송상태check :readyState : 4 전송완료
		 // http반응 코드가 에러가없는  200일때,
		 if(xhr.readyState==4&& xhr.status==200){
			 console.log(xhr.responseText)
			 document.querySelector("#container").innerHTML = xhr.responseText
		 }
	 }
} 
 



// 
</script>
</html>