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
# 주요 기본 객체
	1 .request : 클라이언트의 요청 정보를 저장한다.
	2. response : 응답 정보를 저장한다.
	3. pageContext : jsp페이지에 대한 정보를 저장한다.
	4. session : HTTP세션 정보를 저장한다.
		서버와 클라이언트의 연결된 상태를 기준으로 특정 변수의 저장범위를 처리한다.
	5. application : 웹 어플리케이션에 대한 정보를 저장한다.
	6. out : jsp페이지가 생성하는 결과를 출력할 때 사용한다.
	7. config : jsp 페이지에 대한 설정 정보를 저장한다.
	8. page : jsp 페이지를 구현한 자바 클래스 인스턴스이다.
	9. exception : 예외 객체, 에러 페이지에서만 사용된다.
	
	
#session 범위에 따른 객체 : 웹에서 저장되는 페이지와 시간적인 범위에 따라 설정
		0. 아래 객체들은 공통 메서드를 통해서 저장되고 호출된다.
			setAttribute("저장키","저장값")
			getAttribute("저장키")
		1. pageContext : 한페이지 안에서만 사용가능
		2. request: 요청범위까지만 사용가능
		3. session : 세션이 지정한 만료시간까지 사용가능
		4. application : 웹서버가 기동할 때까지(재기동 전까지) 사용가능 
			
	
	#out 기본 객체
		1.jsp 페이지가 생성하는 모든 내요은 out 기본 객체를 통해서 전송할 수 있다.
		2. 복잡한 if-else사용시, out기본 객체 사용하면 편리하다.
			1) scriptlet, expression의 복잡한 사용보다, out으로 활용할 때 
				더 효율 적일때가 많다.
		
		3. 출력메서드
			1) out.print() :데이터를 출력만한다.
			1) out.println() : 데이터를 출력하고 줄바꿈처리까지 한다.
			1) out.newLine() : 줄바꿈 처리를 한다.
--%>

<h2>안녕하세요</h2>

<h2>script만 사용하는 경우</h2>

<h3>
<%for(int cnt=0; cnt<=10; cnt++){%>
<%=cnt %>,
<%} %>
</h3>

<h2>out객체 사용</h2>
<h3>
<%
for(int cnt=0; cnt<=10; cnt++){
	out.print(cnt+",");
}
%>
</h3>

<%--
 ex) cnt를 1~16까지 하여 번호가있는 테이블을 만드세요
 --%>
 <table>
 	<%
 		int cnt=0;
 	for(int row=1; row<=4; row++){
 		out.print("<tr>");
 		for(int col=1; col<=4; col++){
 			out.print("<td>"+(++cnt)+"</td>");
 		}
 		out.print("</tr>");		
 	}
 	%>
</table>

<%-- <ul>의 리스트로 배열로 선언된 과일명 출력하기 --%>
<%
	String fruits[] = {"과일1","과일2","과일3","과일4","과일5","과일6","과일7","과일8"}; %>
	
	<ul>
	<% for(String fruit:fruits){
		out.print("<li>"+fruit+"</li>");
	}%>
	</ul>

<%-- select로 option의 value/출력 내용으로  부서번호 배열 부서명 배열 출력 --%>
부서정보 <select name="depeno" onchange="alert(this.value)">
<% 
int deptnos[] = {20,30,40};
String dnames[] = {"회계","인사","총무"};

for(int cnt2=0;cnt2<deptnos.length; cnt2++){
	out.print("<option value='"+deptnos[cnt2]+"'>"+dnames[cnt2]+"</option>");
	}
%>
</select>

<%-- h3로 무지개색 배경색상과 함께 출력하기 --%>
<%
String colors[] = {"red","orange","yellow","green","blue","indigo","purple"};
	for(String color:colors){
		out.print("<h2 style='background-color:"+color+";'>"+color+"</h2>");
	}
%>

