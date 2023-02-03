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
            // js 유효성 check
            function calPlus(){
               var num01Ob = document.querySelector("[name=num01]")
               var num01 = num01Ob.value
               var num02Ob = document.querySelector("[name=num02]")
               var num02 = num02Ob.value         
               if(num01=="" || isNaN(num01)){
                  alert("공백이거나 숫자가 아닙니다")
                  num01Ob.value="";num01Ob.focus()
                  return; // 특정 조건에 따라 프로세스를 중단 처리
               }
               if(num02=="" || isNaN(num02)){
                  alert("공백이거나 숫자가 아닙니다")
                  num02Ob.value="";num02Ob.focus()
                  return;
               }
               document.querySelector("form").submit(); // submit 버튼을 클릭한 것과 동일한 효과
            }
         </script>
         <%
            String num01S = request.getParameter("num01");
            String num02S = request.getParameter("num02");
            int num01 = 0; int num02 = 0; int sum = 0;
            boolean isValid1 = false;
            boolean isValid2 = false;
            if(num01S!=null&&!num01S.equals("")){ // 초기화면이 아니고 요청값을 입력했을 때
               try{
                  num01 = Integer.parseInt(num01S); // 형변환 처리
               }catch(Exception e){} // 숫자형태 데이터가 아닐 떄, 0으로 처리
               isValid1 = true;
            }
            if(num02S!=null&&!num02S.equals("")){ // 초기화면이 아니고 요청값을 입력했을 때
               try{
                  num02 = Integer.parseInt(num02S); // 형변환 처리
               }catch(Exception e){} // 숫자형태 데이터가 아닐 떄, 0으로 처리
               isValid2 = true;
            }
         %>
         <form>
            첫번째 숫자:<input type="text" name="num01"/><br>
            두번째 숫자:<input type="text" name="num02"/><br>
            <input type="button" onclick="calPlus()" value="합산"/><br>
            <%=isValid1&&isValid2? num01+"+"+num02+"="+(num01+num02) :"" %>
         </form>
</body>
<script type="text/javascript">
/*
 
*/
</script>
</html>