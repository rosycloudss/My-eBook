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
<!DOCTYPE html>
<html class="x-admin-sm">

<head>
    <meta charset="UTF-8">
    <title>查看订单</title>
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
            <div class="layui-inline">
                <input type="hidden" name="ID" value="${order.ID}">
                <label for="orderID" class="layui-form-label">
                    订单编号
                </label>
                <div class="layui-input-inline">
                    <input type="text" id="orderID" name="orderID" value="${order.orderID}" disabled="disabled"
                           required="" lay-verify="required"
                           autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-inline">
                <label for="orderStatus" class="layui-form-label">
                    <span class="x-red">*</span>订单状态
                </label>
                <div class="layui-input-inline">
                    <select id="orderStatus" name="orderStatus" class="valid">
                        <option value="1" ${order.orderStatus==1?"selected":""}>待确认</option>
                        <option value="2" ${order.orderStatus==2?"selected":""}>已确认</option>
                        <option value="3" ${order.orderStatus==3?"selected":""}>已收货</option>
                        <option value="4" ${order.orderStatus==4?"selected":""}>已取消</option>
                        <option value="5" ${order.orderStatus==5?"selected":""}>已完成</option>
                        <option value="6" ${order.orderStatus==6?"selected":""}>已作废</option>
                    </select>
                </div>
            </div>
        </div>
        <div class="layui-form-item">
            <div class="layui-inline">
                <label for="receiver" class="layui-form-label">
                    收货人
                </label>
                <div class="layui-input-inline">
                    <input type="text" id="receiver" name="receiver" value="${order.receiver}" required=""
                           lay-verify="required"
                           autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-inline">
                <label for="recevingAddr" class="layui-form-label">
                    收货地址
                </label>
                <div class="layui-input-inline">
                    <input type="text" id="recevingAddr" name="recevingAddr" value="${order.recevingAddr}" required=""
                           lay-verify="required"
                           autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-inline">
                <label for="phone" class="layui-form-label">
                    联系电话
                </label>
                <div class="layui-input-inline">
                    <input type="text" id="phone" name="phone" value="${order.phone}" required="" lay-verify="phone"
                           autocomplete="off" class="layui-input">
                </div>
            </div>
        </div>
        <div class="layui-form-item">
            <div class="layui-inline">
                <label for="username" class="layui-form-label">
                    发货状态
                </label>
                <div class="layui-input-inline">
                    <select id="postStatus" name="postStatus" class="valid">
                        <option value="2" ${order.postStatus==2?"selected":""}>未发货</option>
                        <option value="1" ${order.postStatus==1?"selected":""}>已发货</option>
                    </select>
                </div>
            </div>
        </div>
        <div class="layui-form-item">
            <label for="payStatus" class="layui-form-label">
                支付状态
            </label>
            <div class="layui-input-inline">
                <select id="payStatus" name="payStatus">
                    <option value="1" ${order.payStatus==1?"selected":""}>已支付</option>
                    <option value="2" ${order.payStatus==2?"selected":""}>已支付</option>
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
                    <th>总价</th>
                    </thead>
                    <tbody>
                    <c:forEach items="${order.orderItemList}" var="orderItem">
                        <tr>
                            <td>${orderItem.book.name}</td>
                            <td>${orderItem.book.author}</td>
                            <td>${orderItem.book.sellingPrice}</td>
                            <td>${orderItem.orderMount}</td>
                            <td>${orderItem.totalPrice}</td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
            <div class="layui-form-item layui-form-text">
                <label for="orderDate" class="layui-form-label">
                    下单时间
                </label>
                <div class="layui-input-inline">
                    <input type="text" id="orderDate" disabled="disabled" value="<fmt:formatDate value="${order.orderDate}" type="both"></fmt:formatDate>" required=""
                           lay-verify="required"
                           autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-form-item layui-form-text">
                <label for="remark" class="layui-form-label">
                    备注
                </label>
                <div class="layui-input-block">
                    <textarea placeholder="无备注" disabled="disabled" id="remark" name="remark"
                              class="layui-textarea">${order.remark}</textarea>
                </div>
            </div>
            <div class="layui-form-item">
                <label for="" class="layui-form-label">
                </label>
                <button class="layui-btn" lay-filter="save" lay-submit="">
                    保存
                </button>
            </div>
        </div>
    </form>
</div>
<script>
    layui.use(['form', 'layer'], function () {
        $ = layui.jquery;
        var form = layui.form
            , layer = layui.layer;

        //监听提交
        form.on('submit(save)', function (data) {
            console.log(data);
            $.ajax({
                type:"POST",
                contentType: "application/json;charset=UTF-8",
                url:'/bg/order/edit',
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
                        layer.msg('保存失败!', {icon: 2, time: 1000});
                    }
                },
                error:function (data) {
                    layer.msg('保存失败!', {icon: 2, time: 1000});
                }
            });
            return false;
        });
    });
</script>
</body>

</html>
