<%--
  Created by IntelliJ IDEA.
  User: ioioj5
  Date: 2017/5/4
  Time: 16:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% request.setCharacterEncoding("utf-8"); // 设置页面编码 %>
<html>
<head>
    <title>Sign - in</title>
</head>
<body>

<%
    if (session.getAttribute("loginUser") != null) {
        request.getRequestDispatcher("sign-success.jsp").forward(request, response);
%>
<% } else { %>
<form action="dologin.jsp" method="post">
    <table>
        <tr>
            <td>用户名</td>
            <td><input type="text" name="userName"></td>
        </tr>
        <tr>
            <td>密码</td>
            <td><input type="password" name="passWord"></td>
        </tr>
        <tr>
            <td colspan="2"><input type="submit"></td>
        </tr>
    </table>
</form>
<% } %>
</body>
</html>
