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
<h2 onclick="createInfo()">회원정보생성</h2>
<table id="tab01"></table>
<%--
#
--%>
</body>
<script type="text/javascript">
/*
 1단계:확인] 9. [js] 배열1에는 아이디 3개, 배열2에는 이름 3개를 선언하고, 반복문을 이용해서 테이블 리스트로
            출력하세요
*/
function createInfo(){
    //ajax를 이용하면 js단에서 서버에 접근해서 데이터를 가져와서 동적인 로딩처리가 가능해짐
    var tab01 = document.querySelector("#tab01")
    var ids = ['himan','goodman','badgirl']
    var names = ['홍길동','김길동','김영자']
    var addHTML = "<tr><th>아이디</th><th>이름</th></tr>";
    for(var idx=0; idx<ids.length;idx++){
       addHTML+= "<tr><td>"+ids[idx]+"</td><td>"+names[idx]+"</td></tr>"
    }
    tab01.innerHTML = addHTML;
  } 
</script>
</html>