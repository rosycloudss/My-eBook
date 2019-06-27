<%--
  Created by IntelliJ IDEA.
  User: liwei
  Date: 2019/6/22
  Time: 20:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html class="x-admin-sm">

<head>
    <meta charset="UTF-8">
    <title>个人信息</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<%--    <meta name="viewport" content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi" />--%>
    <link rel="stylesheet" href="/bg/css/font.css">
    <link rel="stylesheet" href="/bg/css/xadmin.css">
    <script type="text/javascript" src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
    <script type="text/javascript" src="/bg/lib/layui/layui.js" charset="utf-8"></script>
    <script type="text/javascript" src="/bg/js/xadmin.js"></script>
    <script type="text/javascript" src="/bg/js/cookie.js"></script>
    <!-- 让IE8/9支持媒体查询，从而兼容栅格 -->
    <!--[if lt IE 9]>
    <script src="https://cdn.staticfile.org/html5shiv/r29/html5.min.js"></script>
    <script src="https://cdn.staticfile.org/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body>
<div class="x-body">
    <form class="layui-form">
        <div class="layui-form-item">
            <label for="name" class="layui-form-label">
                姓名
            </label>
            <div class="layui-input-inline">
                <input type="text" id="name" name="name" value="${sessionScope.employee.name}" required="" lay-verify=""
                       autocomplete="off" class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label for="phone" class="layui-form-label">
                手机号
            </label>
            <div class="layui-input-inline">
                <input type="text" id="phone" value="${sessionScope.employee.phone}" disabled="disabled" name="phone" required="" lay-verify="phone"
                       autocomplete="off" class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label for="position" class="layui-form-label">
                职位
            </label>
            <div class="layui-input-inline">
                <select id="position" name="position" disabled="disabled" class="valid">
                    <option value="1" ${sessionScope.employee.getPosition() == 1 ? "select":''}>管理员</option>
                    <option value="2" ${sessionScope.employee.getPosition() == 2 ? "select":''}>普通员工</option>
                </select>
            </div>
        </div>
    </form>
</div>
</body>

</html>
