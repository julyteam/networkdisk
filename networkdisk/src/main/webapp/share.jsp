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
	<table>
		<c:forEach items="${friends }" var="friend">
			<tr>
				<td>123</td>
				<td>${friend.name}</td>
				<td>${friend.phone}</td>
			</tr>
		</c:forEach>
		
	</table>
	<form action="findOne" method="post">
		<input type="text" name="friendname">
		<input type="submit">
	</form>
</body>
</html>