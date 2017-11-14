<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2017/11/8
  Time: 8:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<html>
<head>
    <title></title>
</head>
<body>
<sec:authorize access="isAnonymous()">
    <a href="login.do">登入</a>
</sec:authorize>
这里是首页
</body>
</html>
