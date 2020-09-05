<%--
&lt;%&ndash;
  Created by IntelliJ IDEA.
  User: 刘旭晨
  Date: 2020/6/16
  Time: 16:56
  To change this template use File | Settings | File Templates.
&ndash;%&gt;
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<center>
    <a href="insert"><input type="button" value="新增"></a>
    <table border="1">
        <tr>
            <td>编号</td>
            <td>用户</td>
            <td>密码</td>
            <td>职位</td>
            <td>操作</td>
        </tr>
        <c:forEach items="${map}" var="m">
            <tr>
                <td>${m.ID}</td>
                <td>${m.NAME}</td>
                <td>${m.PASSWORD}</td>
                <td>${m.RNAME}</td>
                <td><a href="/insert?id=${m.ID}"><input type="button" value="修改"></a>
                    <a href="/delete?id=${m.ID}"><input type="button" value="删除"></a>
                </td>
            </tr>
        </c:forEach>
    </table>
</center>
</body>
</html>
--%>
