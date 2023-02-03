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
var id=['A0001']
id.push("B0002")
id[2]("C0003")

var name=['AAAA']
name.push("BBBB")
name[2]("CCCC")
/*
 
*/

function prodlist(){
	document.querySelector("#prodlist").innerText+="#prod"
}
</script>

</head>
<body>
2022-11-16
<hr><h2>[1단계:개념] 1. [js]"",'',`` 문자열 데이터의 사용 규칙과 특징을 기술하세요.</h2>
/*
  # js선언 관련 내용
  	1. ;(콜론)은 명령단위를 구분하기 위해 사용
  		- 줄 단위는 생략이 가능
  		- 한 라인에서 여러선언 시 사용한다.
  	2. 식별자(변수명)
  		1) 키워드 사용금지, 숫자로 시작금지, 특수문자(_,$) 만 허용, 공백 사용금지
  		2) 객체형으로 사용될 선언부분은 대문자로 선언, 참조변수, 메서드명은 소문자 사용
  			합성어는 구분자를 대문자로 표시(camel case) setName
  	3.자바와 동일
  		//,* *
  		html <!-- --> css * * jsp <%-- --%>
 
  	4. 출력형식/입력형식	
  		*/
 var num01=25; var num02=30 //줄단위는 생략가능
 var sh = document.body
 sh.innerHTML = num01+":"+num02+"<br>"
 
 
  #문자열 사용
  1. 큰 따옴표는 쌍으로, 작은 따옴표 쌍으로 ==> "문자열",'문자열',
  2. 큰 따옴표와 작은 따옴표는 감싸는 형식으로 같이 사용할 수 있다.
 
<hr><h2>[1단계:확인] 2. [js] ``(백틱)으로 선언된 버스번호와 목적지를 변수로 선언하고 console.log로 줄바꾸어
               출력하세요.</h2>
            <script>
            	
            </script>
              
              
<hr><h2>[1단계:개념] 3. [js] js 숫자형 문자와 숫자의 데이터의 처리방식의 특징을 연산자와 비교연산식을 기준으로 기술하세요</h2>
				/*
				#연산자 사용
				1. 숫자형 중 정수/정수 ==> 실수처리
				   parseInt()함수를 통해서 소숫점 절삭 처리 가능
				*/
				sh.innerHTML += "10/3="+(10/3)+"<br>"
				//함수중에 문자열을 숫자로 변환하고, 정수형으로 변환해주는 함수 parseInt()
				//사용하는 경우가 많다.
				sh.innerHTML += "10/3="+parseInt(10/3)+"<br>"

<hr><h2>[1단계:확인] 4. [js] prompt창으로 두개의 숫자를 입력받아, 사칙연산을 처리한 결과를 p태그로 출력하세요.</h2> 
  var str1 = prompt("한 자리수 정수를 입력하세요.", "");
  var str2 = prompt("한 자리수 정수를 입력하세요.", "");
	int str1Int = Integer.parseInt(str1);
	int str2Int = Integer.parseInt(str2);

  document.write(str1 + str2);
<hr><h2>[1단계:개념] 5. [js] ==, === 차이점은 무엇인가?</h2>
			===: 데이터유형과 데이터 같은때,true
 	  		 !==: 데이터 유형ㅇ나 뎅터가 같지 않을때  ,true
 	  		 == :데이터 유형이 같지 않더라도 형변환되었을때 데이터가 같으면 true
 	   		'2' == 2 ==> true
<hr><h2>[1단계:개념] 6. [js] js의 데이터 유형 기술하고, 확인하는 함수와 함께 기본예제로 출력처리하세요.</h2>
						#자바스크립트의 데이터 유형
 	 				1. 문자열형(string)
 					 2. 숫자형(number)
 	 				3. boolean형
 	 				4. 함수형(function)
 					 5. 객체형(object)형으로 나누어 진다.
 					 typeof()라는 함수를 통해서 확인할 수 있다.