<%-- span태그로 물건명을 3개 출력하되 테두리 색상을 초록색 글자색은 파랑색/노랑색/보라색으로 처리 --%>
<%
	String pname3[]={"모니터","키보드","마우스"};
	String color[]={"blue","yellow","purple"};
	String bordcolor="blue";
%>

<h2>
<%for(int cnt12=0; cnt12<pname3.length; cnt12++){%>
<span style='color:<%=color[cnt12]%>; border:1px solid <%=bordcolor %>;'><%=pname3[cnt12] %> </span>
<%} %>
</h2>

<%-- table로 (2x3) 3의 배수를 출력, 배경 색상 짝수 cel마다 pink색 --%>
<style>
	#exp23 td:nth-child(2n){
		background-color:pink;
	}
</style>
<table id="exp23">
	<%
	int number=0;
	for(int cnt3=0; cnt3<=2;cnt3++){
		out.print("<tr>");
		for(int cnt4=0; cnt4<=1;cnt4++){
			out.print("<td>"+(number+=3)+"</td>");
		}
		out.print("</tr>");
		}	
	%>
</table>
<%--table로 타이틀<물건명/가격/갯수> 5개 row로 각 cel마다 물건명/가격은 input, 갯수는 0~9까지 있는 select만들기--%>
<h2>입력하는 테이블 리스트</h2>
<%
List<Product> plist =new ArrayList<Product>();
plist.add(new Product("사과",3000,2));
plist.add(new Product("바나나",5000,3));
plist.add(new Product("딸기",6000,7));
plist.add(new Product("딸기",6000,7));
plist.add(new Product("딸기",6000,7));
plist.add(new Product("딸기",6000,7));
plist.add(new Product("딸기",6000,7));
%>




<table>
   <tr><th>선택</th><th>물건명</th><th>가격</th><th>갯수</th></tr>
   <%for(int idx=0;idx<plist.size();idx++){
      Product p = plist.get(idx);      
   %>
   <tr><td><input type="checkbox" name="ch" value="<%=idx%>"
   <%=idx%2==0?"checked":"" %>/></td>
      <td><input type="text" name="name" value="<%=p.getProduct()%>"/></td>
      <td><input type="text" name="price" value="<%=p.getPrice()%>"/></td>
      <td><select name="cnt">
         <%for(cnt=0;cnt<=9;cnt++){ %>
         <option <%=cnt==p.getCnt()?"selected":"" %>><%=cnt%></option>
         <%} %>
         </select></td></tr>
      <%} %>

      
</table>
      <br>
      <select> 
         <option>사과</option>
         <option>바나나</option>
         <option selected>딸기</option>
         <option>망고</option>
         <option>오렌지</option>
      </select>



<%-- ex) 사원번호, 사원명, 급여, 부서명(select) 테이블 form --%>
<%
List<Emp> elist =new ArrayList<Emp>();
elist.add(new Emp(1111,"이정명",1901,10));
elist.add(new Emp(1112,"김정명",1902,20));
elist.add(new Emp(1113,"박정명",1903,30));
elist.add(new Emp(1114,"최정명",1904,40));
elist.add(new Emp(1115,"홍정명",1905,20));
%> 

<form>
	<table>
	<%for(int idx=0;idx<elist.size();idx++){
		Emp e = elist.get(idx);      
   %>
		<tr>
		<td><input type="checkbox" name="ch2" value="<%=e.getEmpno()%>"></td>
		<td><input type="text" name="empno" value="<%=e.getEname() %>"></td>
		<td><input type="text" name="ename" value="<%=e.getSal()%>"></td>
		<td><input type="text" name="sal" value="<%=e.getDeptno()%>"></td>
		<td><select name="deptno">
				<option value="10" <%=e.getDeptno()==10?"selected":"" %>>인사</option>
				<option value="20" <%=e.getDeptno()==20?"selected":"" %>>재무</option>
				<option value="30" <%=e.getDeptno()==30?"selected":"" %>>회계</option>
				<option value="40" <%=e.getDeptno()==40?"selected":"" %>>기획</option>
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