<%--
  Created by IntelliJ IDEA.
  User: liwei
  Date: 2019/6/22
  Time: 20:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html class="x-admin-sm">

<head>
    <meta charset="UTF-8">
    <title>图书修改</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<%--    <meta name="viewport" content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi" />--%>
    <link rel="stylesheet" href="./css/font.css">
    <link rel="stylesheet" href="./css/xadmin.css">
    <script type="text/javascript" src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
    <script type="text/javascript" src="./lib/layui/layui.js" charset="utf-8"></script>
    <script type="text/javascript" src="./js/xadmin.js"></script>
    <script type="text/javascript" src="./js/cookie.js"></script>
    <!-- 让IE8/9支持媒体查询，从而兼容栅格 -->
    <!--[if lt IE 9]>
    <script src="https://cdn.staticfile.org/html5shiv/r29/html5.min.js"></script>
    <script src="https://cdn.staticfile.org/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body>
<div class="x-body">
    <form class="layui-form">
        <!--图书基本信息 start-->
        <fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
            <legend>图书基本信息</legend>
        </fieldset>
        <div class="layui-form-item">
            <div class="layui-inline">
                <label for="username" class="layui-form-label">
                    <span class="x-red">*</span>图书编号
                </label>
                <div class="layui-input-inline">
                    <input type="text" id="" name="username" required="" disabled="disabled" lay-verify="required"
                           autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-inline">
                <label for="username" class="layui-form-label">
                    <span class="x-red">*</span>图书名称
                </label>
                <div class="layui-input-inline">
                    <input type="text" id="" name="username" required="" lay-verify="required"
                           autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-inline">
                <label for="username" class="layui-form-label">
                    <span class="x-red">*</span>图书封面
                </label>
                <div class="layui-input-inline">
                    <input type="file" id="" name="username" required="" lay-verify="required"
                           autocomplete="off" class="layui-input">
                </div>
            </div>
        </div>

        <div class="layui-form-item">
            <div class="layui-inline">
                <label for="username" class="layui-form-label">
                    <span class="x-red">*</span>图书类型
                </label>
                <div class="layui-input-inline">
                    <input type="text" id="" name="username" required="" lay-verify="required"
                           autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-inline">
                <label for="username" class="layui-form-label">
                    <span class="x-red">*</span>图书页码
                </label>
                <div class="layui-input-inline">
                    <input type="text" id="" name="username" required="" lay-verify="required"
                           autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-inline">
                <label for="username" class="layui-form-label">
                    <span class="x-red">*</span>图书 ISBN
                </label>
                <div class="layui-input-inline">
                    <input type="text" id="" name="username" required="" lay-verify="required"
                           autocomplete="off" class="layui-input">
                </div>
            </div>
        </div>
        <div class="layui-form-item">
            <div class="layui-inline">
                <label for="username" class="layui-form-label">
                    <span class="x-red">*</span>作者
                </label>
                <div class="layui-input-inline">
                    <input type="text" id="" name="username" required="" lay-verify="required"
                           autocomplete="off" class="layui-input">
                </div>
            </div>
        </div>
        <div class="layui-form-item">
            <label for="desc" class="layui-form-label">
                简介
            </label>
            <div class="layui-input-block">
                <textarea placeholder="请输入内容" id="desc" name="desc" class="layui-textarea"></textarea>
            </div>

        </div>
        <!--图书基本信息 end-->


        <!--图书价格信息  start-->
        <fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
            <legend>图书价格信息</legend>
        </fieldset>
        <div class="layui-form-item">
            <div class="layui-inline">
                <label for="username" class="layui-form-label">
                    <span class="x-red">*</span>图书定价
                </label>
                <div class="layui-input-inline">
                    <input type="text" id="" name="username" required="" lay-verify="required"
                           autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-inline">
                <label for="username" class="layui-form-label">
                    <span class="x-red">*</span>实际售价
                </label>
                <div class="layui-input-inline">
                    <input type="text" id="" name="username" required="" lay-verify="required"
                           autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-inline">
                <label for="username" class="layui-form-label">
                    <span class="x-red">*</span>折扣
                </label>
                <div class="layui-input-inline">
                    <input type="text" id="" name="username" required="" lay-verify="required"
                           autocomplete="off" class="layui-input">
                </div>
            </div>
        </div>
        <!--图书价格信息  end-->

        <!--图书出版相关信息 start -->
        <fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
            <legend>图书出版社信息</legend>
        </fieldset>
        <div class="layui-form-item">
            <div class="layui-inline">
                <label for="phone" class="layui-form-label">
                    <span class="x-red">*</span>出版社
                </label>
                <div class="layui-input-inline">
                    <input type="text" id="phone" name="phone" required="" lay-verify="phone"
                           autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-inline">
                <label for="username" class="layui-form-label">
                    <span class="x-red">*</span>出版日期
                </label>
                <div class="layui-input-inline">
                    <input class="layui-input"  autocomplete="off" placeholder="出版日期" name="start" id="start">
                </div>
            </div>
            <div class="layui-inline">
                <label for="username" class="layui-form-label">
                    <span class="x-red">*</span>版次
                </label>
                <div class="layui-input-inline">
                    <input type="text" id="username" name="username" required="" lay-verify="required"
                           autocomplete="off" class="layui-input">
                </div>
            </div>
        </div>
        <!--图书出版相关信息 end-->
        <!--图书库存 start-->
        <fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
            <legend>图书库存信息</legend>
        </fieldset>
        <div class="layui-form-item">
            <div class="layui-inline">
                <label for="username" class="layui-form-label">
                    <span class="x-red">*</span>库存
                </label>
                <div class="layui-input-inline">
                    <input type="text" id="" name="username" required="" lay-verify="required"
                           autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-inline">
                <label for="username" class="layui-form-label">
                    <span class="x-red">*</span>入库时间
                </label>
                <div class="layui-input-inline">
                    <input type="text" id="" name="username" required="" lay-verify="required"
                           autocomplete="off" class="layui-input">
                </div>
            </div>
        </div>
        <!--图书库存 end-->

        <!--其他信息 start-->
        <fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
            <legend>其他信息</legend>
        </fieldset>
        <div class="layui-form-item">
            <div class="layui-inline">
                <label for="username" class="layui-form-label">
                    <span class="x-red">*</span>成交量
                </label>
                <div class="layui-input-inline">
                    <input type="text" id="" name="username" required="" lay-verify="required"
                           autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-inline">
                <label for="username" class="layui-form-label">
                    <span class="x-red">*</span>浏览次数
                </label>
                <div class="layui-input-inline">
                    <input type="text" id="" name="username" required="" lay-verify="required"
                           autocomplete="off" class="layui-input">
                </div>
            </div>
        </div>
        <!--图书库存 end-->
        <div class="layui-form-item">
            <label for="" class="layui-form-label">
            </label>
            <button  class="layui-btn" lay-filter="add" lay-submit="">
                保存
            </button>
        </div>
    </form>
</div>
<script>
    layui.use('laydate', function(){
        var laydate = layui.laydate;

        //执行一个laydate实例
        laydate.render({
            elem: '#start' //指定元素
        });

        //执行一个laydate实例
        laydate.render({
            elem: '#end' //指定元素
        });
    });

    layui.use(['form','layer'], function(){
        $ = layui.jquery;
        var form = layui.form
            ,layer = layui.layer;

        //自定义验证规则
        form.verify({
            nikename: function(value){
                if(value.length < 5){
                    return '昵称至少得5个字符啊';
                }
            }
            ,pass: [/(.+){6,12}$/, '密码必须6到12位']
            ,repass: function(value){
                if($('#L_pass').val()!=$('#L_repass').val()){
                    return '两次密码不一致';
                }
            }
        });

        //监听提交
        form.on('submit(add)', function(data){
            console.log(data);
            //发异步，把数据提交给php
            layer.alert("增加成功", {icon: 6},function () {
                // 获得frame索引
                var index = parent.layer.getFrameIndex(window.name);
                //关闭当前frame
                parent.layer.close(index);
            });
            return false;
        });


    });
</script>
</body>

</html>