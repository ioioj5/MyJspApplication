# JSP

## JSP语法

1. 脚本程序
    ```
    <% int i = 0;  // 赋值 %>
    
    # 流程控制: if ... else ...
    <% if(i == 0) { %>
        <p>显示</p>
    <% }else{ %>
        <p>隐藏</p>
    <% } %>
    
    # 循环: for
    <%! int i; %>
    <% for(i = 1; i <= 10; i++){ %>
        <%=i // 表达式 %>
    <% } %>
    ```

2. jsp声明

    ```
    <%! int i = 0; %> 
    ```
    
3. 表达式
    >需要注意的是: 表达式后面不能够以分号结束

    ````$xslt
    <% String a = "这是一个字符串"; %>
    <%=a %>
    ````
    
4. 注释

    ```
    <%-- 该部分注释在网页中不会被显示 --%> 
    <!-- 通过浏览器查看网页源代码时可以看见注释内容 -->
    ```
    
## JSP指令
> 共三种指令, 分别为: page,include和taglib.

1. page指令
    > 定义页面的依赖属性，比如脚本语言、error页面、缓存需求等等
    
    - 指定页面编码
    
        ```$xslt
        <%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8" %>
        ```
    - 导入包
    
        ```
        <%@ page import="java.util.*" %>
        ```

2. include指令
    > 包含其他文件
    
    ```
    <%@ include file="date.jsp"%>
    ```

3. taglib指令
    > 引入标签库的定义，可以是自定义标签
    ...

## JSP动作
> 共七大动作, 包含: include, useBean, getProperty, setProperty, param, forward, plugin

## JSP隐式对象
> 共九大对象, 分别为: request, response, out, session, application, config, pageContext, page, Exception


## JavaBean

