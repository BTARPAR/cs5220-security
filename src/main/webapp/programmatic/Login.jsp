<%@ page contentType="text/html" %>

<%
    if( request.getParameter("login") != null )
    {
       String username = request.getParameter("username");
       String password = request.getParameter("password");
       if( username.equals("cysun") && password.equals("abcd") )
       {
          session.setAttribute("username", "cysun");
          response.sendRedirect("Members.jsp");
          return;
       }
    }
%>

<html><head><title>Login</title></head><body>

<form method="get" action="Login.jsp">
Username: <input type="text" name="username"><br>
Password: <input type="password" name="password"><br>
<input type="submit" name="login" value="Login"><br>
</form>

</body></html>
