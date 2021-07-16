<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>用户展示页面</title>
    <link href="../../css/bootstrap.min.css" rel="stylesheet">
    <script src="../../js/jquery-3.2.1.min.js"></script>
    <script src="../../js/bootstrap.min.js"></script>
</head>
<body>
<div align="center">
    <button class="btn btn-success btn-lg"
            onclick='location.href="${pageContext.request.contextPath}/"'>新增用户
    </button>
</div>
<div align="left">
    <table class="table table-striped">
        <thead>
        <tr>
            <th>
                <input type="checkbox">
            </th>
            <th>用户Id</th>
            <th>用户名称</th>
            <th>用户邮箱地址</th>
            <th>操作</th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <th>
                <input type="checkbox"/>
            </th>
            <th>1</th>
            <th>蒙奇·D·路飞</th>
            <th>Luffy@onepiece.com</th>
            <th>
                <button type="button" class="btn" onclick='location.href="${pageContext.request.contextPath}/"'>修改
                </button>
                <button type="button" class="btn" onclick='location.href="${pageContext.request.contextPath}/"'>删除
                </button>
            </th>
        </tr>
        <tr>
            <th>
                <input type="checkbox"/>
            </th>
            <th>2</th>
            <th>蒙奇·D·龙</th>
            <th>Dragon@onepiece.com</th>
            <th>
                <button type="button" class="btn" onclick='location.href="${pageContext.request.contextPath}/"'>修改
                </button>
                <button type="button" class="btn" onclick='location.href="${pageContext.request.contextPath}/"'>删除
                </button>
            </th>
        </tr>
        <tr>
            <th>
                <input type="checkbox"/>
            </th>
            <th>3</th>
            <th>蒙奇·D·卡普</th>
            <th>Cap@onepiece.com</th>
            <th>
                <button type="button" class="btn" onclick='location.href="${pageContext.request.contextPath}/"'>修改
                </button>
                <button type="button" class="btn" onclick='location.href="${pageContext.request.contextPath}/"'>删除
                </button>
            </th>
        </tr>
        </tbody>
    </table>
</div>
</body>
</html>
