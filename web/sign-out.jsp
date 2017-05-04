<%--
  Created by IntelliJ IDEA.
  User: ioioj5
  Date: 2017/5/4
  Time: 17:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    session.removeAttribute("loginUser");
    response.sendRedirect("index.jsp");
%>