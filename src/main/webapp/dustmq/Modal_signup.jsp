<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
  import="java.util.*"  
  import="jspexp.vo.*"  
    import="jspexp.a13_database.*"    
    import="jspexp.a13_database.vo.*" 
      
    %>
  <%
  request.setCharacterEncoding("utf-8");
  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	input[id="popup"]{
		display:none;
	}
	
	input[id="popup"]+label{
		display:inline-block;
		padding:20px;
		background: #ffcd41;
		color:#fff;
	}
/* 	input[id="popup"]+label+div{
	display:none;
	} */
	input[id="popup"]:checked+label+div{
	display:block;
	}
	input[id="popup"]+label+div{ /* 화면 전체를 어두운배경칠하는거 */
		display:none;
		position: fixed;
		top:0;
		left:0;
		width:100%;
		height:100%;
		z-index:100;
	}
	input[id="popup"]+label+div>div{
		position:absolute; /* 위의 fixed를 기준으로 absolute가 된다.*/
		top:50%;
		left:50%;
		transform:translate(-50%,-50%);
		width:500px;
		height:300px;
		background: #fff;
		z-index:2;
	}
	input[id="popup"]+label+div>div>label{
		position:absolute;
		top:0%;
		right:0%;
		transform:translate(40%,-40%);
		padding: 20px;
		background:#dd5347;
		border-radius: 100%;
		z-index:1;
	}
	input[id="popup"]+label+div>label{
		position:absolute;
		top:0;
		left:0;
		width:100%;
		height:100%;
		background:rgba(0,0,0,.9);
		z-index:1;
	}


</style>
<script type="text/javascript">


</script>

</head>
<body>


		<input type="checkbox" id="popup">
		<label for="popup">View</label>
		<div>
			<div>
				<label for="popup"></label> <!-- 닫기 -->
				<div>
				
				안녕하세요
				
				</div>
			</div>
			<label for="popup"></label><!-- 바깥눌러도 닫기 -->
		
		</div>


</body>
<script type="text/javascript">
/*
 
*/
</script>
</html>