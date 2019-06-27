<%--
  Created by IntelliJ IDEA.
  User: liwei
  Date: 2019/6/22
  Time: 20:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!--修改员工密码-->
<!DOCTYPE html>
<html class="x-admin-sm">
<head>
    <meta charset="UTF-8">
    <title>欢迎页面-X-admin2.1</title>
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
            <input type="hidden" name="employeeId" value="${sessionScope.employee.ID}">
            <label for="name" class="layui-form-label">
                姓名
            </label>
            <div class="layui-input-inline">
                <input type="text" id="name" name="name" value="${sessionScope.employee.name}" required="" lay-verify=""
                       autocomplete="off" class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label for="L_pass" class="layui-form-label">
                <span class="x-red">*</span>新密码
            </label>
            <div class="layui-input-inline">
                <input type="password" id="L_pass" name="newpass" required="" lay-verify="pass"
                       autocomplete="off" class="layui-input">
            </div>
            <div class="layui-form-mid layui-word-aux">
                6到16个字符
            </div>
        </div>
        <div class="layui-form-item">
            <label for="L_repass" class="layui-form-label">
                <span class="x-red">*</span>确认密码
            </label>
            <div class="layui-input-inline">
                <input type="password" id="L_repass" name="repass" required="" lay-verify="repass"
                       autocomplete="off" class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label for="L_repass" class="layui-form-label">
            </label>
            <button class="layui-btn" lay-filter="save" lay-submit="">
                保存
            </button>
        </div>
    </form>
</div>
<script>
    layui.use(['form', 'layer'], function () {
        $ = layui.jquery;
        var form = layui.form
            , layer = layui.layer;

        form.verify({
            pass: [/(.+){6,12}$/, '密码必须6到12位']
            , repass: function (value) {
                if ($('#L_pass').val() != $('#L_repass').val()) {
                    return '两次密码不一致';
                }
            }
        });

        //监听提交
        form.on('submit(save)', function (data) {
            console.log(data);
            //发异步，把数据提交给php
            $.ajax({
                type: "POST",
                contentType: "application/json;charset=UTF-8",
                url: '/bg/employee/changePassword',
                dataType: "json",
                data: JSON.stringify(data.field),
                success: function (data) {
                    if (data.result == 1) {
                        layer.alert("修改成功", {icon: 6}, function () {
                            //关闭当前frame
                            x_admin_close();

                            // 可以对父窗口进行刷新
                            x_admin_father_reload();
                        });
                    } else {
                        layer.alert("修改失败", {icon: 6}, null);
                    }
                },
                error: function (data) {
                    layer.alert("修改失败", {icon: 6}, null);
                }
            });
            return false;
        });
    });
</script>
</body>

</html>