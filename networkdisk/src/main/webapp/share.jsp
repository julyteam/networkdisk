<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>friend</title>
</head>
<body>
	<%-- <table>
		<c:forEach items="${friends }" var="friend">
			<tr>
				<td>123</td>
				<td>${friend.name}</td>
				<td>${friend.phone}</td>
			</tr>
		</c:forEach>
	</table> --%>
	<form action="findOne" method="post">
		<input type="text" name="friendname" class="b1"> 
		<input type="button" class="bn" value="提交">
	</form>
	<div class="friends" style="display:none;">
		<c:forEach items="${thefriend }" var="thefriend">
			<tr>
				<td>${thefriend.name}</td>
			</tr>
		</c:forEach>
	</div>
</body>
<script src="js/jquery-1.11.2.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	$(".bn").click(function(){
		var u = $(".b1").val();
		$.ajax({
			type : "POST", //设置请求发送的方式  
			url : "findOne", //提交的地址  
			data : {friendname:u}, 
			success : function(data) {//提交成功的时候执行的函数  
				alert(data);
				if (data.trim()=="true") {
					$(".friends").show();
				}
			}
		});
	});
});
</script>
</html>