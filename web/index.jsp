<%--
  Created by IntelliJ IDEA.
  User: ioioj5
  Date: 2017/5/3
  Time: 10:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>欢迎访问我的个人主页</title>
</head>
<body>
<h1>欢迎访问我的个人主页</h1>
<%
    if (session.getAttribute("loginUser") != null) {
        request.getRequestDispatcher("sign-success.jsp").forward(request, response);
%>
<% } else { %>
<p>
    <a href="sign-in.jsp">登入</a>
    <a href="sign-up.jsp">注册</a>
</p>
<% } %>
</body>
</html>
