<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<%@ page isELIgnored="false" %>
</head>
<body>
	<h2>Spring MVC and List Example</h2>
    <h3>From : https://www.mkyong.com/spring-mvc/spring-mvc-and-list-example/</h3>
    <a href="../../index.jsp">Voltar</a>
    <br>
	<c:if test="${not empty lists}">

		<ul>
			<c:forEach var="listValue" items="${lists}">
				<li>${listValue}</li>
			</c:forEach>
		</ul>

	</c:if>
</body>
</html>
