<%--
  Created by IntelliJ IDEA.
  User: liwei
  Date: 2019/6/22
  Time: 20:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html class="x-admin-sm">

<head>
    <meta charset="UTF-8">
    <title>图书修改</title>
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
        <!--图书基本信息 start-->
        <fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
            <legend>图书基本信息</legend>
        </fieldset>
        <div class="layui-form-item">
            <div class="layui-inline">
                <label for="ID" class="layui-form-label">
                    图书编号
                </label>
                <div class="layui-input-inline">
                    <input type="text" id="ID" name="ID" value="${book.ID}" required="" lay-verify="required"
                           autocomplete="off" class="layui-input">
                </div>
            </div>

            <div class="layui-inline">
                <label for="name" class="layui-form-label">
                    图书名称
                </label>
                <div class="layui-input-inline">
                    <input type="text" id="name" name="name" value="${book.name}" required="" lay-verify="required"
                           autocomplete="off" class="layui-input">
                </div>
            </div>
            <%--            <div class="layui-inline">--%>
            <%--                <label for="cover" class="layui-form-label">--%>
            <%--                    <span class="x-red">*</span>图书封面--%>
            <%--                </label>--%>
            <%--                <div class="layui-input-inline">--%>
            <%--                    <input type="file" id="cover" name="coverImg" required="" lay-verify="required"--%>
            <%--                           autocomplete="off" class="layui-input">--%>
            <%--                </div>--%>
            <%--            </div>--%>
        </div>

        <div class="layui-form-item">
            <div class="layui-inline">
                <label for="categoryId" class="layui-form-label">
                    图书类型
                </label>
                <div class="layui-input-inline">
                    <select id="categoryId" name="categoryId" class="valid">
                        <option value="0">图书分类</option>
                        <c:forEach items="${sessionScope.categoryList}" var="category">
                            <option value="${category.id}" ${book.category.id == category.id?"selected":""}>${category.name}</option>
                        </c:forEach>
                    </select>
                </div>
            </div>
            <div class="layui-inline">
                <label for="pages" class="layui-form-label">
                    图书页码
                </label>
                <div class="layui-input-inline">
                    <input type="number" id="pages" name="pages" value="${book.pages}" required="" lay-verify="required"
                           autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-inline">
                <label for="ISBN" class="layui-form-label">
                    图书 ISBN
                </label>
                <div class="layui-input-inline">
                    <input type="text" id="ISBN" name="ISBN" value="${book.ISBN}" required="" lay-verify="required"
                           autocomplete="off" class="layui-input">
                </div>
            </div>
        </div>
        <div class="layui-form-item">
            <div class="layui-inline">
                <label for="author" class="layui-form-label">
                    作者
                </label>
                <div class="layui-input-inline">
                    <input type="text" id="author" name="author" value="${book.author}" required="" lay-verify="required"
                           autocomplete="off" class="layui-input">
                </div>
            </div>
        </div>
        <div class="layui-form-item">
            <label for="description" class="layui-form-label">
                简介
            </label>
            <div class="layui-input-block">
                <textarea placeholder="请输入内容" id="description" name="description" class="layui-textarea">${book.description}
                </textarea>
            </div>

        </div>
        <!--图书基本信息 end-->


        <!--图书价格信息  start-->
        <fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
            <legend>图书价格信息</legend>
        </fieldset>
        <div class="layui-form-item">
            <div class="layui-inline">
                <label for="price" class="layui-form-label">
                    图书定价
                </label>
                <div class="layui-input-inline">
                    <input type="text" id="price" name="price" value="${book.price}" required="" lay-verify="required"
                           autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-inline">
                <label for="sellingPrice" class="layui-form-label">
                    实际售价
                </label>
                <div class="layui-input-inline">
                    <input type="text" id="sellingPrice" name="sellingPrice" value="${book.sellingPrice}" required="" lay-verify="required"
                           autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-inline">
                <label for="discount" class="layui-form-label">
                    折扣
                </label>
                <div class="layui-input-inline">
                    <input type="text" id="discount" name="discount" value="${book.discount}" required=""
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
                <label for="publisher" class="layui-form-label">
                    出版社
                </label>
                <div class="layui-input-inline">
                    <input type="text" id="publisher" name="publisher" value="${book.publisher}" required="" lay-verify="require"
                           autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-inline">
                <label for="publishDate" class="layui-form-label">
                    <span class="x-red">*</span>出版日期
                </label>
                <div class="layui-input-inline">
                    <input class="layui-input"  autocomplete="off" value="${book.publishDate}" placeholder="出版日期" name="publishDate" id="publishDate">
                </div>
            </div>
            <div class="layui-inline">
                <label for="edition" class="layui-form-label">
                    版次
                </label>
                <div class="layui-input-inline">
                    <input type="number" id="edition" name="edition" value="${book.edition}" required="" lay-verify="required"
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
                <label for="reserve" class="layui-form-label">
                    库存
                </label>
                <div class="layui-input-inline">
                    <input type="number" id="reserve" name="reserve" value="${book.reserve}" required="" lay-verify="required"
                           autocomplete="off" class="layui-input">
                </div>
            </div>
        </div>


        <!--图书库存 end-->
        <div class="layui-form-item">
            <label for="submit" class="layui-form-label">
            </label>
            <button id="submit"  class="layui-btn" lay-filter="save" lay-submit="">
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
            elem: '#publishDate' //指定元素
        });
    });

    layui.use(['form','layer'], function(){
        $ = layui.jquery;
        var form = layui.form
            ,layer = layui.layer;


        //监听提交
        form.on('submit(save)', function(data){
            console.log(data);
            $.ajax({
                type:"POST",
                contentType: "application/json;charset=UTF-8",
                url:'/bg/book/edit',
                dataType:"json",
                data: JSON.stringify(data.field),
                success:function(data){
                    if(data.result == 1){
                        layer.alert("保存成功", {icon: 6},function () {
                            //关闭当前frame
                            x_admin_close();

                            // 可以对父窗口进行刷新
                            x_admin_father_reload();
                        });
                    }else{
                        layer.msg('保存失败! error' + data, {icon: 2, time: 1000});
                    }
                },
                error:function (data) {
                    layer.msg('保存失败! error' + data, {icon: 2, time: 1000});
                }
            });
            return false;
        });


    });
</script>
</body>

</html>