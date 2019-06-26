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
                                    </ul>
                                </div>
                            </div>
                        </aside>
                    </div>
                    <div class="col-xs-12 col-sm-8 col-md-8 col-lg-9 pull-right">
                        <table class="table" id="table">

                        </table>
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
    function showPerson() {
        $.ajax({
            url: "/My-eBook/fg/customer/findCustomerById",
            type: "get",
            dataType: 'JSON',
            contentType: "application/json; charset=utf-8",
            headers: {
                'sessionId': getCookie("sessionId")
            },
            success: function (data) {
                var customer=data.customer;
                $("#table").html(" <thread>" +
                    "<tr>" +
                        "<th>姓名</th>" +
                        "<th>昵称</th>" +
                        "<th>电话号码</th>" +
                        "<th>邮箱</th>" +
                        "<th>地址</th>" +
                        "<th>邮编</th>" +
                        "<th>上次登录时间</th>" +
                    "</tr>" +
                    "</thread>" +
                    "<tbody id=\"tbody\">" +
                        "<td>"+customer.name+"</td>"+
                        "<td>"+customer.nickname+"</td>"+
                        "<td>"+customer.phone+"</td>"+
                        "<td>"+customer.password+"</td>"+
                        "<td>"+customer.email+"</td>"+
                        "<td>"+customer.addr+"</td>"+
                        "<td>"+customer.zipCode+"</td>"+
                        "<td>"+customer.lastLoginTime+"</td>"+
                    "</tbody>");
            },
            error: function (data){
                alert("error");
            }
        });

    }
    function showOrder() {
        $("#table").html(" <thread>" +
            "<tr>" +
            "<th>订单编号</th>" +
            "<th>收货人姓名</th>" +
            // "<th>名称</th>" +
            // "<th>数量</th>" +
            // "<th>总价</th>" +
            "<th>发货状态</th>" +
            "<th>电话号码</th>" +
            "<th>下单时间</th>" +
            "<th>收货地址</th>" +
            "<th>详情</th>" +
            "</tr>" +
            "</thread>" +
            "<tbody id=\"tbody\">" +
            "</tbody>");
        $.ajax({
            url: "/My-eBook/fg/customer/getPersonalOrder",
            type: "get",
            dataType: 'JSON',
            contentType: "application/json; charset=utf-8",
            headers: {
                'sessionId': getCookie("sessionId")
            },
            success: function (data) {
                var orderList = data.orderList;
                if(orderList != null){
                    var tabledata;
                    for(var i=0;i<orderList.length;i++){
                        tabledata+="<tr>"+
                            "<td>"+orderList[i].orderID +"</td>"+
                            "<td>"+orderList[i].receiver +"</td>"+
                            "<td>"+orderList[i].postStatus +"</td>"+
                            "<td>"+orderList[i].phone +"</td>"+
                            "<td>"+orderList[i].orderDate +"</td>"+
                            "<td>"+orderList[i].recevingAddr +"</td>"+
                            "<td>"+
                            '<a title="订单详情"  href="javascript:;"  onclick="x_admin_show( \'订单详情\',\'orderdetail.jsp? Data=' + orderList[i].orderID+ '\',600,400)">' +
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
