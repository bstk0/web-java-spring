<html>
  <h1>Beta</h1>
  <h2>hello_view.jsp</h2>
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
    <a href="/helloui5.html">Hello UI5</a>
  </body>
</html>
