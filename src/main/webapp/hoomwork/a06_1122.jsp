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



<h2>3번문제</h2>
<form id="emplist">
	사원명:<input type="text" name="ename">
	사원번호:<input type="text" name="empno">
	부서번호:<input type="text" name="deptno">
	<input type="submit">
</form>
<%
	//요청 값이 가변적일 때, 처리되는 객체로 요청 키들을 가지고 온다.
		Enumeration e = request.getParameterNames();
		while(e.hasMoreElements()){
			String key=(String)e.nextElement(); //요청키를 가지고온다.
			String value=request.getParameter(key); //요칭키를 가지고 온다.
	%>
		<h3>3번문제<%=key %>:<%=value %></h3>
	<%} %>
	
	
	
	
	
	
<h2>4번문제</h2>
<%
int totnum01=0;
int totnum02=0;
int totnum03=0;
String snames[] = request.getParameterValues("sname");

String[] s1point = request.getParameterValues("s1point");

int[] s1points = null;
if(s1point!=null){
	s1points = new int[s1point.length];
	for(int i=0;i<s1point.length;i++){
		s1points[i] = Integer.parseInt(s1point[i]);
		totnum01+=s1points[i];
	}
	
}
String s2point[] = request.getParameterValues("s2point"); 
int[] s2points = null;
if(s2point!=null){
	s2points = new int[s2point.length];
	for(int i=0;i<s2point.length;i++){
		s2points[i] = Integer.parseInt(s2point[i]);
		totnum02+=s2points[i];
	}
	
}
String s3point[] = request.getParameterValues("s3point"); 
int[] s3points = null;
if(s3point!=null){
	s3points = new int[s3point.length];
	for(int i=0;i<s3point.length;i++){
		s3points[i] = Integer.parseInt(s3point[i]);
		totnum03+=s3points[i];
		
	}
	
}


 %>	
	
<form id="emplist">
	학생1:<input type="text" name="sname">
	학생1국어:<input type="text" name="s1point">
	학생1영어:<input type="text" name="s1point">
	학생1수학:<input type="text" name="s1point">
	학생2:<input type="text" name="sname">
	학생2국어:<input type="text" name="s2point">
	학생2영어:<input type="text" name="s2point">
	학생2수학:<input type="text" name="s2point">
	학생3:<input type="text" name="sname">
	학생3국어:<input type="text" name="s3point">
	학생3영어:<input type="text" name="s3point">
	학생3수학:<input type="text" name="s3point">
	<input type="submit">	
</form>	

<%
 	 if(snames!=null){
 	%>
 	<h3><%=snames[0]%>+의 점수:<%=totnum01 %></h3>
 	<h3><%=snames[1]%>+의 점수:<%=totnum02 %></h3>
 	<h3><%=snames[2]%>+의 점수:<%=totnum03 %></h3>
	<%} %>
	
	
	
<h2>5번문제 (한꺼번에 처리)</h2>
<form>
	<input type="checkbox" name="food" value="소고기">소고기(6000원)
	<input type="checkbox" name="food" value="돼지고기">돼지고기(7000원)
	<input type="checkbox" name="food" value="닭고기">닭고기(8000원)
	<input type="checkbox" name="food" value="오리고기">오리고기(9000원)
		<input type="submit" value="제출">
</form>
<% String foods[] = request.getParameterValues("food"); %>

	<h2> 선택한 육류:
	
	<% 
	int totpay=0;
	if(foods!= null){
			for(String food:foods){
				out.print(food+",");//out : 내장된 출력을 처리해주는 객체
			if(food.equals("소고기")){
				totpay+=6000;
			} else if(food.equals("돼지고기")){
				totpay+=7000;
			}else if(food.equals("닭고기")){
				totpay+=8000;
			}else if(food.equals("오리고기")){
				totpay+=9000;
			}		
			}
			out.print("총 구매 갯수:");
			out.print(foods.length+".. 총 가격:"+totpay);
			
		}
	 %>
	</h2>
	
<h2>7번문제</h2>

