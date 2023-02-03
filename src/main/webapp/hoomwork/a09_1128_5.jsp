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
<h1>[1단계:확인] 5. [js] json형식의 객체로 월드컵의 팀명 소속조 승 무 패의 속성을 선언하고, for in 구문 테이블로 출력하세요.</h1>
<div id="exp05"></div>
<%--
#
--%>
</body>
<script type="text/javascript">
var div = document.querySelector("#exp05")
var team = {tname:"벨기에",group:"F조",win:1,eq:0,def:1,
					record:function(){
						var show = "<table><tr><th>팀명</th><th>조</th><th>승</th><th>무</th><th>패</th></tr>"
						show+="<tr>"
						for(var prop in this){ // 객체안에서 선언할 떄, this현재 객체를 지칭한다.
							if(prop != "record"){
								show+="<td>"+this[prop]+"</td>"
							}
						}
						show+="</tr></table>"
						div.innerHTML=show
					}}
 team.record()

</script>
</html>