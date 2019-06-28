<%--
  Created by IntelliJ IDEA.
  User: liwei
  Date: 2019/6/22
  Time: 19:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="base/head.jsp"/>
<!--************************************
Inner Banner Start
*************************************-->
<div class="tg-innerbanner tg-haslayout tg-parallax tg-bginnerbanner" data-z-index="-100" data-appear-top-offset="600" data-parallax="scroll" data-image-src="images/parallax/bgparallax-07.jpg">
    <div class="container">
        <div class="row">
            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                <div class="tg-innerbannercontent">
                    <h1>个人中心</h1>
                </div>
            </div>
        </div>
    </div>
</div>
<!--************************************
Inner Banner End
*************************************-->
<!--************************************
Main Start
*************************************-->
<main id="tg-main" class="tg-main tg-haslayout">
    <!--************************************
            Contact Us Start
    *************************************-->
    <div class="tg-sectionspace tg-haslayout">
        <div class="container">
            <div class="row">
                <div id="tg-twocolumns" class="tg-twocolumns">
                    <div class="col-xs-12 col-sm-4 col-md-4 col-lg-3 pull-left">
                        <aside id="tg-sidebar" class="tg-sidebar">
                            <div class="tg-widget tg-catagories">
                                <div class="tg-widgettitle">
                                    <h3>选项</h3>
                                </div>
                                <div class="tg-widgetcontent">
                                    <ul>
                                        <li><a href="javascript:void(0);" onclick="showPerson()"><span>个人信息</span></a></li>
                                        <li><a href="javascript:void(0);" onclick="showOrder()"><span>我的订单</span></a></li>
                                        <li><a href="javascript:void(0);" onclick="modifypwd()">修改密码</a></li>
                                    </ul>
                                </div>
                            </div>
                        </aside>
                    </div>
                    <div id="information" class="col-xs-12 col-sm-8 col-md-8 col-lg-9 pull-right">

                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--************************************
            Contact Us End
    *************************************-->
