<%--
  Created by IntelliJ IDEA.
  User: 刘旭晨
  Date: 2020/7/4
  Time: 9:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
<html>
<head>
    <!-- 最新 Bootstrap 核心 CSS 文件 -->
    <link rel="stylesheet" href="http://cdn.bootcss.com/twitter-bootstrap/3.0.3/css/bootstrap.min.css">

    <!-- 可选的Bootstrap主题文件（一般不用引入） -->
    <link rel="stylesheet" href="http://cdn.bootcss.com/twitter-bootstrap/3.0.3/css/bootstrap-theme.min.css">

    <!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
    <script src="http://cdn.bootcss.com/jquery/1.10.2/jquery.min.js"></script>

    <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
    <script src="http://cdn.bootcss.com/twitter-bootstrap/3.0.3/js/bootstrap.min.js"></script>
    <title>Title</title>
</head>
<body>
<center>
    <a href="addupdshow"><input type="button" class="btn-success" value="添加"></a>
    <form action="showp" method="post">
        <input type="text" value="${txt}" name="txt">
        <input type="submit" class="btn-success" value="查询">
    </form>
<table  class="table">
    <tr>
        <td>户籍编号</td>
        <td>户主姓名</td>
        <td>居住地区</td>
        <td>居住地址</td>
        <td>户主年龄</td>
        <td>操作</td>
    </tr>
    <c:forEach items="${pageInfo.list}" var="l">
        <tr>
            <td>${l.pid}</td>
            <td>${l.pname}</td>
            <td>${l.ainfo.aname}</td>
            <td>${l.paddress}</td>
            <td>${l.page}</td>
            <td>
                <a href="addupdshow?&&pid=${l.pid}"><input type="button" value="修改"></a>
                <a href="delete?&&pid=${l.pid}"><input type="button" onclick="return del();" value="删除"></a>
            </td>
        </tr>
    </c:forEach>
</table>
    <ul class="pagination">
        <li  class="disabled">
            <c:if test="${pageInfo.pageNum==1}">
                <a> 首页</a>
            </c:if>
        </li>

        <li>
            <c:if test="${pageInfo.pageNum!=1}">
                <a href="showp?pageNum=1&&txt=${txt}"> 首页 </a>
            </c:if>
        </li>

        <li  class="disabled">
            <c:if test="${pageInfo.pageNum==1}"> <a>上一页</a></c:if>
        </li>


        <li>
            <c:if test="${pageInfo.pageNum!=1}"><a href="showp?pageNum=${pageInfo.prePage}&&txt=${txt}">上一页</a></c:if>
        </li>
        <li  class="disabled">
            <c:if test="${pageInfo.pageNum==pageInfo.pages}" ><a>下一页</a></c:if>
        </li>
        <li>    <%--<c:if test="${pageInfo.pages==0}"> 下一页 </c:if>--%>
            <c:if test="${pageInfo.pageNum!=pageInfo.pages}"><a href="showp?pageNum=${pageInfo.nextPage}&&txt=${txt}">下一页</a></c:if>
        </li>
        <li class="disabled">
            <c:if test="${pageInfo.pageNum==pageInfo.pages}">
            <a>尾页</a>
            </c:if></li>
        <li><c:if test="${pageInfo.pageNum!=pageInfo.pages}">
            <a href="showp?pageNum=${pageInfo.pages}&&txt=${txt}">尾页</a>
        </c:if>
        </li>
    </ul>
</center>
<script type="text/javascript">
    function del() {
        if(confirm("确实要删除吗？")){
            alert("已经删除！");
            return true;
        }else {
            alert("已经取消了删除操作");
            return false;
        }
    }
</script>
</body>
</html>
