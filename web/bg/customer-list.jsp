<%--
  Created by IntelliJ IDEA.
  User: liwei
  Date: 2019/6/22
  Time: 21:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html class="x-admin-sm">
<head>
    <meta charset="UTF-8">
    <title>顾客列表</title>
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
        <a href="">顾客管理</a>
        <a><cite>顾客列表</cite></a>
      </span>
    <a class="layui-btn layui-btn-small" style="line-height:1.6em;margin-top:3px;float:right"
       href="javascript:location.replace(location.href);" title="刷新">
        <i class="layui-icon" style="line-height:30px">ဂ</i></a>
</div>
<div class="x-body">
    <div class="layui-row">
        <form class="layui-form layui-col-md12 x-so" action="/bg/customer/list">
            <input type="text" name="name" placeholder="顾客姓名" autocomplete="off" class="layui-input">
            <input type="text" name="phone" placeholder="顾客电话号码" autocomplete="off" class="layui-input">
            <button class="layui-btn" lay-submit=""><i class="layui-icon">&#xe615;</i></button>
        </form>
    </div>
    <xblock>
        <button class="layui-btn" style="width: 0px" disabled="disabled"></button>
        <span class="x-right" style="line-height:40px">共有数据：${customerPage.totalRecord} 条</span>
    </xblock>
    <table class="layui-table x-admin">
        <thead>
        <tr>
            <%--            <th>--%>
            <%--                <div class="layui-unselect header layui-form-checkbox" lay-skin="primary"><i class="layui-icon">&#xe605;</i></div>--%>
            <%--            </th>--%>
            <th>顾客ID</th>
            <th>姓名</th>
            <th>性别</th>
            <th>电话号码</th>
            <th>邮箱</th>
            <th>注册时间</th>
            <th>最近登陆时间</th>
            <th>操作</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${customerPage.pageInfos}" var="customer">
            <tr>
                    <%--                <td>--%>
                    <%--                    <div class="layui-unselect layui-form-checkbox" lay-skin="primary" data-id='${customer.ID}'><i class="layui-icon">&#xe605;</i></div>--%>
                    <%--                </td>--%>
                <td>${customer.ID}</td>
                <td>${customer.name}</td>
                <td>${customer.gender}</td>
                <td>${customer.phone}</td>
                <td>${customer.email}</td>
                <td><fmt:formatDate value="${customer.createTime}" type="both"></fmt:formatDate></td>
                <td><fmt:formatDate value="${customer.lastLoginTime}" type="both"></fmt:formatDate></td>
                <td class="td-manage">
                    <a title="编辑" onclick="x_admin_show('编辑顾客','/bg/customer/getOne?customerId=${customer.ID}',800,500)"
                       href="javascript:;">
                        <i class="layui-icon">&#xe642;</i>
                    </a>
                    <a title="删除" onclick="customer_del(this,${customer.ID})" href="javascript:;">
                        <i class="layui-icon">&#xe640;</i>
                    </a>
                </td>
            </tr>

        </c:forEach>
        </tbody>
    </table>
    <div class="page">
        <c:set var="currentPage" value="${customerPage.getPageCurrent()}"></c:set>
        <c:set var="totalPage" value="${customerPage.getTotalPage()}"></c:set>
        <c:set var="url" value="${customerPage.getPath()}"></c:set>
        <div>
            <c:if test="${currentPage - 1 >= 1}">
                <a class="prev" href="${url}&currentPage=${currentPage-1}">上一页</a>
            </c:if>
            <c:if test="${currentPage + 1 <= totalPage}">
                <a class="next" href="${url}&currentPage=${currentPage+1}">下一页</a>
            </c:if>

        </div>
    </div>

</div>
<script>
    layui.use('laydate', function () {
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

    /*顾客-删除*/
    function customer_del(obj, id) {
        layer.confirm('确认要删除该顾客信息，并删除所有与该顾客相关的信息？', function (index) {
            $.ajax({
                type: "POST",
                contentType: "application/json;charset=UTF-8",
                url: '/bg/customer/delete',
                dataType: "json",
                data: '{"customerId":' + id + '}',
                success: function (data) {
                    if (data.result > 0) {
                        $(obj).parents("tr").remove();
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

</script>
</body>
</html>
