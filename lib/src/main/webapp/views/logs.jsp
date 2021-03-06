<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>操作记录</title>
</head>
<body>
	<h1 style="text-align:center">操作记录</h1>
	<div align="right"><a href="/lib/book">返回书目列表</a></div>
	<div align="center">
	<table border="1">
			<tr><th>操作ID</th><th>操作人</th><th>资源模式</th><th>资源地址</th><th>是否成功</th><th>额外说明</th><th>创建时间</th>
			</tr>
			<c:forEach var="item" items="${logs}">
				<tr>
					<td>${item.id }</td>
					<td>${item.userName }</td>
					<td>${item.resourcePattern }</td>
					<td>${item.resourceId }</td>
					<td>${item.success }</td>
					<td>${item.remarks }</td>
					<td>${item.createTime }</td>
				</tr>
			</c:forEach>
	</table>
	</div>
</body>
</html>