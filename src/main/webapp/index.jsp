<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>index.jsp</title>
<%@ include file="/WEB-INF/common/link.jspf" %>
</head>
<body>
<hr>
<h1>Model2</h1>
<hr>
<c:set var="contextPath" value="${pageContext.servletContext.contextPath}"/>

<c:url var="employee" value="/employee?cmd=deptlist"/>
<c:url var="world" value="/world/citylist"/>

<ul>
	<li><a class="btn" href="${contextPath}/employee?cmd=deptlist">Employee</a></li>
	<li><a class="btn" href="${contextPath}/world/citylist">World</a></li>
	<li><a class="btn" href="${employee}">Employee</a></li>
	<li><a class="btn" href="${world}">World</a></li>
</ul>

</body>
</html>