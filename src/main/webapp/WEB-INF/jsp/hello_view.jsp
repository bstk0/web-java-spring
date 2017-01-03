<html>
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
    <a href="/helloui5.html">Hello UI5</a>
    <br>GAE<br>
    <a href="http://dbecodenvy.appspot.com/">dbecodenvy</a>&nbsp;|&nbsp;
    <a href="http://dbenginegae.appspot.com/index/index">dbenginegae</a>
  </body>
</html>
