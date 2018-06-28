<%--
  Created by IntelliJ IDEA.
  User: liupe
  Date: 2018-06-28
  Time: 23:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Insert in to your information</title>
</head>
<body>

<%--    这是一个注释--%>

    <%
        String string = request.getParameter("name");
        //System.out.println(string);
        if (string.equals("landing")) {
            response.sendRedirect(request.getContextPath() + "/JSPgroup/forGetInformation/Landing.jsp?name=landing");
        } else {
            response.sendRedirect(request.getContextPath() + "/JSPgroup/forGetInformation/registered.jsp");
        }
    %>
</body>
</html>
