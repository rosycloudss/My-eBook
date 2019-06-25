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
            <label for="ID" class="layui-form-label">
                编号
            </label>
            <div class="layui-input-inline">
                <input type="text" id="ID" name="ID" required="" lay-verify="" disabled
                       autocomplete="off" class="layui-input" value="${employee.getID()}">
            </div>
        </div>
        <div class="layui-form-item">
            <label for="name" class="layui-form-label">
                姓名
            </label>
            <div class="layui-input-inline">
                <input type="text" id="name" name="name" required="" lay-verify=""
                       autocomplete="off" class="layui-input" value="${employee.getName()}">
            </div>
        </div>
        <div class="layui-form-item">
            <label for="phone" class="layui-form-label">
                <span class="x-red">*</span>手机号
            </label>
            <div class="layui-input-inline">
                <input type="text" id="phone" name="phone" value="${employee.getPhone()}" disabled="disabled" required=""
                       lay-verify="phone"
                       autocomplete="off" class="layui-input">
            </div>
        </div>

        <div class="layui-form-item">
            <label for="position" class="layui-form-label">
                <span class="x-red">*</span>职位
            </label>
            <div class="layui-input-inline">
                <select id="position" name="position" class="valid">
                    <option value="1" ${employee.getPosition() == 1 ? "select":''}>管理员</option>
                    <option value="2" ${employee.getPosition() == 2 ? "select":''}>普通员工</option>
                </select>
            </div>
        </div>
        <div class="layui-form-item">
            <label for="save" class="layui-form-label">
            </label>
            <button id="save" class="layui-btn" lay-filter="save" lay-submit="">
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

        //监听提交
        form.on('submit(save)', function (data) {
            console.log(data);
            //发异步，把数据提交给php
            $.ajax({
                type:"POST",
                contentType: "application/json;charset=UTF-8",
                url:'/bg/employee/edit',
                dataType:"json",
                data: JSON.stringify(data.field),
                success:function(data){
                    if(data.result == 1){
                        layer.alert("修改成功", {icon: 6},function () {
                            //关闭当前frame
                            x_admin_close();

                            // 可以对父窗口进行刷新
                            x_admin_father_reload();
                        });
                    }else{
                        layer.alert("修改失败", {icon: 6},function () {
                        });
                    }
                },
                error:function (data) {
                    layer.alert("增加失败", {icon: 6},function () {
                    });
                }
            });
            return false;
        });
    });
</script>
</body>

</html>