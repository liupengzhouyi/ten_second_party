<%--
  Created by IntelliJ IDEA.
  User: liupe
  Date: 2018-06-26
  Time: 21:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>显示用户</title>
</head>
<body>
    <%
        String username = request.getParameter("username");
        String password = request.getParameter("password");
    %>
    <p>
        <cenmter>
            <%=username%>
            <br>
            <%=password%>
        </cenmter>
    </p>
</body>
</html>
