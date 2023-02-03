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
<script>
/*
 
 */
</script>
</head>
<body>
<%-- 
#5번 
1) 화면구성
   2) +/-에 대한 이벤트 핸들러 함수 선언과 이벤트 처리 
   3) 메뉴내용과 총금액 처리

--%>
<script type="text/javascript">
   
   var orcnts = [0,0,0] //클릭시마다, 함수 전역적으로 주문갯수를 증가 
   function cal( cIdx, ch ){
      
      var menus = ["짜장면","짬뽕","탕수육"]
      var prices = [6000,7000,12000]
      
      if(ch=="+"){
         orcnts[cIdx]++;
      }else{
         if(orcnts[cIdx]<=0){
            alert("0이하는 감소되지 않습니다.")
         }else{
            orcnts[cIdx]--;   
         }
      }
      //하단에 메뉴를 통해 출력 
      var showList = ""
      //총비용출력
      var tot = 0;
      // orcnts = [0,0,0] 주문량이 있을 때만 반복해서 출력
      for(var idx=0; idx< orcnts.length;idx++){
         if(orcnts[idx]>0){
            showList+=menus[cIdx]+"("+prices[idx]+"원) "+orcnts[idx]+"<br>"
            tot += prices[idx]*orcnts[idx] 
         }
      }
      
      showList+="총비용:"+tot+"원"
      document.querySelector("#show").innerHTML = showList
   }
</script>
<h2>주문하세요</h2>
<style>
   span{border: 1px solid blue; border-radius: 5px; display:inline-block;width:20px;}
</style>

<table>
      <tr><td>짜장면(6000원)<span onclick="cal(0,'+')"> + </span> <span onclick="cal(0,'-')"> - </span></td></tr>
      <tr><td>짬뽕(7000원)<span onclick="cal(1,'+')"> + </span> <span onclick="cal(1,'-')"> - </span></td></tr>
      <tr><td>탕수육(12000원)<span onclick="cal(2,'+')"> + </span> <span onclick="cal(2,'-')"> - </span></td></tr>
</table>
<p id="show"></p>
</body>
<script>
/*

 */
</script>
</html>