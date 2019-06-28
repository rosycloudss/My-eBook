<%@ page import="com.my_ebook.entity.Car" %>
<%@ page import="java.util.List" %>
<%@ page import="com.my_ebook.entity.Customer" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<jsp:include page="base/head.jsp"/>

<main id="tg-main" class="tg-main tg-haslayout">
    <!--************************************
            Contact Us Start
    *************************************-->
    <div class="tg-sectionspace tg-haslayout">
        <div class="container">
            <div class="row">
                <div class="tg-contactus">
                    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                        <div class="tg-sectionhead">
                            <h2>订单详情</h2>
                        </div>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
                        <form class="tg-formtheme tg-formcontactus">
                            <fieldset>
                                <%Customer customer = (Customer) session.getAttribute("customer");%>
                                <div class="form-group tg-hastextarea">
                                    收货人：<input type="name" id="name" name="name" class="form-control" value="<%=customer.getName()%>">
                                </div>
                                <div class="form-group tg-hastextarea">
                                    收货人手机号：<input id="phone" type="tel" name="phone" class="form-control" value="<%=customer.getPhone()%>">
                                </div>
                                <div class="form-group tg-hastextarea">
                                    收货地址：<input id="address" type="text" name="address" class="form-control" value="<%=customer.getAddr()==null?"":customer.getAddr()%>">
                                </div>
                                <div class="form-group tg-hastextarea">
                                    备注：<input id="remark" type="text" name="remark" class="form-control" >
                                </div>
                                <div class="tg-contactdetail">
                                    <%
                                        double money = 0.0d;
                                        int mount = 0;
                                        List<Car> carList = (List<Car>) request.getAttribute("carList");
                                        for (Car car : carList) {
                                            if (car != null) {
                                    %>
                                    <div class="tg-minicarproduct">
                                        <figure>
                                            <img src="/fg/images/products/img-02.jpg" alt="image description">
                                        </figure>
                                        <div class="tg-minicarproductdata">
                                            <input type="hidden" name="carId" value="<%=car.getID()%>" >
                                            <h5><a href="javascript:void(0);"><%=car.getBook().getName()%></a></h5>
                                            <h6>售价:<%=car.getBook().getSellingPrice()%>&nbsp;数量：<%=car.getOrderMount()%></h6>
                                        </div>
                                    </div>
                                   <%
                                                mount += car.getOrderMount();
                                                money += car.getTotalPrice();
                                            }
                                        }
                                   %>
                                </div>
                                <div class="tg-minicartfoot">
                                   商品总数: <%=mount%>
                                    <span class="tg-subtotal">商品金额: <strong><%=money%></strong></span>
                                </div>
                                <br>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <a class="tg-btn " href="/fg/book/bookList">取消</a>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <a class="tg-btn tg-active" onclick="pay()" href="javascript:void(0);">生成订单</a>
                            </fieldset>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--************************************
            Contact Us End
    *************************************-->
</main>
<script type="text/javascript">
    function pay() {
        var name = $("#name").val();
        var phone = $("#phone").val();
        var address = $("#address").val();
        var logistics = $("#logistics").val();
        var remark = $("#remark").val();
        var carIdList = $("input[name='carId']");
        var carIds = [];
        for(var i = 0 ; i <carIdList.length; i++) {
            carIds[i] = carIdList[i].value;
        }
        $.ajax({
            url: "/fg/car/createOrder",
            type: "post",
            dataType: "JSON",
            contentType : "application/json; charset=utf-8",
            data: JSON.stringify({"name":name,"phone":phone,"address":address,
                "remark":remark, "carId":carIds}),
            success : function(data) {
                alert("success");
                window.location = "/fg/book/bookList"
            },
            error : function() {
                alert("error");
            }
        });
    }
</script>
<jsp:include page="base/foot.jsp"/>

