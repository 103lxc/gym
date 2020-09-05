<%--
  Created by IntelliJ IDEA.
  User: 刘旭晨
  Date: 2020/7/4
  Time: 9:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form method="post" action="addupd" onsubmit="return login()">
    <input type="hidden" name="pid" value="${pinfo.pid}">
    户主姓名：<input type="text" id="name" value="${pinfo.pname}" name="pname"><br>
    户主年龄：<input type="text" id="age" value="${pinfo.page}" name="page"><br>
    户主籍贯：<input type="text" id="paddress" value="${pinfo.paddress}" name="paddress"><br>
    住址地区：<select name="ainfo.aid">

    <c:forEach items="${ainfo}" var="a">
        <c:if test="${a.aid==pinfo.ainfo.aid}">
            <option value="${a.aid}" selected="selected">${a.aname}</option>
        </c:if>
        <c:if test="${a.aid!=pinfo.ainfo.aid}">
            <option value="${a.aid}">${a.aname}</option>
        </c:if>
    </c:forEach>
</select><br>
    <input type="submit"  value="提交">
</form>

<script type="text/javascript">
    function login() {

        var name=$("#name").val();
        var age=$("#age").val();
        var paddress=$("#paddress").val();
        if(name==null||name==""){
            alert("姓名不能为空");
            return false;
        }else if(age==null||age==""){
            alert("年龄不能为空");
            return false;
        }else if(paddress==null||paddress==""){
            alert("籍贯不能为空");
            return false;
        }
        return true;
    }
</script>
</body>
</html>
