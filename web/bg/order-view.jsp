<%--
  Created by IntelliJ IDEA.
  User: liwei
  Date: 2019/6/22
  Time: 20:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html class="x-admin-sm">

<head>
    <meta charset="UTF-8">
    <title>查看订单</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<%--    <meta name="viewport" content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi" />--%>
    <link rel="stylesheet" href="./css/font.css">
    <link rel="stylesheet" href="./css/xadmin.css">
    <script type="text/javascript" src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
    <script type="text/javascript" src="./lib/layui/layui.js" charset="utf-8"></script>
    <script type="text/javascript" src="./js/xadmin.js"></script>
    <script type="text/javascript" src="./js/cookie.js"></script>
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
            <div class="layui-inline">
                <label for="username" class="layui-form-label">
                    <span class="x-red">*</span>订单编号
                </label>
                <div class="layui-input-inline">
                    <input type="text" id="username" name="username" required="" lay-verify="required"
                           autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-inline">
                <label for="username" class="layui-form-label">
                    <span class="x-red">*</span>订单状态
                </label>
                <div class="layui-input-inline">
                    <select id="shipping" name="shipping" class="valid">
                        <option value="">订单状态</option>
                        <option value="0">待确认</option>
                        <option value="1">已确认</option>
                        <option value="2">已收货</option>
                        <option value="3">已取消</option>
                        <option value="4">已完成</option>
                        <option value="5">已作废</option>
                    </select>
                </div>
            </div>
        </div>
        <div class="layui-form-item">
            <div class="layui-inline">
                <label for="username" class="layui-form-label">
                    <span class="x-red">*</span>收货人
                </label>
                <div class="layui-input-inline">
                    <input type="text" id="username" name="username" required="" lay-verify="required"
                           autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-inline">
                <label for="username" class="layui-form-label">
                    <span class="x-red">*</span>收货地址
                </label>
                <div class="layui-input-inline">
                    <input type="text" id="username" name="username" required="" lay-verify="required"
                           autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-inline">
                <label for="username" class="layui-form-label">
                    <span class="x-red">*</span>手机
                </label>
                <div class="layui-input-inline">
                    <input type="text" id="username" name="username" required="" lay-verify="required"
                           autocomplete="off" class="layui-input">
                </div>
            </div>
        </div>
        <div class="layui-form-item">
            <div class="layui-inline">
                <label for="username" class="layui-form-label">
                    <span class="x-red">*</span>配送物流
                </label>
                <div class="layui-input-inline">
                    <select id="shipping" name="shipping" class="valid">
                        <option value="shentong">申通物流</option>
                        <option value="shunfeng">顺丰物流</option>
                    </select>
                </div>
            </div>
            <div class="layui-inline">
                <label for="username" class="layui-form-label">
                    <span class="x-red">*</span>发货状态
                </label>
                <div class="layui-input-inline">
                    <select id="shipping" name="shipping" class="valid">
                        <option value="shentong">未发货</option>
                        <option value="shunfeng">已发货</option>
                    </select>
                </div>
            </div>
        </div>
        <div class="layui-form-item">
            <label for="username" class="layui-form-label">
                <span class="x-red">*</span>支付方式
            </label>
            <div class="layui-input-inline">
                <select disabled="disabled" name="contrller">
                    <option>支付方式</option>
                    <option>支付宝</option>
                    <option>微信</option>
                    <option>货到付款</option>
                </select>
            </div>
        </div>
        <div class="layui-form-item layui-form-text">
            <label for="desc" class="layui-form-label">
                商品列表
            </label>
            <div class="layui-inline">
                <table class="layui-table">
                    <thead>
                    <th>图书名称</th>
                    <th>作者</th>
                    <th>价格</th>
                    <th>数量</th>
                    </thead>
                    <tbody>
                    <tr>
                        <td>java 编程思想</td>
                        <td>李伟</td>
                        <td>100</td>
                        <td>1</td>
                    </tr>
                    <tr>
                        <td>java 编程思想</td>
                        <td>李伟</td>
                        <td>100</td>
                        <td>1</td>
                    </tr>
                    </tbody>
                </table>
            </div>
            <div class="layui-form-item layui-form-text">
                <label for="desc" class="layui-form-label">
                    下单时间
                </label>
                <div class="layui-input-inline">
                    <input type="text" id="username" disabled="disabled" name="username" required="" lay-verify="required"
                           autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-form-item layui-form-text">
                <label for="desc" class="layui-form-label">
                    备注
                </label>
                <div class="layui-input-block">
                    <textarea placeholder="无备注" disabled="disabled" id="desc" name="desc" class="layui-textarea"></textarea>
                </div>
            </div>
            <div class="layui-form-item">
                <label for="" class="layui-form-label">
                </label>
                <button  class="layui-btn" lay-filter="add" lay-submit="">
                    保存
                </button>
            </div>
        </div>
    </form>
</div>
<script>
    layui.use(['form','layer'], function(){
        $ = layui.jquery;
        var form = layui.form
            ,layer = layui.layer;

        //自定义验证规则
        form.verify({
            nikename: function(value){
                if(value.length < 5){
                    return '昵称至少得5个字符啊';
                }
            }
            ,pass: [/(.+){6,12}$/, '密码必须6到12位']
            ,repass: function(value){
                if($('#L_pass').val()!=$('#L_repass').val()){
                    return '两次密码不一致';
                }
            }
        });

        //监听提交
        form.on('submit(add)', function(data){
            console.log(data);
            //发异步，把数据提交给php
            layer.alert("增加成功", {icon: 6},function () {
                // 获得frame索引
                var index = parent.layer.getFrameIndex(window.name);
                //关闭当前frame
                parent.layer.close(index);
            });
            return false;
        });


    });
</script>
</body>

</html>
