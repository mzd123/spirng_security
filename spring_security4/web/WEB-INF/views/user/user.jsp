<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2017/11/8
  Time: 9:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<html>
<head>
    <title></title>
</head>
<body>
这里是主页面，当前用户是： <sec:authentication property="name"/>
<sec:authorize access="hasRole('ROLE_VIP')">
    <a href="/vip.do">vip界面</a>
</sec:authorize>

<sec:authorize access="hasRole('ROLE_ADMIN')">
    <a href="/vip.do">后台</a>
</sec:authorize>

</body>
</html>
