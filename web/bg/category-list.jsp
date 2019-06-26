<%--
  Created by IntelliJ IDEA.
  User: liwei
  Date: 2019/6/22
  Time: 20:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html class="x-admin-sm">

<head>
    <meta charset="UTF-8">
    <title>分类列表</title>
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
				<a href="/bg/index.jsp">首页</a>
				<a href="">图书管理</a>
				<a>
					<cite>分类管理</cite></a>
			</span>
    <a class="layui-btn layui-btn-small" style="line-height:1.6em;margin-top:3px;float:right"
       href="javascript:location.replace(location.href);"
       title="刷新">
        <i class="layui-icon" style="line-height:30px">ဂ</i></a>
</div>
<div class="x-body">
    <div class="layui-row">
        <form class="layui-form layui-col-md12 x-so layui-form-pane">
            <input type="hidden" name="parentId" value="0">
            <input class="layui-input" placeholder="分类名" name="name">
            <button class="layui-btn" lay-submit="" lay-filter="save"><i class="layui-icon"></i>增加</button>
        </form>
    </div>
    <xblock>
        <button class="layui-btn layui-btn-danger" onclick=""></button>
        <span class="x-right" style="line-height:40px">共有数据：${categoryPage.totalRecord}  条</span>
    </xblock>
    <table class="layui-table layui-form x-admin">
        <thead>
        <tr>
<%--            <th width="20">--%>
<%--                <div class="layui-unselect header layui-form-checkbox" lay-skin="primary"><i--%>
<%--                        class="layui-icon">&#xe605;</i></div>--%>
<%--            </th>--%>
            <th width="70">ID</th>
            <th>分类名</th>
            <th width="250">操作</th>
        </thead>
        <tbody class="x-cate">
        <c:forEach items="${categoryPage.pageInfos}" var="category">
            <tr cate-id='${category.id}' fid='${category.parentId}'>
<%--                <td>--%>
<%--                    <div class="layui-unselect layui-form-checkbox" lay-skin="primary" data-id='${category.id}'><i--%>
<%--                            class="layui-icon">&#xe605;</i></div>--%>
<%--                </td>--%>
                <td>${category.id}</td>
                <td>
                    <i class="layui-icon x-show" status='true'>&#xe623;</i>
                        ${category.name}
                </td>
                <td class="td-manage">
                    <button class="layui-btn layui-btn layui-btn-xs"
                            onclick="x_admin_show('编辑','/bg/category/getOne?op=0&categoryId=${category.id}',500,400)"><i class="layui-icon">&#xe642;</i>编辑
                    </button>
                    <button class="layui-btn layui-btn-warm layui-btn-xs"
                            onclick="x_admin_show('添加子分类','/bg/category/getOne?op=1&categoryId=${category.id}',400,200)">
                        <i class="layui-icon">&#xe642;</i>添加子分类
                    </button>
                    <button class="layui-btn-danger layui-btn layui-btn-xs" onclick="category_del(this,${category.id})"
                            href="javascript:;"><i
                            class="layui-icon">&#xe640;</i>删除
                    </button>
                </td>
            </tr>
            <c:forEach items="${category.subCategory}" var="subCategory">
                <tr cate-id='${subCategory.id}' fid='${subCategory.parentId}'>
<%--                    <td>--%>
<%--                        <div class="layui-unselect layui-form-checkbox" lay-skin="primary" data-id='${subCategory.id}'>--%>
<%--                            <i class="layui-icon">&#xe605;</i></div>--%>
<%--                    </td>--%>
                    <td>${subCategory.id}</td>
                    <td>
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        ├${subCategory.name}
                    </td>
                    <td class="td-manage">
                        <button class="layui-btn layui-btn layui-btn-xs"
                                onclick="x_admin_show('编辑','/bg/category/getOne?op=0&categoryId=${subCategory.id}',500,400)"><i
                                class="layui-icon">&#xe642;</i>编辑
                        </button>
                        <button class="layui-btn-danger layui-btn layui-btn-xs"
                                onclick="category_del(this,${subCategory.id})" href="javascript:;"><i
                                class="layui-icon">&#xe640;</i>删除
                        </button>
                    </td>
                </tr>
            </c:forEach>
        </c:forEach>
        </tbody>
    </table>
</div>
<style type="text/css">

</style>
<script>
    layui.use(['form'], function () {
        form = layui.form;
        //监听提交
        form.on('submit(save)', function (data) {
            console.log(data);
            $.ajax({
                type: "POST",
                contentType: "application/json;charset=UTF-8",
                url: '/bg/category/add',
                dataType: "json",
                data: JSON.stringify(data.field),
                success: function (data) {
                    if (data.result == 1) {
                        layer.alert("增加成功", {icon: 6}, function () {
                            location.replace(location.href);
                        });
                    } else {
                        layer.msg('添加失败! error' + data, {icon: 2, time: 1000});
                    }
                },
                error: function (data) {
                    layer.msg('添加失败! error' + data, {icon: 2, time: 1000});
                }
            });
            return false;
        });
    });


    /*分类-删除*/
    function category_del(obj, id) {
        layer.confirm('确认要删除该分类及其子类，并且删除该分类下的所有图书？', function (index) {
            $.ajax({
                type: "POST",
                contentType: "application/json;charset=UTF-8",
                url: '/bg/category/delete',
                dataType: "json",
                data: '{"categoryId":' + id + '}',
                success: function (data) {
                    if (data.result > 0) {
                        location.replace(location.href);
                        layer.msg('已删除!', {icon: 1, time: 1000});
                    } else {
                        layer.msg('删除失败!' + data.result, {icon: 2, time: 1000});
                    }
                },
                error: function (data) {
                    layer.msg('删除失败! error' + data, {icon: 2, time: 1000});
                }
            });
        });
    }

    function delAll(argument) {

        var data = tableCheck.getData();

        layer.confirm('确认要删除吗？' + data, function (index) {
            //捉到所有被选中的，发异步进行删除
            layer.msg('删除成功', {
                icon: 1
            });
            $(".layui-form-checked").not('.header').parents('tr').remove();
        });
    }
</script>
</body>
</html>