<hr><h2>[1단계:개념] 7. [js] 동적 배열이란 어떤 기능을 처리할 수 있는 배열을 말하는가?</h2>
						#동적배열처리
  	1. js에서는 동적 배열이 기본적으로 지원되고있다.
  	2. 배열선언
  		var 배열명=[]
  		var 배열명 = [데이터, 데이터2,...]
  	3. 배열활용
  		배열명[index명]
  		배열명.push(추가데이터)
 */
 var array = ['사과']
 array.push("바나나") // 배열이 자동으로 증가
 array.push("바나나") // 배열이 자동으로 증가
 array.push("키위") // 배열이 자동으로 증가
 array[2] ="딸기" //특정한 증가 index로 추가
 var sh = document.body;
 sh.innerHTML ="<h2>"+array+"<br>"
<hr><h2>[1단계:개념] 8. [js] 배열과 for in 구문을 관계를 정리하세요</h2>
				 #for문과 배열/객체
  1. for(var index in 배열명) 
	  index : index번호를 문자열로 가져온다.
	  배열명[index] :  배열의 index위치의 데이터를 가져온다.
<hr><h2>[1단계:확인] 9. [js] 배열1에는 아이디 3개, 배열2에는 이름 3개를 선언하고, 반복문을 이용해서 테이블 리스트로
            출력하세요</h2>

            	
<hr><h2>[1단계:개념] 10. [jsp]요청값이란 무엇이고, query string과 어떤 연관 관계가 있는지 기술하세요.</h2>

					1) 요청값 : client를 통해서 server로 전송된 데이터를 말한다.
				-query string(key=vlaue), 쿠기값, 기타 브라우저에서 서버로 전달 header정보 등이 있다.
				
				
<hr><h2>[1단계:확인] 11. [jsp]form화면에 도서관에서 빌린책명, 대출일, 대출자명을 요청값으로 넘겨 테이블 형식 화면에 출력하게 하세요(null처리)</h2>
	<form>
		영화명:<input type="text" name="bname">
		대출일:<input type="text" name="startdate">
		대출자명:<input type="text" name="name2">
			<input type="submit">
	</form>
	<%
		String bname=request.getParameter("bname");
			if(bname==null) bname="";
		String startdate=request.getParameter("startdate");
			if(startdate==null) startdate="";
		String name2=request.getParameter("name2");
			if(name2==null) name2="0";
	%>
	<table>
		<tr><th>대여채</th><td><%=bname %></td></tr>
		<tr><th>대여일</th><td><%=startdate %></td></tr>
		<tr><th>대여자</th><td><%=name2 %></td></tr>
	</table>				
							
							
<hr><h2>[1단계:확인] 12. [jsp]form화면에 구매 물건 3개의 (물건명/가격)을 입력하게하고, 구매 눌렀을 때, 구매 물건 리스트와
           총비용을 출력하게 하세요.</h2>
		<form>
		<table>
			<tr><td>no</td><th>물건명</th><th>가격</th></tr>
			<%for(int cnt=1; cnt<=3;cnt++){ %>
			<tr><td><%=cnt%><td><input type="text" name="pname<%=cnt%>"/></td><td><input type="text" name="price<%=cnt%>"/></td></tr>
			
			<%} %>
			<tr><td colspan="3"><input type="submit" value="구매"></td></tr>
		</table>
	</form>

	<%
	int tot=0;
	String buyList="";
	for(int cnt=0; cnt<=3;cnt++){
		String pname=request.getParameter("pname"+cnt);
		String price=request.getParameter("price"+cnt);
		if(pname!=null) buyList+=pname+", ";
		if(price!=null) tot+=Integer.parseInt(price);
	}
	if(tot!=0){
	%>
		<h2>구매목록리스트:<%=buyList %></h2>
		<h2>총비용:<%=tot %></h2>
	<%} %>
	

</body>
<script type="text/javascript">



</script>
</html>