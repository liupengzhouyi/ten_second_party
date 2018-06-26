<%--
  Created by IntelliJ IDEA.
  User: liupe
  Date: 2018-06-25
  Time: 07:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
  </head>
  <body>
  <a href="test_group/test/abc.jsp">跳转</a>
  <br>
  <form action="#">
    用户名:
    <input type="text" id="username" name="name">
    <input type="button" value="点击选择输入项" onclick="dj()">
    <br>
    <p>密码: <input type="password" name="password"></p>
    <br>
    <p>
      性别:
      <input type="radio" name="sex" value="man">男
      &nbsp;&nbsp;
      <input type="radio" name="sex" value="women">女
    </p>
    <br>
    <p>
      爱好:
      <br>
      &nbsp;&nbsp;<input type="checkbox" name="hobby" value="yy">游泳
      <br>
      &nbsp;&nbsp;<input type="checkbox" name="hobby" value="ps">爬山
      <br>
      &nbsp;&nbsp;<input type="checkbox" name="hobby" value="pb">跑步
      <br>
    </p>
    图片: <input type="file" name="image">
    <br>
    学历: <select name="xl" id="sel">
      <option>初中</option>
      <option>高中</option>
      <option>专科</option>
      <option>本科</option>
      <option>硕士</option>
      <option>博士</option>
    </select>
    <input type="button" value="点我添加选项" onclick="add()">
    <br>
    自我评价: <textarea name="pj" cols="30" rows="10"></textarea>
    <br>
    <input type="submit" value="点我提交">
  </form>
  </body>
</html>
