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
# 물건명 가격 개수를 문자열/숫자변수로 저장했다가 호출하세요.
--%>
<%
Object ob01= new Product("사과",1000,1);
Product p02 = (Product)ob01;
%>
<h1>페이지범위 Product1(속성1):<%=p02.getProduct() %></h1>
<h1>페이지범위 Product1(속성1):<%=(Integer)p02.getPrice() %></h1>
<h1>페이지범위 Product1(속성1):<%=(Integer)p02.getCnt() %></h1>


<%
pageContext.setAttribute("prodname01","바나나");
pageContext.setAttribute("price01",3000);
pageContext.setAttribute("cnt01",2);
pageContext.setAttribute("ob02", new Product("딸기",2000,3));
%>


<h1>페이지범위 물건:<%=pageContext.getAttribute("prodname01") %></h1>
<h1>페이지범위 금액:<%=pageContext.getAttribute("price01") %></h1>
<h1>페이지범위 갯수:<%=pageContext.getAttribute("cnt01") %></h1>
<h1>페이지범위 총금액:<%=((Integer)pageContext.getAttribute("price01")* 
					(Integer)pageContext.getAttribute("cnt01"))%></h1>

<%					
Product p01 = (Product)pageContext.getAttribute("ob02");
%>
<h1>페이지범위 Product(속성1):<%=p01.getProduct() %></h1>
<h1>페이지범위 Product(속성1):<%=(Integer)p01.getPrice() %></h1>
<h1>페이지범위 Product(속성1):<%=(Integer)p01.getCnt() %></h1>
</body>
<script type="text/javascript">
/*
 
*/
</script>
</html>