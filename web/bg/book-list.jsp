<%--
  Created by IntelliJ IDEA.
  User: liwei
  Date: 2019/6/22
  Time: 20:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html class="x-admin-sm">
<head>
    <meta charset="UTF-8">
    <title>图书列表</title>
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
        <a href="">首页</a>
        <a href="">图书管理</a>
        <a>
          <cite>图书列表</cite>
        </a>
      </span>
    <a class="layui-btn layui-btn-small" style="line-height:1.6em;margin-top:3px;float:right"
       href="javascript:location.replace(location.href);" title="刷新">
        <i class="layui-icon" style="line-height:30px">ဂ</i></a>
</div>
<div class="x-body">
    <div class="layui-row">
        <form class="layui-form layui-col-md12 x-so" action="/bg/book/list?op=1">
            <div class="layui-input-inline">
                <input type="text" name="name" placeholder="图书名称" autocomplete="off" class="layui-input">
            </div>
            <div class="layui-input-inline">
                <select id="categoryId" name="categoryId" class="valid">
                    <option value="0">图书分类</option>
                    <c:forEach items="${sessionScope.categoryList}" var="category">
                        <option value="${category.id}">${category.name}</option>
                    </c:forEach>
                </select>
            </div>
            <div class="layui-input-inline">
                <input type="text" name="publisher" placeholder="出版商" autocomplete="off" class="layui-input">
            </div>
            <div class="layui-input-inline">
                <button class="layui-btn" type="submit"><i class="layui-icon">&#xe615;</i></button>
            </div>
        </form>
    </div>
    <xblock>
        <button class="layui-btn layui-btn-danger" onclick="delAll()"><i class="layui-icon"></i>批量删除</button>
        <button class="layui-btn" onclick="x_admin_show('添加图书','/bg/book-add.jsp',1000,650)"><i class="layui-icon"></i>添加图书
        </button>
        <span class="x-right" style="line-height:40px">共有数据：${bookPage.totalRecord} 条</span>
    </xblock>
    <table class="layui-table x-admin">
        <thead>
        <tr>
            <th>
                <div class="layui-unselect header layui-form-checkbox" lay-skin="primary"><i
                        class="layui-icon">&#xe605;</i></div>
            </th>
            <th>图书编号</th>
            <th>图书名称</th>
            <th>图书作者</th>
            <th>类别</th>
            <th>出版社</th>
            <th>价格</th>
            <th>图书库存</th>
            <th>操作</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${bookPage.pageInfos}" var="book">
            <tr>

                <td>
                    <div class="layui-unselect layui-form-checkbox" lay-skin="primary" data-id='${book.ID}'><i
                            class="layui-icon">&#xe605;</i></div>
                </td>
                <td>${book.ID}</td>
                <td>${book.name}</td>
                <td>${book.author}</td>
                <td>${book.category.name}</td>
                <td>${book.publisher }</td>
                <td>${book.sellingPrice}</td>
                <td>${book.reserve}</td>
                <td class="td-manage">
                    <a title="库存修改"
                       onclick="x_admin_show('添加库存','/bg/book/getOne?bookId=${book.ID}&op=1',400,300)"
                       href="javascript:;">
                        <i class="layui-icon">&#xe654;</i>
                    </a>
                    <a title="编辑" onclick="x_admin_show('图书信息修改','/bg/book/getOne?bookId=${book.ID}&op=0',1000,650)" href="javascript:;">
                        <i class="layui-icon">&#xe642;</i>
                    </a>
                    <a title="删除" onclick="book_del(this,${book.ID})" href="javascript:;">
                        <i class="layui-icon">&#xe640;</i>
                    </a>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
    <div class="page">
        <c:set var="currentPage" value="${bookPage.getPageCurrent()}"></c:set>
        <c:set var="totalPage" value="${bookPage.getTotalPage()}"></c:set>
        <c:set var="url" value="${bookPage.getPath()}"></c:set>
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

    /*图书-删除*/
    function book_del(obj, id) {
        layer.confirm('确认要删除吗？', function (index) {
            $.ajax({
                type: "POST",
                contentType: "application/json;charset=UTF-8",
                url: '/bg/book/delete',
                dataType: "json",
                data: '{"bookId":' + id + '}',
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
        layer.confirm('确认要删除吗？', function (index) {
            $.ajax({
                type: "POST",
                contentType: "application/json;charset=UTF-8",
                url: '/bg/book/deleteAll',
                dataType: "json",
                data: '{"bookIds":"' + data + '"}',
                success: function (data) {
                    if (data.result > 0) {
                        layer.msg('已删除!', {icon: 1, time: 1000},function () {
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
