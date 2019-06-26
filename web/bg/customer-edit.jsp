<%--
  Created by IntelliJ IDEA.
  User: liwei
  Date: 2019/6/22
  Time: 20:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html class="x-admin-sm">

<head>
    <meta charset="UTF-8">
    <title>顾客信息修改</title>
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
            <div class="layui-inline">
                <label for="ID" class="layui-form-label">
                    客户编号
                </label>
                <div class="layui-input-inline">
                    <input type="text" id="ID" name="ID" value="${customer.ID}" disabled="disabled" required=""
                           lay-verify=""
                           autocomplete="off" class="layui-input">
                </div>
            </div>
        </div>
        <div class="layui-form-item">
            <div class="layui-inline">
                <label for="name" class="layui-form-label">
                    姓名
                </label>
                <div class="layui-input-inline">
                    <input type="text" id="name" name="name" value="${customer.name}" required="" lay-verify=""
                           autocomplete="off" class="layui-input">
                </div>

            </div>
            <div class="layui-inline">
                <img src="/bg/images/imag-16.jpg" class="layui-circle">
            </div>
        </div>
        <div class="layui-form-item">
            <div class="layui-inline">
                <label for="nickname" class="layui-form-label">
                    昵称
                </label>
                <div class="layui-input-inline">
                    <input type="text" id="nickname" name="nickname" value="${customer.nickname}" required=""
                           lay-verify=""
                           autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-inline">
                <label for="gender" class="layui-form-label">
                    性别
                </label>
                <div class="layui-input-inline">
                    <select id="gender" name="gender" class="valid">
                        <option value="男" ${customer.gender=="男"?"selected":""}>男</option>
                        <option value="女" ${customer.gender=="女"?"selected":""}>女</option>
                    </select>
                </div>
            </div>
        </div>

        <div class="layui-form-item">
            <div class="layui-inline">
                <label for="phone" class="layui-form-label">
                    电话号码
                </label>
                <div class="layui-input-inline">
                    <input type="text" id="phone" name="phone" value="${customer.phone}" disabled required=""
                           lay-verify="phone"
                           autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-inline">
                <label for="email" class="layui-form-label">
                    邮箱
                </label>
                <div class="layui-input-inline">
                    <input type="text" id="email" name="email" value="${customer.email}" required="" lay-verify="email"
                           autocomplete="off" class="layui-input">
                </div>
            </div>
        </div>
        <div class="layui-form-item">
            <label  class="layui-form-label">
                注册时间
            </label>
            <div class="layui-input-inline">
                <input type="text" name="" value="${customer.createTime}" disabled="disabled" required="" lay-verify=""
                       autocomplete="off" class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">
                最近登陆时间
            </label>
            <div class="layui-input-inline">
                <input type="text" value="${customer.lastLoginTime}" disabled="disabled" required=""
                       autocomplete="off" class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <div class="layui-inline">
                <label for="addr" class="layui-form-label">
                    地址
                </label>
                <div class="layui-input-inline">
                    <input type="text" id="addr" value="${customer.addr}" name="addr" required=""
                           lay-verify=""
                           autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-inline">
                <label for="zipCode" class="layui-form-label">
                    邮编
                </label>
                <div class="layui-input-inline">
                    <input type="text" id="zipCode" value="${customer.zipCode}" name="zipCode"
                           required="" lay-verify=""
                           autocomplete="off" class="layui-input">
                </div>
            </div>
        </div>
        <div class="layui-form-item">
            <label for="zipCode" class="layui-form-label">
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

        //监听提交
        form.on('submit(save)', function (data) {
            console.log(data);
            alert(JSON.stringify(data.field))
            $.ajax({
                type: "POST",
                contentType: "application/json;charset=UTF-8",
                url: '/bg/customer/edit',
                dataType: "json",
                data: JSON.stringify(data.field),
                success: function (data) {
                    alert(data.result)
                    if (data.result == 1) {
                        layer.alert("保存成功", {icon: 6}, function () {
                            //关闭当前frame
                            x_admin_close();

                            // 可以对父窗口进行刷新
                            x_admin_father_reload();
                        });
                    } else {
                        layer.msg('保存失败! error' + data, {icon: 2, time: 1000});
                    }
                },
                error: function (data) {
                    layer.msg('保存失败! error' + data, {icon: 2, time: 1000});
                }
            });
            return false;
        });


    });
</script>
</body>

</html>
