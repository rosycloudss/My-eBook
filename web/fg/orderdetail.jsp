<%--
  Created by IntelliJ IDEA.
  User: 18567731037
  Date: 2019/6/26
  Time: 21:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>订单详情</title>
</head>
<body>
<script>
    var url = location.search;
    var orderId=url.split("=")[1];
    $(function () {
        $.ajax({
            url: "/My-eBook/fg/customer/getOrderDetail/"+orderId,
            type: "get",
            dataType: 'JSON',
            contentType: "application/json; charset=utf-8",
            success:function (data) {
                var orderdetails=data.orderdetails;
                var tabledata;
                if(orderdetails!=null){
                    for(var i=0;i<orderdetails.length;i++){
                        tabledata+="<tr>" +
                            "<td>"+orderdetails[i].bookname+"</td>" +
                            "<td>"+orderdetails[i].singlePrice+"</td>" +
                            "<td>"+orderdetails[i].mount+"</td>" +
                            "<td>"+orderdetails[i].totalPrice+"</td>" +
                            "</tr>";
                    }
                    $("#table").html(tabledata);
                }
            },
            error:function () {

            }
        })
    });
</script>
<div>
    <table id="table" class="table">
        <tr>
            <th>图书名称</th>
            <th>单价</th>
            <th>数量</th>
            <th>总价</th>
        </tr>
        <tbody id="tbody">

        </tbody>
    </table>
</div>
</body>
</html>
