<%@ page language="java" contentType="text/html; charset=UTF-8"  
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table>
		<thead>
			文件列表
		</thead>
		<tbody>
			<tr>
				<th>文件名</th>
				<th>大小</th>
				<th>上传日期</th>
			
			</tr>
		<c:forEach items="${listFile }" var="file">
		<tr>
			
			<th>${file.name}</th>
			<th>${file.size}</th>
			<th>${file.addtime}</th>
			<th> <a href="${pageContext.request.contextPath}/fileDownload?netFileID=${file.id}&fileFileName=${file.name}" >下载</a> </th>
		</tr>
		</c:forEach>
		</tbody>
	</table>
</body>
</html>