<%
		String T1point = request.getParameter("1team_point");
		int T1pointInt = 0;
		if(T1point!=null){ T1pointInt=Integer.parseInt(T1point);}
		String T2point = request.getParameter("2team_point");
		int T2pointInt = 0;
		if(T2point!=null){ T2pointInt=Integer.parseInt(T2point);}
		
		String div = "";
		if(T1pointInt>T2pointInt){
			div="1팀승";
		}else{
			div="2팀승";
		}
		
		
		
%>
	<form>
		1번팀명 <input type="text" name="1team">
		1번팀 점수 <input type="text" name="1team_point">
		2번팀명 <input type="text" name="2team">
		2번팀 점수 <input type="text" name="2team_point">
			<input type="submit" value="제출">
	</form>	
			<h3>1팀점수:<%=T1pointInt %></h3>
			<h3>2팀점수:<%=T2pointInt %></h3>
			<h3>최종결과:<%=div %></h3>
	
	
</body>
<script type="text/javascript">
/*
 [1단계:개념] 1. jsp의 request 객체의 기능와 기능메서드를 기술하세요
	request.getParameter(String name)
	이름이 name인 파라미터의 값을 구한다. 존재하지 않을 경우 null로 리턴된다.
	request.getParameterValues(String name)
	이름이 name인 모든 파라미터의 값을 배열로 구한다. 존재하지 않을 경우 null을 리턴한다.
	request.getParameterNames():웹브라우저가 전송한 파라미터의 이름을 구한다.
	request.getParameterMap(): 웹브라우저가 전송한 파라미터의 맵을 구한다. 맵은
		파라미터 이름, 값 쌍으로 구성된다.
[1단계:개념] 2. request.getParameter(), request.getParameterValues()의 차이를 기술하세요.
			getParameter는 요청값을 가져온다.
			getParameterValues()는 배열이 기본이며 같은 name을가진 요청값들을 배열로 저장한다.
[1단계:확인] 3. form 하위 요소객체와 request.getParameterNames()를 이용하여 사원명/사원번호/부서이름을 등록리스트하세요

[1단계:확인] 4.(선택) form요소객체를 이용하여 학생3명의 이름입력하고 요청값을 처리하세요.
[2단계:확인] 4.(선택) form요소 객체를 이용하여 학생3명의 국어점수를 입력하고 요청값을 처리하여 합산을 출력하세요
[3단계:확인] 4.(선택) form요소객체를 이용하여 학생3명의 이름/국어/영어/수학 입력하고 요청값을 처리하세요.
               각, 학생의 평균 점수와 과목별 평균점수를 출력하세요.
               
[1단계:확인] 5. form요소 객체를 활용하여 장바구니 담긴 물건 3개 중, check된 물건명 요청하여 구매갯수와 물건명 출력
					
[2단계:확인] 5. form요소 객체를 활용하여 장바구니 담긴 물건 3개 중, check된 물건명의 가격을 계산하여 총가격 출력하세요
[3단계:확인] 5. form요소 객체를 활용하여 장바구니 담긴 물건 3개 중, check된 물건명과 가격 구매갯수 총계가 계산 되게 하세요.

[1단계:개념] 6. 요청값을 encoding하는 이유를 기술하고, meothod의 get방식과 post방식의 차이점을 기술하세요.
파일의 인코딩 방식과, 웹 브라우저가 사용하는 인코딩 방식이 서로 달라서 나타나는 문제로, 하나의 인코딩 방식으로 통일 해 주어야 함
1) get 방식 :url 주소창에 쿼리 스트링으로 전송을 한다.
tomcat서버에서 요청값 encoding을 처리
2) post방식 : 요청 몸체에서 쿼리스트링을 숨겨서 전송한다.
직접적으로코드를 통해 encoding을 처리
request.setCharacterEncoding("utf-8")


[1단계:확인] 7. post 방식으로 월드컵 A조의 팀명과 점수를 입력하고 현재 대전 결과를 출력하세요.
                     팀1    팀2 
                팀명[   ]  [    ]
                점수[   ]  [    ]
                      [결과] 
                    @@@ vs @@@
                      1 - 2
                      @@@ 승
*/
</script>
</html>