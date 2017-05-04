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

- request
    > request 对象是 javax.servlet.http.HttpServletRequest 对象的一个实例。每次客户端请求一个页面时，JSP 引擎都会创建一个新的对象来表示那个请求。

    > Request 对象提供方法来获取 HTTP 头信息，包括表单数据，cookies，HTTP 方法等。

    方法 & 描述

    ```
    # 返回一个数组，其中包含客户端用这个请求发送的所有 Cookie 对象。
    Cookie[] getCookies()

    # 返回一个枚举包含此请求可用的属性的名称。
    Enumeration getAttributeNames()

    # 返回一个这个请求包含的所有标题名称的枚举。
    Enumeration getHeaderNames()

    # 返回一个字符串对象的枚举，该字符串对象包括包含在此请求中的参数的名称
    Enumeration getParameterNames()

    # 返回与此请求相关的当前会话，或者如果该请求没有会话，那么就创建一个。
    HttpSession getSession()

    # 返回与这个请求相关的当前的HttpSession或，如果没有当前会话并且 create 为真，那么返回一个新的会话。
    HttpSession getSession(boolean create)

    # 返回客户会接受内容的首选区域设置，基于所包含的 accept – language 标题
    Locale getLocale()

    # 作为一个对象返回指定属性的值，如果指定的名称没有属性，返回 null。
    Object getAttribute(String name)

    # 使用 ServletInputStream 将请求的主体作为二进制数据检索。
    ServletInputStream getInputStream()

    # 返回用于保护 servlet 的验证方案的名称，例如，“BASIC”或“SSL”，如果 JSP 没有被保护，那么返回 null
    String getAuthType()

    # 返回在该请求内部使用的字符编码的名称。
    String getCharacterEncoding()

    # 返回该请求主体的 MIME 类型，如果不知道类型，返回 null。
    String getContentType()

    # 返回表示请求上下文的请求 URI 的一部分。
    String getContextPath()

    # 将指定的请求标题的值作为一个字符串返回。
    String getHeader(String name)

    # 返回生成该请求的 HTTP 方法的名称，比如 GET，POST，或 PUT。
    String getMethod()

    # 将一个请求参数的值作为字符串返回，如果参数不存在，返回 null。
    String getParameter(String name)

    # 返回与客户端生成请求时发送的 URL 相关联的任何额外的路径信息。
    String getPathInfo()

    # 返回请求协议的名称和版本。
    String getProtocol()

    # 返回在路径后包含在请求 URL 的查询字符串。
    String getQueryString()

    # 返回发送请求的客户端的互联网协议(IP)地址。
    String getRemoteAddr()

    # 返回发送请求的客户机的全称。
    String getRemoteHost()

    # 如果用户已经通过身份验证，就返回发出这一请求的登录用户，如果用户没有被验证，那么返回 null。
    String getRemoteUser()

    # 从取决于 HTTP 请求首行的查询字符串的协议名称中返回请求 URL 的一部分。
    String getRequestURI()

    # 返回客户端指定的会话 ID。
    String getRequestedSessionId()

    # 返回调用 JSP 的请求 URL 的部分。
    String getServletPath()

    # 返回一个字符串对象数组，其中包含所有的给定的请求参数的值，如果参数不存在，那么返回 null。
    String[] getParameterValues(String name)

    # 返回一个布尔值表示是否使用一个安全通道发出了这个请求，比如 HTTPS。
    boolean isSecure()

    # 以字节为单位，返回请求的主体长度并通过输入流使其可用，如果长度是未知的，那么返回 -1。
    int getContentLength()

    # 作为 int 返回指定请求标题的值。
    int getIntHeader(String name)

    # 返回收到这个请求的端口号。
    int getServerPort()

    ```

- response
    > Response响应对象主要将JSP容器处理后的结果传回到客户端。可以通过response变量设置HTTP的状态和向客户端发送数据，如Cookie、HTTP文件头信息等。

    ```
    # 对sendRedirect()方法使用的URL进行编码
    String encodeRedirectURL(String url)

    # 将URL编码，回传包含Session ID的URL
    String encodeURL(String url)

    # 返回指定的响应头是否存在
    boolean containsHeader(String name)

    # 返回响应是否已经提交到客户端
    boolean isCommitted()

    # 添加指定的cookie至响应中
    void addCookie(Cookie cookie)

    # 添加指定名称的响应头和日期值
    void addDateHeader(String name, long date)

    # 添加指定名称的响应头和值
    void addHeader(String name, String value)

    # 添加指定名称的响应头和int值
    void addIntHeader(String name, int value)

    # 将任何缓存中的内容写入客户端
    void flushBuffer()

    # 清除任何缓存中的任何数据，包括状态码和各种响应头
    void reset()

    # 清除基本的缓存数据，不包括响应头和状态码
    void resetBuffer()

    # 使用指定的状态码向客户端发送一个出错响应，然后清除缓存
    void sendError(int sc)

    # 使用指定的状态码和消息向客户端发送一个出错响应
    void sendError(int sc, String msg)

    # 使用指定的URL向客户端发送一个临时的间接响应
    void sendRedirect(String location)

    # 设置响应体的缓存区大小
    void setBufferSize(int size)

    # 指定响应的编码集（MIME字符集），例如UTF-8
    void setCharacterEncoding(String charset)

    # 指定HTTP servlets中响应的内容的长度，此方法用来设置 HTTP Content-Length 信息头
    void setContentLength(int len)

    # 设置响应的内容的类型，如果响应还未被提交的话
    void setContentType(String type)

    # 使用指定名称和值设置响应头的名称和内容
    void setDateHeader(String name, long date)

    # 使用指定名称和值设置响应头的名称和内容
    void setHeader(String name, String value)

    # 使用指定名称和值设置响应头的名称和内容
    void setIntHeader(String name, int value)

    # 设置响应的语言环境，如果响应尚未被提交的话
    void setLocale(Locale loc)

    # 设置响应的状态码
    void setStatus(int sc)
    ```


## JavaBean

