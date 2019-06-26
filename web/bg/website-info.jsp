<%--
  Created by IntelliJ IDEA.
  User: liwei
  Date: 2019/6/22
  Time: 20:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html class="x-admin-sm">

<head>
    <meta charset="UTF-8">
    <title>图书添加</title>
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
<div class="x-nav">
			<span class="layui-breadcrumb">
				<a href="/bg/welcome.jsp">首页</a>
				<a href="">网站管理</a>
				<a><cite>网站信息</cite></a>
			</span>
    <a class="layui-btn layui-btn-small" style="line-height:1.6em;margin-top:3px;float:right" href="javascript:location.replace(location.href);"
       title="刷新">
        <i class="layui-icon" style="line-height:30px">ဂ</i></a>
</div>
<div class="x-body">
    <form class="layui-form" action="/bg/website/edit" method="post">
        <!--网站基本信息 start-->
        <fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
            <legend>网站基本信息</legend>
        </fieldset>
        <div class="layui-form-item">
            <input type="hidden" name="ID" value="${website.ID}">
            <div class="layui-inline">
                <label for="" class="layui-form-label">
                    网站名称
                </label>
                <div class="layui-input-inline">
                    <input type="text" id="" name="name" value="${website.name}" required="" lay-verify="required"
                           autocomplete="off" class="layui-input">
                </div>
            </div>
        </div>
        <div class="layui-form-item">
            <div class="layui-inline">
                <label for="email" class="layui-form-label">
                    邮箱
                </label>
                <div class="layui-input-inline">
                    <input type="text" id="email" name="email"  value="${website.email}" required="" lay-verify="email"
                           autocomplete="off" class="layui-input">
                </div>
            </div>
        </div>
        <div class="layui-form-item">
            <div class="layui-inline">
                <label for="phone" class="layui-form-label">
                    联系电话
                </label>
                <div class="layui-input-inline">
                    <input type="text" id="phone" name="phone" value="${website.phone}" required="" lay-verify="phone"
                           autocomplete="off" class="layui-input">
                </div>
            </div>
        </div>
        <div class="layui-form-item">
            <label for="addr" class="layui-form-label">
                地址
            </label>
            <div class="layui-input-block">
                <textarea placeholder="请输入内容" id="addr" name="addr" class="layui-textarea">${website.addr}</textarea>
            </div>
        </div>
        <!--网站基本信息 end-->
        <div class="layui-form-item">
            <label for="" class="layui-form-label">
            </label>
            <button  class="layui-btn" lay-filter="add" lay-submit="">
                修改
            </button>
        </div>
    </form>
</div>
<script>
    layui.use(['form','layer'], function(){
        $ = layui.jquery;
        var form = layui.form
            ,layer = layui.layer;

    });
</script>
</body>

</html>