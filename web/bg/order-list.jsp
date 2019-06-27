<%--
  Created by IntelliJ IDEA.
  User: liwei
  Date: 2019/6/22
  Time: 20:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html class="x-admin-sm">
<head>
    <meta charset="UTF-8">
    <title>订单列表</title>
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
        <a href="/bg/welcome.jsp.jsp">首页</a>
        <a href="">图书管理</a>
        <a>
          <cite>订单列表</cite>
        </a>
      </span>
    <a class="layui-btn layui-btn-small" style="line-height:1.6em;margin-top:3px;float:right"
       href="javascript:location.replace(location.href);" title="刷新">
        <i class="layui-icon" style="line-height:30px">ဂ</i></a>
</div>
<div class="x-body">
    <div class="layui-row">
        <form class="layui-form layui-col-md12 x-so" action="/bg/order/list?op=1">
            <input class="layui-input" placeholder="开始日" name="startDate" id="startDate">
            <input class="layui-input" placeholder="截止日" name="endDate" id="endDate">
            <div class="layui-input-inline">
                <select name="payStatus">
                    <option value="">支付状态</option>
                    <option value="1">已支付</option>
                    <option value="2">未支付</option>
                </select>
            </div>
            <div class="layui-input-inline">
                <select name="orderStatus">
                    <option value="">订单状态</option>
                    <option value="1">待确认</option>
                    <option value="2">已确认</option>
                    <option value="3">已收货</option>
                    <option value="4">已取消</option>
                    <option value="5">已完成</option>
                    <option value="6">已作废</option>
                </select>
            </div>
            <input type="text" name="orderNo" placeholder="请输入订单号" autocomplete="off" class="layui-input">
            <button class="layui-btn"><i class="layui-icon">&#xe615;</i></button>
        </form>
    </div>
    <xblock>
        <button class="layui-btn layui-btn-danger" onclick="delAll()"><i class="layui-icon"></i>批量删除</button>
        <span class="x-right" style="line-height:40px">共有数据：${orderPage.totalRecord} 条</span>
    </xblock>
    <table class="layui-table x-admin">
        <thead>
        <tr>
            <th>
                <div class="layui-unselect header layui-form-checkbox" lay-skin="primary"><i
                        class="layui-icon">&#xe605;</i></div>
            </th>
            <th>订单编号</th>
            <th>收货人</th>
            <th>总金额</th>
            <th>订单状态</th>
            <th>支付状态</th>
            <th>发货状态</th>
            <th>配送方式</th>
            <th>下单时间</th>
            <th>操作</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${orderPage.pageInfos}" var="order">
            <tr>
                <td>
                    <div class="layui-unselect layui-form-checkbox" lay-skin="primary" data-id='${order.ID}'><i
                            class="layui-icon">&#xe605;</i>
                    </div>
                </td>
                <td>${order.orderID}</td>
                <td>${order.customer.name}:${order.customer.phone}</td>
                <td>${order.totalPrice}</td>
                <td>${order.orderStatus}</td>
                <td>${order.payStatus}</td>
                <td>${order.postStatus}</td>
                <td>${order.delivery}</td>
                <td><fmt:formatDate value="${order.orderDate}" type="both"></fmt:formatDate></td>
                <td class="td-manage">
                    <a title="查看" onclick="x_admin_show('查看订单','/bg/order/getOne')" href="javascript:;">
                        <i class="layui-icon">&#xe63c;</i>
                    </a>
                    <a title="删除" onclick="order_del(this,${order.ID})" href="javascript:;">
                        <i class="layui-icon">&#xe640;</i>
                    </a>
                </td>
            </tr>
        </c:forEach>

        </tbody>
    </table>
    <div class="page">
        <c:set var="currentPage" value="${orderPage.getPageCurrent()}"></c:set>
        <c:set var="totalPage" value="${orderPage.getTotalPage()}"></c:set>
        <c:set var="url" value="${orderPage.getPath()}"></c:set>
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
            elem: '#startDate' //指定元素
        });

        //执行一个laydate实例
        laydate.render({
            elem: '#endDate' //指定元素
        });
    });

    /*订单-删除*/
    function order_del(obj, id) {
        layer.confirm('确认要删除吗？', function (index) {
            $.ajax({
                type: "POST",
                contentType: "application/json;charset=UTF-8",
                url: '/bg/order/delete',
                dataType: "json",
                data: '{"orderId":' + id + '}',
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
        layer.confirm('确认要批量删除吗？', function (index) {
            $.ajax({
                type: "POST",
                contentType: "application/json;charset=UTF-8",
                url: '/bg/order/deleteAll',
                dataType: "json",
                data: '{"orderIds":"' + data + '"}',
                success: function (data) {
                    if (data.result > 0) {
                        layer.msg('已删除!', {icon: 1, time: 1000}, function () {
                            location.replace(location.href);
                        });
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
