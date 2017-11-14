<%--
  Created by IntelliJ IDEA.
  User: mzd
  Date: 2017/11/2
  Time: 20:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>登入界面</title>
</head>
<body>
<!--action和method不可变，不然请求不到security的接口，name值也不能变 -->
<form action='/login' method='POST'>
    <table>
        <!--param可以获取请求中的参数-->
        <c:if test="${param.error!=null}">
            <tr>
                <td>错误信息:</td>
                <td><font color="red">账号或密码不正确！！！</font></td>
            </tr>
        </c:if>
        <tr>
            <td>User:</td>
            <td><input type='text' name='username' value=''></td>
        </tr>
        <tr>
            <td>Password:</td>
            <td><input type='password' name='password'/></td>
        </tr>
        <tr>
            <td colspan='2'><input name="submit" type="submit" value="登入"/></td>
        </tr>
        <!--spring security为了防止CSRF攻击，需要在每个页面中验证成功登录后创建的csrf token值,在页面上需要动态获取csrf token-->
        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
    </table>
</form>
</body>
</html>
