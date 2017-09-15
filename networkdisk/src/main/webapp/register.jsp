<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="${pageContext.request.contextPath}/networkdisk/user.action" method="POST">
		<table border="2" align="center">
			<tr>
				<th>编号</th>
				<td><input type="text" name="user.id"></td>
			</tr>
			<tr>
				<th>用户名</th>
				<td><input type="text" name="user.name"></td>
			</tr>
			<tr>
				<th>密码</th>
				<td><input type="text" name="user.passWord"></td>
			</tr>
			<tr>
				<th>真实姓名</th>
				<td><input type="text" name="user.trueName"></td>
			</tr>
			<tr>
				<th>性别</th>
				<td>
				<input type="radio" name="user.sex" value="1">男
				<input type="radio" name="user.sex" value="0" checked="checked">女
				</td>
			</tr>
			<tr>
				<th>email</th>
				<td><input type="text" name="user.email"></td>
			</tr>
			<tr>
				<th>phone</th>
				<td><input type="text" name="user.phone"></td>
			</tr>
			<tr>
				<th>isadmin</th>
				<td><input type="text" name="user.isadmin"></td>
			</tr>
			<tr>
				<th>about</th>
				<td><input type="text" name="user.about"></td>
			</tr>
			<tr>
				<th>photo</th>
				<td><input type="text" name="user.photo"></td>
			</tr>
			<tr>
				
				<td colspan="2" align="center">
				<input type="submit" value="注册">
				</td>
			</tr>
		</table>

	</form>
</body>
</html>