<%--
  Created by IntelliJ IDEA.
  User: liwei
  Date: 2019/6/22
  Time: 20:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!--图书分类修改 -->
<!DOCTYPE html>
<html class="x-admin-sm">

<head>
    <meta charset="UTF-8">
    <title>分类编辑</title>
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
            <label for="id" class="layui-form-label">
                分类ID
            </label>
            <div class="layui-input-inline">
                <input type="text" id="id" name="id" value="${category.id}" disabled="disabled" required="" lay-verify="required"
                       autocomplete="off" class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label for="name" class="layui-form-label">
                分类名称
            </label>
            <div class="layui-input-inline">
                <input type="text" id="name" name="name" value="${category.name}" required="" lay-verify=""
                       autocomplete="off" class="layui-input">
            </div>

        </div>
        <div class="layui-form-item">
            <label for="parentId" class="layui-form-label">
                父级分类
            </label>
            <div class="layui-input-inline">
                <select id="parentId" name="parentId" class="valid">
                    <option value="0">一级分类</option>
                    <c:forEach items="${categoryPage.pageInfos}" var="parentCategory">
                        <option value="${parentCategory.id}" ${parentCategory.id==category.parentId?"selected":""}>${parentCategory.name}</option>
                    </c:forEach>
                </select>
            </div>

        </div>
        <div class="layui-form-item">
            <label for="parentId" class="layui-form-label">
            </label>
            <button  class="layui-btn" lay-filter="add" lay-submit="">
                保存
            </button>
        </div>
    </form>
</div>
<script>
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
                url:'/bg/category/edit',
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