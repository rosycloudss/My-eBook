<%--
  Created by IntelliJ IDEA.
  User: liwei
  Date: 2019/6/22
  Time: 20:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html class="x-admin-sm">
<head>
    <meta charset="UTF-8">
    <title>评论列表</title>
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
        <a href="">评论管理</a>
        <a>
          <cite>评论列表</cite></a>
      </span>
    <a class="layui-btn layui-btn-small" style="line-height:1.6em;margin-top:3px;float:right"
       href="javascript:location.replace(location.href);" title="刷新">
        <i class="layui-icon" style="line-height:30px">ဂ</i></a>
</div>
<div class="x-body">
    <div class="layui-row">
        <form class="layui-form layui-col-md12 x-so">
            <input type="text" name="username" placeholder="请输入商品ID" autocomplete="off" class="layui-input">
            <input type="text" name="username" placeholder="请输入商品名称" autocomplete="off" class="layui-input">
            <button class="layui-btn" lay-submit="" lay-filter="sreach"><i class="layui-icon">&#xe615;</i></button>
        </form>
    </div>
    <xblock>
        <button class="layui-btn layui-btn-danger" onclick="delAll()"><i class="layui-icon"></i>批量删除</button>
        <span class="x-right" style="line-height:40px">共有数据：${commentPage.totalRecord} 条</span>
    </xblock>
    <table class="layui-table x-admin">
        <thead>
        <tr>
            <th>
                <div class="layui-unselect header layui-form-checkbox" lay-skin="primary"><i
                        class="layui-icon">&#xe605;</i></div>
            </th>
            <th>评论ID</th>
            <th>图书名称</th>
            <th>评论人</th>
            <th width="250">评论内容</th>
            <th>评论时间</th>
            <th>操作</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${commentPage.pageInfos}" var="comment">
            <tr>
                <td>
                    <div class="layui-unselect layui-form-checkbox" lay-skin="primary" data-id='${comment.ID}'><i
                            class="layui-icon">&#xe605;</i></div>
                </td>
                <td>${comment.ID}</td>
                <td>${comment.book.name}</td>
                <td>${comment.customer.name}</td>
                <td>${comment.content}</td>
                <td>${comment.commentDate}</td>
                <td class="td-manage">
                    <a title="删除" onclick="comment_del(this,${comment.ID})" href="javascript:;">
                        <i class="layui-icon">&#xe640;</i>
                    </a>
                </td>
            </tr>

        </c:forEach>

        </tbody>
    </table>
    <div class="page">
        <c:set var="currentPage" value="${commentPage.getPageCurrent()}"></c:set>
        <c:set var="totalPage" value="${commentPage.getTotalPage()}"></c:set>
        <c:set var="url" value="${commentPage.getPath()}"></c:set>
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

    /*重置密码*/
    function reset_password(obj, id) {
        layer.confirm('确认重置员工密码吗？', function (index) {
            //发异步重置密码
            // $(obj).parents("tr").remove();
            layer.msg('已重置!', {icon: 1, time: 1000});
        });
    }


    /*用户-删除*/
    function comment_del(obj, id) {
        layer.confirm('确认要删除吗？', function (index) {
            $.ajax({
                type: "POST",
                contentType: "application/json;charset=UTF-8",
                url: '/bg/comment/delete',
                dataType: "json",
                data: '{"commentId":' + id + '}',
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


    function delAll(argument) {

        var data = tableCheck.getData();
        layer.confirm('确认要删除吗？' + data, function (index) {
            $.ajax({
                type: "POST",
                contentType: "application/json;charset=UTF-8",
                url: '/bg/comment/deleteAll',
                dataType: "json",
                data: '{"commentIds":"' + data + '"}',
                success: function (data) {
                    if (data.result > 0) {
                        layer.msg('已删除!', {icon: 1, time: 1000},function () {
                            $(".layui-form-checked").not('.header').parents('tr').remove();
                        });
                    } else {
                        layer.msg('删除失败!', {icon: 2, time: 1000});
                    }
                },
                error: function (data) {
                    layer.msg('删除失败!', {icon: 2, time: 1000});
                }
            });
        });
    }
</script>
</body>
</html>
