<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="/networkdisk/user/js/jquery-1.11.2.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		var sex = $("#sex").val();
		if(sex==1){
			$("#man").attr("checked","checked");
		}else{
			$("#wuman").attr("checked","checked");
		}
	});
</script>
<title>Insert title here</title>
</head>
<body>
	<form action="userUpdate" method="post">
		
		email:<input type="text" value="${user.email} " name="email" /><br>
		phone:<input type="text" value="${user.phone }" name="phone" onkeyup="value=value.replace(/[^0-9]/g,'')" /><br>
		sex:<input type="radio" value="1" name="sex" id="man" />男<input type="radio" name="sex" id="wuman" value="0" />女<br>
		describe:<input type="text" value="${user.about}" name="about" /><br>
		<label style="color:red;"><s:actionerror/></label>
		<input type="submit" value="update" >
		
		
		<input type="hidden" value="${user.id }" name="id" />
		<input type="hidden" value="${user.sex }" id="sex" />
	</form>
</body>
</html>