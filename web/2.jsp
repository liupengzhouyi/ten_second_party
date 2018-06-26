<%--
  Created by IntelliJ IDEA.
  User: liupe
  Date: 2018-06-26
  Time: 22:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>


<head>
    <title>Title</title>
</head>


<body>
    <c:if test="${abc==null}">
        abc不存在！
    </c:if>
    <c:if test="${abc=!null}">
        abc的值: ${abc }
    </c:if>
</body>


</html>
