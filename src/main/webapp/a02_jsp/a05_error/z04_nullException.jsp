<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*" 
    import="jspexp.a13_database.*"   
    import="jspexp.a13_database.vo.*"  
    isErrorPage="true"
    
    %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="/a00_com/a01_common.css" rel="stylesheet">
<style type="text/css">
/*

*/

</style>
<script>
/*

*/
</script>
</head>
<body>
   <h2 align="center">Null Pointer 예외 발생</h2>
   <h3 align="center">데이터가 없는지 확인해 주세요</h3>
  <table>
     <tr><th><%=exception.getClass().getName() %></th></tr>
     <tr><th><%=exception.getMessage() %></th></tr>
  </table>

</body>
<script type="text/javascript">
/*

 */

// 
</script>
</html>