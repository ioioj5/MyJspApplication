<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%--
  Created by IntelliJ IDEA.
  User: ioioj5
  Date: 2017/5/4
  Time: 16:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% request.setCharacterEncoding("utf-8"); // 设置页面编码 %>
<html>
<head>
    <title>Success - Sign In</title>
</head>
<body>
<%
    Date d = new Date();
    SimpleDateFormat sf = new SimpleDateFormat("yyyy年MM月dd日 HH:mm:ss");

    String time = sf.format(d);
%>
当前时间: <%=time %>
<%
    String loginUser = "";
    if(session.getAttribute("loginUser") != null) {
        loginUser = session.getAttribute("loginUser").toString();
    }
%>
<p>欢迎您, <%=loginUser %>, <a href="index.jsp">首页</a>, <a href="sign-out.jsp">退出</a></p>
</body>
</html>
