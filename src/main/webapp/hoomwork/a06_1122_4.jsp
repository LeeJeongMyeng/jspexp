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
<h2>4번문제</h2>
<%--
[1단계:확인] 4.(선택) form요소객체를 이용하여 학생3명의 이름입력하고 요청값을 처리하세요.
[2단계:확인] 4.(선택) form요소 객체를 이용하여 학생3명의 국어점수를 입력하고 요청값을 처리하여 합산을 출력하세요
[3단계:확인] 4.(선택) form요소객체를 이용하여 학생3명의 이름/국어/영어/수학 입력하고 요청값을 처리하세요.
               각, 학생의 평균 점수와 과목별 평균점수를 출력하세요.
--%>
<form>
	<table>
		<tr><th>이름</th><th>국어</th><th>영어</th><th>수학</th></tr>
		<%for(int idx=0; idx<3; idx++){ %>
			<tr><td><input type="text" name="name" value=""></td>
			<td><input type="text" name="kor" value="0"></td>
			<td><input type="text" name="eng" value="0"></td>
			<td><input type="text" name="math" value="0"></td>
			
			</tr>
		<%} %>
			<tr><td colspan="4"><input type="submit"></td></tr>
	
	</table>
</form>

	<p align="center">
		<h3>
			<% String []names = request.getParameterValues("name");
			 String []kors = request.getParameterValues("kor");
			 String []engs = request.getParameterValues("eng");
			 String []maths = request.getParameterValues("math");
			 int totAll=0;
				if(names!=null){
					for(int idx=0; idx<names.length; idx++){
						int tot= Integer.parseInt(kors[idx])+
								Integer.parseInt(engs[idx])+
								Integer.parseInt(maths[idx]);
						out.print(names[idx]+", 평균:"+(tot/3)+"<br>");
					}
					
				}
				
				out.print("<br>국어점수");
				if(kors!=null){
					int tot=0;

					for(String kor:kors){
						// 공백 null 숫자형에 대한 처리
						int pt=0;
						try{
						tot+=Integer.parseInt(kor);
						}catch(Exception e){}
						tot+=pt;
						
					}
					
					out.print("<br>국어합산:"+tot+", 평균:"+(tot/3));
					totAll+=tot;
				}
				out.print("<br>영어점수");
				if(engs!=null){
					int tot=0;
					
					for(String eng:engs){
						// 공백 null 숫자형에 대한 처리
						int pt=0;
						try{
						tot+=Integer.parseInt(eng);
						}catch(Exception e){}
						tot+=pt;
						
					}
					out.print("<br>영어합산:"+tot+", 평균:"+(tot/3));
					totAll+=tot;
				}
				out.print("<br>수학점수");
				if(maths!=null){
					int tot=0;
					
					for(String math:maths){
						// 공백 null 숫자형에 대한 처리
						int pt=0;
						try{
						tot+=Integer.parseInt(math);
						}catch(Exception e){}
						tot+=pt;
						
					}
					out.print("<br>수학합산:"+tot+", 평균:"+(tot/3));
					totAll+=tot;
					
				}
				out.print("<br>전체과목학생 총점:" +totAll);
				out.print("<br>전체과목학생 평균:"+((totAll/3)/3));
				
			%>
		</h3>
		
	</p>


</body>
<script type="text/javascript">
/*
 
*/
</script>
</html>