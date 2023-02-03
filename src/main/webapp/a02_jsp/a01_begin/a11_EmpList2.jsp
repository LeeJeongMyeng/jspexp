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
 <%

%>

</script>

</head>
<%--
 	# 서버로 요청값을 넘기기전에 client단 프로그램으로 유효성 check 처리 순서
 		1. type="submit" ==> type="button"
 		2. onclick ="send()" ==> 전송되기전에 이벤트 핸들러 함수로 check 후,
 			전송 될 수 있게 함수 호출
 		3. function send(){
 			//DOM 객체 호출
 			var in01Obj = decument.querySelector("[name=num01]");
 			var in01 = in01Obj.value
 			if(in01== ''){//공백인지 여부 check
 			
 			}
 			if(isNaN(in01)){ //숫자형이 아닌지 여부check
 			
 			}
 			==> 숫자형은 둘다 check하는 if
 			if(in01 == '' || isNaN(in01{
 				alert("공백이거나 숫자형이 아닙니다.") //메세지 처리
 				in01Obj.value""; in01Obj.focus();
 				return; // 진행프로세스 중단
 			}
 			document.querySelector("form").submit();
 		}
 --%>


<body>

<h2>사원정보</h2>
<%
 String ename=request.getParameter("ename");      if(ename==null) ename="";
 String job=request.getParameter("job");          if(job==null) job="";
 String frsal=request.getParameter("frsal");      if(frsal==null) frsal="0";
 String tosal=request.getParameter("tosal");      if(tosal==null) tosal="9999";
 double frSalID = Double.parseDouble(frsal);
 double toSalID = Double.parseDouble(tosal);
 
 A02_EmpDao dao= new A02_EmpDao();
 Emp sch = new Emp(ename, job, frSalID, toSalID);
 //초기에 전체 데이터 로딩, 입려내용에따라 검색되게 처리
%>
<form id="frm01">
	<table>
		<tr><th>사원명</th><td colspan="2"><input type="text" name="ename" value="<%=ename %>"/></td></tr>
		<tr><th>직책</th><td colspan="2"><input type="text" name="job" value="<%=job %>"/></td></tr>
		<tr><th>시작연봉</th><td><input type="text" name="frsal" value="<%=frsal %>"/></td><td><input type="text" name="tosal" value="<%=tosal %>"/></td></tr>
		<tr><td colspan="3"><input type="button" onclick="send()" value="검색"/></td></tr>
		</table>
</form>
<script type="text/javascript">
    function send(){
    	
    	var frsalObj = document.querySelector("[name=frsal]")
    	var tosalObj = document.querySelector("[name=tosal]")
    	// isNaN():숫자형인지를 학인한다.
    	// Is not a number?
    	// 숫자형일 때, false
    	//숫자형이 아닐 때, true
    	//frsalObj.value=="" :데이터를 입력하지않았을때
    	// " ".trim() : 공백제거
    	if((frsalObj.value.trim() =="") || (isNaN(frsalObj.value))){
    		alert("공백이거나, 숫자형 데이터가 아닙니다.")
    		frsalObj.value="";
    		frsalObj.focus();
    		return; //프로세스 진행방지
    	}
    	if((tosalObj.value.trim() =="") || (isNaN(tosalObj.value))){
    		alert("공백이거나, 숫자형 데이터가 아닙니다.")
    		tosalObj.value="";
    		tosalObj.focus();
    		return; //프로세스 진행방지
    	}
    	if(frsalObj.value>tosalObj.value){
    		alert("시작 범위가 마지막 범위보다 큽니다.")
    		frsalObj.value="";
    		tosalObj.value="";
    		frsalObj.focus();
    		return;
    	}
    	// 모든 유효성이 체크 되었을때, 서버로 전송처리
    	//submit()을 클릭한것과 동일한 처리.
    	document.querySelector("#frm01").submit();
    	
 
    }
</script>



		<table>
			<tr><th>사원번호</th><th>사원명</th><th>직책명</th><th>관리자번호</th><th>급여</th><th>부서번호</th></tr>
			<%
			for(Emp e:dao.getEmpSch(sch)){
			%>
			<tr>
			<td><%=e.getEmpno() %></td>
			<td><%=e.getEname() %></td>
			<td><%=e.getJob() %></td>
			<td><%=e.getMgr()%></td>
			<td><%=e.getSal()%></td>
			<td><%=e.getDeptno()%></td>

			</tr>
			<%} %>
		</table>
		
</body>
<script type="text/javascript">
/*
 1.WEB-INF 밑에 위치를 시키지 못 
*/
</script>
</html>