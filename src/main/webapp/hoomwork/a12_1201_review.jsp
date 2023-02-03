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
 기준일 <input type="date" name="date01"/><br>
 계산한 일수 : <input type="text" name="dcnt"/> 
 <input type="button" value="이전" onclick="calcu(false)"/>
 <input type="button" value="이후" onclick="calcu(true)"/>

 <p id="show01" align="center"></p>
 
 
 
 
 
 
<%--
#
--%>
</body>
<script type="text/javascript">
//[3단계:확인] 3. 기념일 계산 : 기준일 [    ] 계산할 일수 : [    ] [이전][이후]  
//기준일(type="date")은 default로 오늘 날짜가 년-월-일로 입력되고, 해당날짜를 입력 후, 버튼 클릭시, 기념을 계산할 날짜가 하단에 출력되게 하세요.
/*
  #처리 순서
  	1. 화면구현
  	2. 이벤트 핸들러
  		1) 필요한 DOM객체 선언
  		2) 기준일: 년-월-일 ==> split("-") 년월일추출..
  		3) Date()생성과 할당
  		 	기능메서드 +,- setDate(getDate()+@@)
  		4) 출력 DOM에  toLcaleString()
  	3.
 */
 var date01 = document.querySelector("[name=date01]")
 var dcnt = document.querySelector("[name=dcnt]")
 var show01 = document.querySelector("#show01")
 var d = new Date()
 date01.value = d.toISOString().split("T")[0]
 function calcu(isAfter){
    var d = date01.value.split("-")
    // console.log(d)
    // console.log(d[1]-1+"월(-1)처리")
    // 입력
    var dt01 = new Date(d[0],d[1]-1,d[2])
    var datecnt = parseInt(dcnt.value) //입력된 내용을 형변환 +
    // 날수 처리
    if( !isAfter ) datecnt = -datecnt
    //console.log(datecnt)
    dt01.setDate(dt01.getDate()+datecnt)
    show01.innerText = dt01.toLocaleString()
 }	
  		
</script>
</html>