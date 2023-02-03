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
<h2>사원정보등록</h2>
<%
String empno = request.getParameter("empno");
int empnoInt=0;
if(empno!=null && !empno.equals("")) empnoInt = Integer.parseInt(empno);

String ename = request.getParameter("ename"); if(ename==null) ename="없음";

String job = request.getParameter("job"); if(job==null) job="없음";

String mgr = request.getParameter("mgr");
int mgrInt=0;
if(mgr!=null  && !mgr.equals("")) mgrInt = Integer.parseInt(mgr);

String sal = request.getParameter("sal");
Double salInt=0.0;
if(sal!=null && !sal.equals("")) salInt = Double.parseDouble(sal);
String comm = request.getParameter("comm");
Double commInt=0.0;
if(comm!=null && !comm.equals("")) commInt = Double.parseDouble(comm);
String deptno = request.getParameter("deptno");
int deptnoInt=0;
if(deptno!=null && !deptno.equals("")) deptnoInt = Integer.parseInt(deptno);
	boolean isInsert=false;
	//입력 후, 등록 버튼을 클릭했을 때, 처리할 내용
	if(empno!=null && !empno.equals("")){
		Emp ins = new Emp(empnoInt,ename,job,mgrInt,salInt,commInt,deptnoInt);
		A02_EmpDao Edao= new A02_EmpDao();
		Edao.insertEmp2(ins);
		isInsert = true;
	}
%>
<script>
///jsp (java) ==> js로 전환되어 js의 여러가지 프로그램철
var isInsert = <%=isInsert%>;
if(isInsert){
	if(confirm("등록성공 \n조회화면으로 이동하시겠습니까?")){
		location.href="../../hoomwork/a04_1117.jsp";
	}
}

</script>

<form>
 			사원번호 <input type="text" name="empno"/>
 			사원명 <input type="text" name="ename"/>
 			직책명 <input type="text" name="job"/>
 			관리자번호 <input type="text" name="mgr"/>
 			급여 <input type="text" name="sal"/>
 			급여 <input type="text" name="comm"/>
 			부서번호 <input type="text" name="deptno"/>
 				<input type="submit" value="등록"/>
</form>



</body>
<script type="text/javascript">
/*
 
*/
</script>
</html>