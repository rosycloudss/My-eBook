<%--
  Created by IntelliJ IDEA.
  User: liwei
  Date: 2019/6/22
  Time: 20:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html class="x-admin-sm">
<head>
    <meta charset="UTF-8">
    <title>员工列表</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <%--    <meta name="viewport" content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi" />--%>
    <link rel="stylesheet" href="/bg/css/font.css">
    <link rel="stylesheet" href="/bg/css/xadmin.css">
    <script type="text/javascript" src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
    <script type="text/javascript" src="https://cdn.bootcss.com/blueimp-md5/2.10.0/js/md5.min.js"></script>
    <script src="/bg/lib/layui/layui.js" charset="utf-8"></script>
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
        <a href="/bg/book/list?op=1">员工管理</a>
        <a>
          <cite>员工列表</cite></a>
      </span>
    <a class="layui-btn layui-btn-small" style="line-height:1.6em;margin-top:3px;float:right"
       href="javascript:location.replace(location.href);" title="刷新">
        <i class="layui-icon" style="line-height:30px">ဂ</i></a>
</div>
<div class="x-body">
    <div class="layui-row">
        <form class="layui-form layui-col-md12 x-so" action="/bg/employee/list?op=1">
            <input type="text" name="name" placeholder="请输入员工名称" autocomplete="off" class="layui-input">
            <button class="layui-btn" type="submit"><i class="layui-icon">&#xe615;</i></button>
        </form>
    </div>
    <xblock>
        <button class="layui-btn layui-btn-danger" onclick="delAll()"><i class="layui-icon"></i>批量删除</button>
        <button class="layui-btn" onclick="x_admin_show('添加员工','/bg/employee-add.jsp',600,400)"><i
                class="layui-icon"></i>添加
        </button>
        <span class="x-right" style="line-height:40px">共有数据：${employeePage.totalRecord}条</span>
    </xblock>
    <table class="layui-table x-admin">
        <thead>
        <tr>
            <th>
                <div class="layui-unselect header layui-form-checkbox" lay-skin="primary"><i
                        class="layui-icon">&#xe605;</i></div>
            </th>
            <th>ID</th>
            <th>员工名称</th>
            <%--            <th>性别</th>--%>
            <th>手机号</th>
            <%--            <th>邮箱</th>--%>
            <th>加入时间</th>
            <th>职位</th>
            <th>操作</th>
        </tr>
        </thead>
        <tbody>

        <c:forEach items="${employeePage.pageInfos}" var="employee">
            <tr>
                <td>
                    <div class="layui-unselect layui-form-checkbox" lay-skin="primary" data-id='${employee.getID()}'><i
                            class="layui-icon">&#xe605;</i></div>
                </td>
                <td>${employee.getID()}</td>
                <td>${employee.getName()}</td>
                    <%--                <td>${employee.}</td>--%>
                <td>${employee.getPhone()}</td>
                <td><fmt:formatDate value="${employee.createTime}" type="both"></fmt:formatDate></td>
                <td>${employee.getPosition() == 1 ? "管理员" : "普通员工"}</td>
                <td class="td-manage">
                    <a title="编辑"
                       onclick="x_admin_show('编辑员工','/bg/employee/get_edit_employee?employeeId=${employee.getID()}',600,400)"
                       href="javascript:;">
                        <i class="layui-icon">&#xe642;</i>
                    </a>
                        <%--                    <a onclick="reset_password(this,'要重置密码的id')" title="重置密码" href="javascript:;">--%>
                        <%--                        <i class="layui-icon">&#xe631;</i>--%>
                        <%--                    </a>--%>
                    <c:if test="${sessionScope.employee.getPosition() == 1 && sessionScope.employee.getID() != employee.getID()}">
                        <a title="删除" onclick="employee_del(this,${employee.getID()})" href="javascript:;">
                            <i class="layui-icon">&#xe640;</i>
                        </a>
                    </c:if>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
    <div class="page">
        <c:set var="currentPage" value="${employeePage.getPageCurrent()}"></c:set>
        <c:set var="totalPage" value="${employeePage.getTotalPage()}"></c:set>
        <c:set var="url" value="${employeePage.getPath()}"></c:set>
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


    /*员工-删除*/
    function employee_del(obj, id) {
        layer.confirm('确认要删除吗？', function (index) {
            $.ajax({
                type: "POST",
                contentType: "application/json;charset=UTF-8",
                url: '/bg/employee/delete',
                dataType: "json",
                data: '{"employeeId":' + id + '}',
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
            //捉到所有被选中的，发异步进行删除
            layer.msg('删除成功', {icon: 1});
            $(".layui-form-checked").not('.header').parents('tr').remove();
            location.replace(location.href);
        });
    }
</script>
</body>
</html>