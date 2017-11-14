<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2017/11/8
  Time: 9:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<html>
<head>
    <title></title>
</head>
<body>
这里是后台
当前用户是： <sec:authentication property="name"/>
</body>
</html>
