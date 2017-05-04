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
    String loginUser = "";
    if(session.getAttribute("loginUser") != null) {
        loginUser = session.getAttribute("loginUser").toString();
    }
%>
欢迎您, <%=loginUser %>, <a href="sign-out.jsp">退出</a>
</body>
</html>
