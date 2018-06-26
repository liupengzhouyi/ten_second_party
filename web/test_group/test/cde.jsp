<%--
  Created by IntelliJ IDEA.
  User: liupe
  Date: 2018-06-26
  Time: 21:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登陆</title>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
</head>
<body>
<jsp:include page="abc.jsp"></jsp:include>
    <form action="def.jsp" target="_blank" method="post">
        用户名: <input name="username" type="text">
        <br>
        密码:  <input name="password" type="password">
        <br>
        <input value="点击" type="submit">
    </form>
</body>
</html>
