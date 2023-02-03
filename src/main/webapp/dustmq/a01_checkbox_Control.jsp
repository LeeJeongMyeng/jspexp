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
<style>
  ul, li {
    list-style: none;
  }

  .wrap {
    width: 30px;
    margin: 100px auto;
  }
</style>
<script type="text/javascript">
/*
 
*/
</script>

</head>
<body>
 <div class="wrap">
    <ul>
      <li><input type="checkbox" class="checkbox ck-all"></li>
      <li><input type="checkbox" class="checkbox ck"></li>
      <li><input type="checkbox" class="checkbox ck"></li>
      <li><input type="checkbox" class="checkbox ck"></li>
      <li><input type="checkbox" class="checkbox ck"></li>
    </ul>
  </div>

</body>
<script type="text/javascript">
		const ckAll = document.querySelector(".ck-all");
		
		const ckArr = document.querySelectorAll(".ck"); // 체크박스 전체를 배열로 담아줌
		
		ckAll.addEventListener("click",() => {
			ckArr.forEach(ck =>{
				ck.checked = ckAll.checked;
			})
		})
		
		ckArr.forEach(ck =>{
			ck.addEventListener("click", ()=>{
			  let cnt =0;	
				ckArr.forEach(ck => {
					if(ck.checked == true){
						cnt++;
					}
				})
				if(cnt == ckArr.length){
					ckAll.checked=true;
				}else{
					ckAll.checked=false;
				}
			})
		})
</script>
</html>