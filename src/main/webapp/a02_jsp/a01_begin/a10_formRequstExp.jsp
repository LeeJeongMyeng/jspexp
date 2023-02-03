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

<%--
# ex) 영화명, 가격 관람인원을 입력받아서 영화명과 총관람비용을 하단 테이블에 출력
--%>
	<form>
		영화명:<input type="text" name="mname">
		가격:<select name="price">
			<option value="10000">일반(10000)</option>
			<option value="15000">3D(15000)</option>
			<option value="20000">4D(20000)</option>
			</select>
		관람인원:<select name="cnt">
				<%for(int cnt=1;cnt<=10;cnt++){ %>
				<option><%=cnt %></option>
				<%} %>
			</select>
			<input type="submit">
	</form>
	
	<%
	
	// a10_formRequestExp.jsp
	// 1. 초기 로딩된 페이지와
	// 2. 요청값을 전달 후 만들어진 페이지는 다른 모양으로 나오는 초기화면과 요청값을 받은 후 나오는 2개의 논리적 페이지를 포함하고있다.
		String mname=request.getParameter("mname");
			if(mname==null) mname="";
		String price=request.getParameter("price");
			if(price==null) price="0";
		String cnt=request.getParameter("cnt");
			if(cnt==null) cnt="0";
		int priceInt=Integer.parseInt(price);
		int cntInt=Integer.parseInt(cnt);
		int totprice = priceInt*cntInt;
	%>
	<table>
		<tr><th>영화제목</th><td><%=mname %></td></tr>
		<tr><th>가격</th><td><%=priceInt %></td></tr>
		<tr><th>관람인원</th><td><%=cntInt %></td></tr>
		<tr><th>총금액</th><td><%=totprice %></td></tr>
	
	</table>
	
	<%--
		#숫자형 데이터 요청값처리
			1.default 변수 선언.
				int num01=0;
			2. 요청값 설정
				String num01S = request.getParameter("num01");
			3. 해당 요청 데이터가 있을때, 형번환 처리
				if(num01S!=null) num01 = Integer.parseInt(num01S);
	
		#함수형 처리 (기능 메서드 선언)
			int chInt(String req){
				int num = 0;
				if(req!=null || req.equals("")) num = Integer.parseInt(req);
				return num;
			}
			
		int num01 = chInt(request.getParameter("num01"));	
		int num01 = chInt(request.getParameter("num01"));	
	 --%>
	
</body>
<script type="text/javascript">
/*
 
*/
</script>
</html>