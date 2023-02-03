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

<%--
//[1단계:확인] 7. [jsp] script의 declare를 활용하여, 입력값이 70이상 일때, 합격 그외 불합격 처리하는 기는
//           메서드를 선언하고, expression으로 호출하여 처리하세요. 

--%>
<%!
	String chPass(String pt){
	String re="";
	if(pt!=null){
		try{
			int point = Integer.parseInt(pt);
			if(point>=70){
				re="합격";
			}else{
				re="불합격";
			}
		}catch(Exception e){
			re="입력데이터 이상(입력,숫자형)";
		}
	}
	return re;
}
%>
<%
	String pt = request.getParameter("pt");
%>
<form>
	점수:<input type="text" name="pt">
	<input type="submit">
</form>
	<h3><%=chPass(pt) %></h3>
</body>
<script type="text/javascript">
/*
 
*/
</script>
</html>