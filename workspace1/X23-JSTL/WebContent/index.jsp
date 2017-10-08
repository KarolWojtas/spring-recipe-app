<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:if test="${not empty param.name }">
	<c:set var="name" scope="page" value="${param.name }"></c:set>
	<h1>WItaj <c:out value="${pageScope.name }"></c:out></h1>
	<c:remove var="name"/>
</c:if>
<h3>Ciastka</h3>
<c:forEach var="cookieItem" items="${cookie }">
<c:out value="${cookieItem.key }"></c:out>;<c:out value="${cookieItem.value }"></c:out>

</c:forEach>

<h3>Zawartość headera</h3>
<c:forEach var="headerItem" items="${header }" >
	<c:out value="${headerItem.key }"></c:out>; <c:out value="${headerItem.value }"></c:out><br>
</c:forEach>	
</body>
</html>