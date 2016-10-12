<%
    if( request.getParameter("logout") != null )
    {
      request.getSession().invalidate();
      response.sendRedirect("Login.jsp");
      return;
    }

    String username = (String) session.getAttribute("username");
    if( username == null )
    {
      response.sendRedirect("Login.jsp");
      return;
    }
%>

<html><head><title>Members</title></head><body>

<a href="Members.jsp?logout=t">Logout</a><br>
<h2><%= username %>, welcome to the member-only area</h2>

</body></html>
