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
<h2>부서정보등록</h2>
<%
// 초기 로딩 되었을때도 수행되지만 요청값이 없기에 조건에 해당하지 않아서
// 화면 로딩만 된다. 입력값을 입력 후, submit클릭시 조건에 해당하기에 DB처리를 할 수 있게 된다.
String grade = request.getParameter("grade");
String lowsal = request.getParameter("lowsal");
String hisal = request.getParameter("hisal");
	int gradeInt=0;
	if(grade!=null) gradeInt = Integer.parseInt(grade);
	int lowsalInt=0;
	if(lowsal!=null) lowsalInt = Integer.parseInt(lowsal);
	int hisalInt=0;
	if(hisal!=null) hisalInt = Integer.parseInt(hisal);

	boolean isInsert=false;
	//입력 후, 등록 버튼을 클릭했을 때, 처리할 내용
	if(grade!=null && !grade.equals("")){
		SalGrade ins = new SalGrade(gradeInt,lowsalInt,hisalInt);
		A04_salgrade SGdao= new A04_salgrade();
		SGdao.insertGrade(ins);
		isInsert = true;
	}
%>
<script>
///jsp (java) ==> js로 전환되어 js의 여러가지 프로그램철
var isInsert = <%=isInsert%>;
if(isInsert){
	if(confirm("등록성공 \n조회화면으로 이동하시겠습니까?")){
		location.href="../../hoomwork/a04_1117.jsp ";
	}
}

</script>

<form>
 			등급 <input type="text" name="grade" "/>
 			최저연봉 <input type="text" name="lowsal"/>
 			최저연봉 <input type="text" name="hisal"/>
 				<input type="submit" value="등록"/>
</form>

</body>
<script type="text/javascript">
/*
 
*/
</script>
</html>