<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<html>
<head>
<style type="text/css"> @import url("styl.css");</style>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSTL</title>
</head>
<body>
<div class="circle">
<jsp:useBean id="circle1" class="model.Circle" scope="page"></jsp:useBean>
<jsp:setProperty property="xmiddle" name="circle1" value="10.5"/>
<jsp:setProperty property="ymiddle" name="circle1" value="9.5"/>
<jsp:setProperty property="radius" name="circle1" value="5"/>
<jsp:useBean id="circle2" class="model.Circle" scope="page"/>
<jsp:setProperty property="xmiddle" name="circle2" value="40.3"/>
<jsp:setProperty property="ymiddle" name="circle2" value="30.8"/>
<jsp:setProperty property="radius" name="circle2" value="4.5"/>
<c:out value="${pageScope.circle1 }"></c:out>
<p>Circle1 area: 
<c:out value="${pageScope.circle1.area() }"/><br>
<c:out value="${pageScope.circle2 }"/><br>
<p>Circle2 area: 
<c:out value="${pageScope.circle2.area() }"/><br>
<p>Circle1 and 2 distance:
<c:out value="${pageScope.circle1.distance(pageScope.circle2) }"></c:out>
</div>
<div class="core">

<h3>C:catch</h3>
<c:catch var="catchException" >
	<%int x= 2/0; %>
</c:catch>
<c:if test="${not empty catchException }">
<p>Został złapany błąd: <c:out value="${catchException }"></c:out>
</c:if>
<h3>C:Choose</h3>
<c:set var="liczba" value="${10*12 }" />
<p>Nasza liczba to: <c:out value="${liczba }"/>
<c:choose>
	<c:when test="${liczba > 200 }">
	<p> Liczba jest większa od 200
	 </c:when>
	 <c:when test="${(liczba <= 200) && (liczba > 100)}">
	 <p>Liczba jest mniejsza bądź równa 200 większa od 100
	 </c:when>
	 <c:when test="${liczba <= 100 }" >
	 <p> Liczba mniejsza równa 100
	 </c:when>
	 <c:otherwise>
	 <p>Jebać legię
	 </c:otherwise>
</c:choose>
<h3>C:foreach dla kolekcji</h3>
<c:set var="zdanie" value="${fn:split('Elo siemano ludzie',' ')}" />
<c:forEach var="słowo" items="${zdanie }">
	<p>- <c:out value="${słowo }"></c:out>
</c:forEach>
<h3>C:foreach ileś razy</h3>
<code>var="nazwa_zmiennej" begin="od_ilu" end="do_ilu"</code><br>
<c:forEach var="i" begin="0" end="5">
	<c:out value="${i }"/>
</c:forEach>
<h3>C:forTokens</h3>
<code>items="jakisString" delims="delimiter" var="nazwa_tej_zmiennej"</code>code>
<c:forTokens items="Pysi leży jak głupi pod kordłą" delims=" " var="słowo">
	* <c:out value="${słowo }"/>
</c:forTokens>
<h3>c:param i c:url</h3>
<p>c:url to url a dzieci c:param wymieniają parametry w parach klucz wartość
<c:url value="www.google.com" var="google">
	<c:param name="search" value="kitty"/>

</c:url>
<c:out value="${google }"></c:out>
<h3>c:redirect</h3>
<p>Działa jak <code>a href</code>
<code>c:redirect url="np. javastart.pl"</code><br/>
<h3>fn:containsIgnoreCase</h3>
<c:set var="zdanie" value="Kot to zwierzę a nie człowiek"/>
<c:if test="${fn:containsIgnoreCase(zdanie,'ot') }"><p> znalaz</c:if>
</div>

</body>
</html>