<%--
  Created by IntelliJ IDEA.
  User: liwei
  Date: 2019/6/22
  Time: 20:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html  class="x-admin-sm">
<head>
    <meta charset="UTF-8">
    <title>My-eBook 后台管理系统</title>
    <meta name="renderer" content="webkit|ie-comp|ie-stand">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<%--    <meta name="viewport" content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi" />--%>
    <meta http-equiv="Cache-Control" content="no-siteapp" />
    <link rel="stylesheet" href="/bg/css/font.css">
    <link rel="stylesheet" href="/bg/css/xadmin.css">
    <script type="text/javascript" src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
    <script type="text/javascript"src="https://cdn.bootcss.com/blueimp-md5/2.10.0/js/md5.min.js"></script>
    <script src="/bg/lib/layui/layui.js" charset="utf-8"></script>
    <script type="text/javascript" src="/bg/js/xadmin.js"></script>
    <script type="text/javascript" src="/bg/js/cookie.js"></script>
    <script>
        // 是否开启刷新记忆tab功能
        // var is_remember = false;
    </script>
</head>
<body>
<!-- 顶部开始 -->
<div class="container">
    <div class="logo"><a href="./index.html">My-eBook 后台管理系统</a></div>
    <div class="left_open">
        <i title="展开左侧栏" class="iconfont">&#xe699;</i>
    </div>
    <ul class="layui-nav right" lay-filter="">
        <li class="layui-nav-item">
            <a href="javascript:;">${sessionScope.employee.getPosition() == 1 ? "管理员" : "员工"} ${sessionScope.employee.getName()}</a>
            <dl class="layui-nav-child"> <!-- 二级菜单 -->
                <dd><a onclick="x_admin_show('个人信息','/bg/employee-info.jsp',400,300)">个人信息</a></dd>
                <dd><a onclick="x_admin_show('个人信息','/bg/employee-password.jsp',400,300)">修改密码</a></dd>
                <dd><a href="login.jsp">退出</a></dd>
            </dl>
        </li>
        <li class="layui-nav-item to-index"><a href="/fg/index.jsp">前台首页</a></li>
    </ul>

</div>
<!-- 顶部结束 -->
<!-- 中部开始 -->
<!-- 左侧菜单开始 -->
<div class="left-nav">
    <div id="side-nav">
        <ul id="nav">
            <!--图书管理 start -->
            <li>
                <a href="javascript:;">
                    <i class="iconfont">&#xe705;</i>
                    <cite>图书管理</cite>
                    <i class="iconfont nav_right">&#xe697;</i>
                </a>
                <ul class="sub-menu">
                    <li date-refresh="1">
                        <a _href="/bg/book/list?op=1">
                            <i class="iconfont">&#xe6a7;</i>
                            <cite>图书列表</cite>
                        </a>
                    </li >
                    <li>
                        <a _href="/bg/category/list">
                            <i class="iconfont">&#xe6a7;</i>
                            <cite>分类管理</cite>

                        </a>
                    </li >
                </ul>
            </li>
            <!--图书管理 end -->

            <!--订单管理 start -->
            <li>
                <a href="javascript:;">
                    <i class="iconfont">&#xe723;</i>
                    <cite>订单管理</cite>
                    <i class="iconfont nav_right">&#xe697;</i>
                </a>
                <ul class="sub-menu">
                    <li>
                        <a _href="/bg/order-list.jsp">
                            <i class="iconfont">&#xe6a7;</i>
                            <cite>订单列表</cite>
                        </a>
                    </li >
                </ul>
            </li>
            <!--订单管理 end -->
            <!--员工管理 start-->
            <li>
                <a href="javascript:;">
                    <i class="iconfont">&#xe726;</i>
                    <cite>员工管理</cite>
                    <i class="iconfont nav_right">&#xe697;</i>
                </a>
                <ul class="sub-menu">
                    <li>
                        <a _href="/bg/employee/list?op=1">
                            <i class="iconfont">&#xe6a7;</i>
                            <cite>员工列表</cite>
                        </a>
                    </li >
                </ul>
            </li>
            <!--员工管理 end-->

            <!--顾客管理 start-->
            <li>
                <a href="javascript:;">
                    <i class="iconfont">&#xe726;</i>
                    <cite>顾客管理</cite>
                    <i class="iconfont nav_right">&#xe697;</i>
                </a>
                <ul class="sub-menu">
                    <li>
                        <a _href="customer-list.jsp">
                            <i class="iconfont">&#xe6a7;</i>
                            <cite>顾客列表</cite>
                        </a>
                    </li >
                </ul>
            </li>
            <!--顾客管理 end-->
            <!--评论管理 end -->
            <li>
                <a href="javascript:;">
                    <i class="iconfont">&#xe69b;</i>
                    <cite>评论管理</cite>
                    <i class="iconfont nav_right">&#xe697;</i>
                </a>
                <ul class="sub-menu">
                    <li>
                        <a _href="comment-list.jsp">
                            <i class="iconfont">&#xe6a7;</i>
                            <cite>评论列表</cite>
                        </a>
                    </li >
                </ul>
            </li>
            <!--评论管理 end -->
            <!--销量管理 start-->
            <li>
                <a href="javascript:;">
                    <i class="iconfont">&#xe722;</i>
                    <cite>销量管理</cite>
                    <i class="iconfont nav_right">&#xe697;</i>
                </a>
                <ul class="sub-menu">
                    <li>
                        <a _href="sale-statistics.jsp">
                            <i class="iconfont">&#xe6a7;</i>
                            <cite>销量统计</cite>
                        </a>
                    </li >
                </ul>
            </li>
            <!--销量管理 end-->
            <!--网站管理 start-->
            <li>
                <a href="javascript:;">
                    <i class="iconfont">&#xe6ae;</i>
                    <cite>网站管理</cite>
                    <i class="iconfont nav_right">&#xe697;</i>
                </a>
                <ul class="sub-menu">
                    <li>
                        <a _href="website-info.jsp">
                            <i class="iconfont">&#xe6a7;</i>
                            <cite>网站信息</cite>
                        </a>
                    </li >
                    <li>
                        <a _href="message-list.jsp">
                            <i class="iconfont">&#xe6a7;</i>
                            <cite>留言管理</cite>
                        </a>
                    </li >
                </ul>
            </li>
            <!--网站管理 end-->
        </ul>
    </div>
</div>
<!-- <div class="x-slide_left"></div> -->
<!-- 左侧菜单结束 -->
<!-- 右侧主体开始 -->
<div class="page-content">
    <div class="layui-tab tab" lay-filter="xbs_tab" lay-allowclose="false">
        <ul class="layui-tab-title">
            <li class="home"><i class="layui-icon">&#xe68e;</i>首页</li>
        </ul>
        <div class="layui-unselect layui-form-select layui-form-selected" id="tab_right">
            <dl>
                <dd data-type="this">关闭当前</dd>
                <dd data-type="other">关闭其它</dd>
                <dd data-type="all">关闭全部</dd>
            </dl>
        </div>
        <div class="layui-tab-content">
            <div class="layui-tab-item layui-show">
                <iframe src='/bg/welcome.jsp' frameborder="0" scrolling="yes" class="x-iframe"></iframe>
            </div>
        </div>
        <div id="tab_show"></div>
    </div>
</div>

<div class="page-content-bg"></div>
<!-- 右侧主体结束 -->
<!-- 中部结束 -->
<!-- 底部开始 -->
<div class="footer">
    <div class="copyright">Copyright ©2017 x-admin v2.3 All Rights Reserved</div>
</div>
<!-- 底部结束 -->
</body>
</html>