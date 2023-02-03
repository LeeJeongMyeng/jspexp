<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
  import="java.util.*"  
   
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
<h2>부서정보등록</h2>

<%--
1. 초기화면 (페이지가 이동되었을 때)
	a13_DeptInsertForm.jsp
	요청값이 없음
	

2. 입력값이 있는 화면 (등록 처리시)
	a13_DeptInsertForm.jsp?deptno=&dname=&loc=


3. 위 두가지 처리 화면을 구분하기 위해서
	String deptnoS = request.getParameter("deptno");
	if(deptnoS==null){ //초기화면
	
	}else{ //입력버튼을 클릭한 화면
	
	}
	

 --%>






<%
// 초기 로딩 되었을때도 수행되지만 요청값이 없기에 조건에 해당하지 않아서
// 화면 로딩만 된다. 입력값을 입력 후, submit클릭시 조건에 해당하기에 DB처리를 할 수 있게 된다.
String deptno = request.getParameter("deptno");
	int deptnoInt=0;
	if(deptno!=null && !deptno.equals("")){
		try{
		deptnoInt = Integer.parseInt(deptno);
		}catch(Exception e){
			log(e.getMessage());
		}
	} 
	String dname = request.getParameter("dname"); if(dname==null) dname="";
	String loc = request.getParameter("loc"); if(loc==null) loc="";
	boolean isInsert=false;
	//입력 후, 등록 버튼을 클릭했을 때, 처리할 내용
	if(deptno!=null && !deptno.equals("")){
		Dept ins = new Dept(deptnoInt,dname,loc);
		A06_PareparedDao Rdao= new A06_PareparedDao();
		Rdao.insertDept(ins);
		isInsert = true;
	}
%>
<script>
///jsp (java) ==> js로 전환되어 js의 여러가지 프로그램철
var isInsert = <%=isInsert%>;
if(isInsert){
	if(confirm("등록성공 \n조회화면으로 이동하시겠습니까?")){
		location.href="a12_DeptList.jsp ";
	}
}
function ckValid(){
	var deptno = document.querySelector("[name=deptno]")
	var deptnoV =deptno.value.trim();
	var dname = document.querySelector("[name=dname]")
	var dnameV =dname.value.trim();
	var loc = document.querySelector("[name=loc]")
	var locV =loc.value.trim();
	if(deptnoV=="" || isNaN(deptnoV)){
		alert("부서번호는 공백이 아니거나 숫자형이어야 합니다.")
		deptno.value=""; deptno.focus()
		return;
	}
	if(dnameV=="" || isNaN(dnameV)){
		alert("부서명는 공백이 아니어야 합니다.")
		dname.focus()
		return;
	}
	if(locV=="" || isNaN(locV)){
		alert("부서위치는는 공백이 아니이어야 합니다.")
		loc.focus()
		return;
	}
	document.querySelector("form").submit();
}
</script>

<form>
 			부서번호 <input type="text" name="deptno"/>
 			부서명 <input type="text" name="dname"/>
 			부서위치 <input type="text" name="loc"/>
 				<input type="button" onclick="ckValid()" value="등록"/>
</form>



</body>
<script type="text/javascript">
/*
 
*/
</script>
</html>