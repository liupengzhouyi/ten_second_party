<%--
  Created by IntelliJ IDEA.
  User: liupe
  Date: 2018-06-28
  Time: 23:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>注册页面</title>
</head>
<body>
<form action="/ServlerPackage/UserServletGroup/UpdateUserServlet" method="post">
    用户名 : &nbsp;&nbsp; <input type="text" name="username">
    <br>
    密&nbsp;码 : &nbsp;&nbsp; <input type="password" name="password">
    <br>
    <input type="submit" value="提交">
</form>
</body>
</html>
