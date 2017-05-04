<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%--
  Created by IntelliJ IDEA.
  User: ioioj5
  Date: 2017/5/3
  Time: 10:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% request.setCharacterEncoding("utf-8"); // 设置页面编码 %>
<html>
<head>
    <title>欢迎访问我的个人主页</title>
</head>
<body>
<h1>欢迎访问我的个人主页</h1>
<%
    Date d = new Date();
    SimpleDateFormat sf = new SimpleDateFormat("yyyy年MM月dd日 HH:mm:ss");

    String time = sf.format(d);
%>
当前时间: <%=time %>
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
