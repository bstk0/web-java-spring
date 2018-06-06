<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<%@ page isELIgnored="false" %>
  <script>
  console.log("window.location:" + window.location);
        function getBack() {
            var goTo = "index.jsp";
            var urlLocation = window.location.toString();
			//if (urlLocation.includes("https://webjavaspring1s0005050798trial.hanatrial.ondemand.com/web-java-spring-1.0-SNAPSHOT/")) {
			if (urlLocation.indexOf("https://webjavaspring1s0005050798trial.hanatrial.ondemand.com/web-java-spring-1.0-SNAPSHOT/") > 0) {
				//return  window.location + ".." + goTo; // SCP
				console.log("SCP server");
				window.location.href = window.location + "/../../.." + goTo; // SCP
			} else {
				//return  window.location + "/../.." + goTo; // local
				console.log("Local server");
				window.location.href = window.location + "/../../" + goTo; // local
			}
		};
  </script>
</head>
<body>
	<h2>Spring MVC and List Example</h2>
    <h3>From : https://www.mkyong.com/spring-mvc/spring-mvc-and-list-example/</h3>
    <a href="javascript:getBack();">Voltar</a>
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