</main>
<script>
    function modifypwd(){
        $("#information").html("<div class=\"col-xs-12 col-sm-12 col-md-6 col-lg-6\">" +
            "                        <form class=\"tg-formtheme tg-formcontactus\">" +
            "                                <div class=\"form-group\">" +
            "                                    <input style=\"width: 250px\" type=\"password\" id=\"oldpwd\" name=\"oldpwd\" class=\"form-control\"  placeholder=\"旧密码\">" +
            "                                </div>" +
            "                                <div class=\"form-group\">" +
            "                                    <input style=\"width: 250px\" id=\"newpwd\" type=\"password\" name=\"newpwd\" class=\"form-control\" placeholder=\"新密码\">" +
            "                                </div>" +
            "                                <div class=\"form-group\">" +
            "                                    <input style=\"width: 250px\" id=\"renewpwd\" type=\"password\" name=\"renewpwd\" class=\"form-control\" placeholder=\"确认密码\">" +
            "                                </div>" +
            "                                <div class=\"form-group\">" +
            "                                    <button id=\"btn\" onclick=\"modify1()\" type=\"button\" class=\"tg-btn tg-active\">确认修改</button>" +
            "                                </div>" +
            "                        </form>" +
            "                    </div>");
    }
    function modify1() {
        var oldpwd = $("#oldpwd").val();
        var newpwd = $("#newpwd").val();
        var renewpwd = $("#renewpwd").val();
        if(oldpwd==="" || newpwd==="" || renewpwd===""){
            alert("所输项目不可为空");
            return false;
        }
        if (newpwd === renewpwd) {
            $.ajax({
                url: "/fg/customer/changePassword/oldpwd/newpwd",
                type: "get",
                dataType: 'JSON',
                contentType: "application/json; charset=utf-8",
                success: function (data) {
                    if(data.result === 1){
                        alert("修改成功");
                        modifypwd();
                    }else{
                        alert("修改失败");
                        modifypwd();
                    }
                },
                error: function (data) {
                    alert("修改失败");
                }
            })
        }else{
            alert("新密码与旧密码不一致，请重新输入");
        }
    }
    function showPerson() {
        $("#information").html("<form class=\"layui-form\">" +
            "                        <div class=\"form-group\">" +
            "                            <label for=\"name\" style=\"float:left\">" +
            "                                姓名<span class=\"x-red\">*</span>" +
            "                            </label>" +
            "                            <div class=\"layui-input-inline\">" +
            "                                <input type=\"text\" id=\"name\" name=\"name\" required=\"\" lay-verify=\"name\"" +
            "                                       autocomplete=\"off\" class=\"layui-input\">" +
            "                            </div>" +
            "                        </div>" +
            "                        <div class=\"form-group\">" +
            "                            <label for=\"nickname\" style=\"float:left\">" +
            "                                昵称<span class=\"x-red\">*</span>" +
            "                            </label>" +
            "                            <div class=\"layui-input-inline\">" +
            "                                <input type=\"text\" id=\"nickname\" name=\"nickname\" required=\"\" lay-verify=\"nickname\"" +
            "                                       autocomplete=\"off\" class=\"layui-input\">" +
            "                            </div>" +
            "                        </div>" +
            "                        <div class=\"form-group\">" +
            "                            <label for=\"phone\" style=\"float:left\">" +
            "                                电话<span class=\"x-red\">*</span>" +
            "                            </label>" +
            "                            <div class=\"layui-input-inline\">" +
            "                                <input type=\"text\" id=\"phone\" name=\"phone\" required=\"\" lay-verify=\"phone\"" +
            "                                       autocomplete=\"off\" class=\"layui-input\">" +
            "                            </div>" +
            "                        </div>" +
            "                        <div class=\"form-group\">" +
            "                            <label for=\"email\" style=\"float:left\">" +
            "                                邮箱<span class=\"x-red\">*</span>" +
            "                            </label>" +
            "                            <div class=\"layui-input-inline\">" +
            "                                <input type=\"text\" id=\"email\" name=\"email\" required=\"\" lay-verify=\"email\"" +
            "                                       autocomplete=\"off\" class=\"layui-input\">" +
            "                            </div>" +
            "                        </div>" +
            "                        <div class=\"form-group\">" +
            "                            <label for=\"addr\"style=\"float:left\">" +
            "                                地址<span class=\"x-red\">*</span>" +
            "                            </label>" +
            "                            <div class=\"layui-input-inline\">" +
            "                                <input type=\"text\" id=\"addr\" name=\"addr\" required=\"\" lay-verify=\"addr\"" +
            "                                       autocomplete=\"off\" class=\"layui-input\">" +
            "                            </div>" +
            "                        </div>" +
            "                        <button style=\"height: 30px;width: 100px;background-color: #0C0C0C;color: white\" type=\"button\" onclick=\"modify()\">确认修改</button>" +
            "                        </form>");
        $.ajax({
            url: "/fg/customer/findCustomerById",
            type: "get",
            dataType: 'JSON',
            contentType: "application/json; charset=utf-8",
            success: function (data) {
                var customer=data.customer;
                document.getElementById("name").value=customer.name;
                document.getElementById("nickname").value=customer.nickname;
                document.getElementById("phone").value=customer.phone;
                document.getElementById("email").value=customer.email;
                document.getElementById("addr").value=customer.addr;
            },
            error: function (data){
                alert("error");
            }
        });

    }
    function modify() {
        var name=$("#name").val();
        var nickname=$("#nickname").val();
        var phone=$("#phone").val();
        var email=$("#email").val();
        var addr=$("#addr").val();
        if(name === ""||nickname===""||phone===""||email===""||addr==="") {
            alert("输入项不可为空，请重新输入");
            showPerson();
        }else{
            $.ajax({
                url: "/fg/customer/update",
                type: "post",
                dataType: 'JSON',
                contentType: "application/json; charset=utf-8",
                data: JSON.stringify({
                    "name": name,
                    "nickname": nickname,
                    "phone": phone,
                    "email": email,
                    "addr": addr
                }),
                success: function (data) {
                    if (data.result === 1) {
                        alert("修改成功");
                        showPerson();
                    } else {
                        alert("修改失败");
                    }
                },
                error: function () {
                    alert("error");
                }
            });
        }
    }
    function poststatus(status){
        if(status === 2){
            return "未发货";
        }else if(status === 1){
            return "已发货";
        }
    }
    function paystatus(status){
        if(status === 2){
            return "未支付";
        }else if(status === 1){
            return "已支付";
        }
    }
    function del(orderId) {
        var r=confirm("确认删除?");
        if(r === true) {
            $.ajax({
                url: "/fg/customer/delOrder/" + orderId,
                type: "get",
                dataType: 'JSON',
                contentType: "application/json; charset=utf-8",
                success: function (data) {
                    if (data.result === 1) {
                        alert("删除成功");
                        showOrder();
                    } else {
                        alert("删除失败");
                    }
                },
                error: function () {
                    alert("error");
                }
            });
        }
    }
    function pay(iD){
        if(iD === -1){
            alert("已支付");
        }else {
            var r=confirm("确认付款？");
            if(r === true) {
                $.ajax({
                    url: "/fg/customer/updatePayStatus?orderId=" + iD,
                    type: "get",
                    dataType: 'JSON',
                    contentType: "application/json; charset=utf-8",
                    success: function (data) {
                            alert("支付成功");
                            showOrder();
                    },
                    error: function (data) {
                        alert("error");
                    }
                });
            }
        }
    }
    function showOrder() {
        $("#information").html(" <thread>" +
            "<table class=\"table\" id=\"table\">" +
            "<tr>" +
            "<th>订单编号</th>" +
            "<th>收货人姓名</th>" +
            // "<th>名称</th>" +
            // "<th>数量</th>" +
            // "<th>总价</th>" +
            "<th>发货状态</th>" +
            "<th>支付状态</th>" +
            "<th>电话号码</th>" +
            "<th>下单时间</th>" +
            "<th>收货地址</th>" +
            "<th>总价</th>" +
            "<th>详情</th>" +
            "<th>付款</th>" +
            "<th>删除</th>" +
            "</tr>" +
            "</thread>" +
            "<tbody id=\"tbody\">" +
            "</tbody>"+
            "</table>");
        $.ajax({
            url: "/fg/customer/getPersonalOrder",
            type: "get",
            dataType: 'JSON',
            contentType: "application/json; charset=utf-8",
            success: function (data) {
                // alert(orderList[0].ID);
                var orderList = data.orderList;
                if(orderList != null){
                    var tabledata;
                    for(var i=0;i<orderList.length;i++){
                        var markdata;
                        if(orderList[i].payStatus === 2){
                            markdata=orderList[i].iD;
                        }else{
                            markdata=-1;
                        }
                        tabledata+="<tr>"+
                            "<td>"+orderList[i].iD +"</td>"+
                            "<td>"+orderList[i].receiver +"</td>"+
                            "<td>"+poststatus(orderList[i].postStatus) +"</td>"+
                            "<td>"+paystatus(orderList[i].payStatus) +"</td>"+
                            "<td>"+orderList[i].phone +"</td>"+
                            "<td>"+orderList[i].orderDate +"</td>"+
                            "<td>"+orderList[i].recevingAddr +"</td>"+
                            "<td>"+orderList[i].totalPrice +"</td>"+
                            "<td>"+
                            '<a title="订单详情"  href="javascript:;"  onclick="window.open( \'orderdetail.jsp? Data=' + orderList[i].iD+ '\',\'订单详情\',\'width=400,height=300,top=150,left=450\')">' +
                            "<i class=\"layui-icon\">&#xe642;</i>" +
                            "</a>" +
                            "</td>"+
                            "<td>"+
                            '<a href="javascript:;"  onclick="pay('+markdata+')"> '+
                            "<i class=\"layui-icon\">&#xe642;</i>" +
                            "</a>" +
                            "</td>"+
                            "<td>"+
                            '<a href="javascript:;"  onclick="del('+orderList[i].orderID+')"> '+
                            "<i class=\"layui-icon\">&#xe642;</i>" +
                            "</a>" +
                            "</td>"+
                            "</tr>";
                    }
                    $("#tbody").html(tabledata);
                }
            },
            error:function (data) {
                alert("error");
            }
        });
    }
</script>
<!--************************************
Main End
*************************************-->
<jsp:include page="base/foot.jsp"/>
