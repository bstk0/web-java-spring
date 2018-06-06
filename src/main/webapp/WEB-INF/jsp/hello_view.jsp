<html>
  <head>
  <script>
  console.log("window.location:" + window.location);
        function getURL(goTo) {
			if (window.location == "https://webjavaspring1s0005050798trial.hanatrial.ondemand.com/web-java-spring-1.0-SNAPSHOT/") {	
				//return  window.location + ".." + goTo; // SCP
				console.log("SCP server");
				window.location.href = window.location + "/../../.." + goTo; // SCP
			} else {
				//return  window.location + "/../.." + goTo; // local
				console.log("Local server");
				window.location.href = window.location + "/../.." + goTo; // local
			}
		};
  </script>
  </head>
  <h1>Beta</h1>
  <h2>hello_view.jsp - by Codenvy</h2>
  <body bgcolor="white">
    <div style="font-size: 150%; color: #850F0F">
      <span>Enter your name: </span><br />
      <form method="post" action="hello">
        <input type=text size="15" name="user" >
        <input type=submit name="submit" value="Ok">
      </form>
    </div>
    <div>
      <%
          {
            java.lang.String answer = (java.lang.String)request.getAttribute("greeting");   
      %>
      <span><%=answer%></span>
      <%
          }
      %>
    </div>
    <br>
    <br>UI5<br>
    <a href="javascript:getURL('/helloui5.html');">Hello UI5</a>&nbsp;|&nbsp;
    <a href="javascript:getURL('/hello_eclipse/index.html');"">Hello_Eclipse UI5</a>
    <br>GAE<br>
    <a href="http://dbecodenvy.appspot.com/">dbecodenvy</a>&nbsp;|&nbsp;
    <a href="http://dbenginegae.appspot.com/index/index">dbenginegae</a>&nbsp;|&nbsp; 
    <br>Angular<br>
    <a href="javascript:getURL('/angularMongo/index.html');">Angular Mongo (mLab.com)</a>&nbsp;|&nbsp;
    <br>React<br>
    <a href="javascript:getURL('/react_index.html');">REACT</a>&nbsp;|&nbsp;
    <br>Spring MVC<br>
    <a href="javascript:getURL('/spring/listMk');">ListMk</a>&nbsp;|&nbsp;
    <br>versao 2018.06.06-8.3.1s<br>
  </body>
</html>
