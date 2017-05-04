<%--
  Created by IntelliJ IDEA.
  User: ioioj5
  Date: 2017/5/3
  Time: 10:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% request.setCharacterEncoding("utf-8"); // 设置页面编码 %>
<jsp:useBean id="loginUser" class="local.bean.Users" scope="page"/>
<jsp:useBean id="userDAO" class="local.dao.UserDAO" scope="page"/>
<jsp:setProperty name="loginUser" property="*"/>
<%
    // 判断用户是否登陆
    if (userDAO.login(loginUser)) {
        // 登陆成功
        session.setAttribute("loginUser", loginUser.getUserName());
        // 转发
        // request.getRequestDispatcher("sign-success.jsp").forward(request, response);
        // 跳转
        response.sendRedirect("index.jsp");
    } else {
        // 登陆失败, 跳转
        response.sendRedirect("sign-failure.jsp");
    }
%>
