<%--
&lt;%&ndash;
  Created by IntelliJ IDEA.
  User: 刘旭晨
  Date: 2020/6/16
  Time: 17:01
  To change this template use File | Settings | File Templates.
&ndash;%&gt;
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="add" method="post">
    <input type="hidden" value="${user.get(0).ID}" name="id"><br>
    用户：<input type="text" value="${user.get(0).NAME}" name="name"><br>
    密码：<input type="text" value="${user.get(0).PASSWORD}" name="password"><br>
    职位：<select name="rid">
            <c:forEach items="${role}" var="r">
                <c:if test="${user.get(0).RID==r.RID}">
                    <option value="${r.RID}" selected="selected">${r.RNAME}</option>
                </c:if>
                <c:if test="${user.get(0).RID!=r.RID}">
                    <option value="${r.RID}"  >${r.RNAME}</option>
                </c:if>

            </c:forEach>
         </select>
    <br>
    <input type="submit" value="提交" >
</form>
</body>
</html>
--%>
