<%@ page import="com.my_ebook.entity.Customer" %>
<%@ page import="com.my_ebook.entity.Category" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>My-eBook</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="apple-touch-icon" href="apple-touch-icon.png">
    <link rel="stylesheet" href="/fg/css/bootstrap.min.css">
    <link rel="stylesheet" href="/fg/css/normalize.css">
    <link rel="stylesheet" href="/fg/css/font-awesome.min.css">
    <link rel="stylesheet" href="/fg/css/icomoon.css">
    <link rel="stylesheet" href="/fg/css/jquery-ui.css">
    <link rel="stylesheet" href="/fg/css/owl.carousel.css">
    <link rel="stylesheet" href="/fg/css/transitions.css">
    <link rel="stylesheet" href="/fg/css/main.css">
    <link rel="stylesheet" href="/fg/css/color.css">
    <link rel="stylesheet" href="/fg/css/responsive.css">
    <script src="/fg/js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>

</head>
<body>

<div id="tg-wrapper" class="tg-wrapper tg-haslayout">
    <!--************************************
            Header Start
    *************************************-->
    <header id="tg-header" class="tg-header tg-haslayout">
        <div class="tg-topbar">
            <div class="container">
                <div class="row">
                    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                        <ul class="tg-addnav">
                            <li>
                                <a href="javascript:void(0);">
                                    <i class="icon-envelope"></i>
                                    <em>联系我们</em>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:void(0);">
                                    <i class="icon-question-circle"></i>
                                    <em>帮助</em>
                                </a>
                            </li>
                        </ul>
                        <div class="tg-userlogin">
                            <figure><a href="/fg/login.jsp"><img src="/fg/images/users/img-01.jpg" alt="image description"></a></figure>
                            <%
                                Customer customer = (Customer) session.getAttribute("customer");
                                if (customer != null) {
                            %>
                            <span>Hi, <%=((Customer)session.getAttribute("customer")).getName()%></span>
                            <%
                                }
                            %>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="tg-middlecontainer">
            <div class="container">
                <div class="row">
                    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                        <strong class="tg-logo"><a href="/fg/book/bookList"><img src="/fg/images/logo.png" alt="company name here"></a></strong>
                        <%
                            if (customer != null) {
                        %>
                        <div class="tg-wishlistandcart">
                            <div id="car" class="dropdown tg-themedropdown tg-minicartdropdown">
                                <a href="javascript:void(0);" onclick="display()" id="tg-minicart" class="tg-btnthemedropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    <span id="itemCount" class="tg-themebadge">0</span>
                                    <i class="icon-cart"></i>
                                    <span ></span>
                                </a>

                                <!--   购物车列表 开始-->

                                <div class="dropdown-menu tg-themedropdownmenu" aria-labelledby="tg-minicart">
                                    <div id="list" class="tg-minicartbody">
                                    </div>
                                    <div  class="tg-minicartfoot">
                                        <a class="tg-btnemptycart" href="/fg/car/clear">
                                            <i class="fa fa-trash-o"></i>
                                            <span >清空购物车</span>
                                        </a>
                                        <span class="tg-subtotal" id="totalMoney">商品金额: 0.0</span>
                                        <div class="tg-btns">
                                            <%--<a class="tg-btn tg-active" href="javascript:void(0);">查看购物车</a>--%>
                                            <a class="tg-btn" href="/fg/car/checkOut?isCar=1">结账</a>
                                        </div>
                                    </div>
                                </div>
                                <!--   购物车列表 结束-->
                            </div>
                        </div>
                        <%}%>
                        <!--搜索框 开始-->
                        <div class="tg-searchbox">
                            <form  action="${pageContext.request.contextPath}/fg/book/findBook?currentPage=1" method="post" class="tg-formtheme tg-formsearch">
                                <fieldset>
                                    <input type="text" name="bookName" class="typeahead form-control" placeholder="请输入书名">
                                    <button type="submit"><i class="icon-magnifier"></i></button>
                                </fieldset>
                            </form>
                        </div>
                        <!--搜索框 结束-->
                    </div>
                </div>
            </div>
        </div>
        <div class="tg-navigationarea">
            <div class="container">
                <div class="row">
                    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                        <!--顶部导航 开始-->
                        <nav id="tg-nav" class="tg-nav">
                            <!--右部菜单图标 开始-->
                            <div class="navbar-header">
                                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#tg-navigation" aria-expanded="false">
                                    <span class="sr-only">Toggle navigation</span>
                                    <span class="icon-bar"></span>
                                    <span class="icon-bar"></span>
                                    <span class="icon-bar"></span>
                                </button>
                            </div>
                            <!--右部菜单图标 结束-->
                            <div id="tg-navigation" class="collapse navbar-collapse tg-navigation">
                                <ul>
                                    <%
                                        List<Category> parentCategoryList = (List<Category>) session.getAttribute("parentCategoryList");
                                        if (parentCategoryList != null) {
                                    %>
                                    <li class="menu-item-has-children menu-item-has-mega-menu">
                                        <a href="javascript:void(0);">所有分类</a>
                                        <div class="mega-menu">
                                            <ul class="tg-themetabnav" role="tablist">
                                                <%
                                                    for (Category category: parentCategoryList) {
                                                        if (category != null) {

                                                %>
                                                <li role="presentation" class="active">
                                                    <a href="#artandphotography" onclick="displaySubcategory(<%=category.getId()%>)" aria-controls="artandphotography" role="tab" data-toggle="tab"><%=category.getName()%></a>
                                                </li>
                                                <%}}}%>

                                            </ul>
                                            <div class="tab-content tg-themetabcontent">
                                                <div role="tabpanel" class="tab-pane active" id="artandphotography">
                                                    <ul id="subcategory">

                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                    <!--所有分类  结束-->
                                    <%
                                        if(customer != null) {
                                    %>
                                    <li><a href="/fg/personal.jsp">个人中心</a></li>
                                    <%
                                        }
                                    %>
                                    <li><a href="/fg/contactus.jsp">联系我们</a></li>
                                    <li><a href="/fg/aboutus.jsp">关于我们</a></li>
                                    <%
                                        if(customer != null) {
                                    %>
                                    <li><a href="javascript:;" onclick="logOut()">退出登录</a></li>
                                    <%
                                        }
                                    %>
                                </ul>
                            </div>
                        </nav>
                        <!--顶部导航 开始-->
                    </div>
                </div>
            </div>
        </div>
    </header>

    <script type="text/javascript">
        function logOut() {
            $.ajax({
                 url:"http://localhost:8080/fg/customer/logout",
                 type:"get",
                 contentType: "application/json; charset=utf-8",
                 success:function (data) {
                     if(data.result === 1){
                         window.location.href="/fg/login.jsp"
                     }
                 },
                error:function () {
                     alert("error");
                }
            });
        }

        function displaySubcategory(categoryId)
        {
            $.ajax({
                url: "/fg/book/getCategoryList?parentId=" + categoryId,
                type: "get",
                dataType: 'JSON',
                contentType: "application/json; charset=utf-8",
                success: function (data) {
                    var pageInfos = data.categoryPage.pageInfos;
                    var tempDate = '';
                    for(var i=0; i <pageInfos.length; i++) {
                        if (pageInfos[i] != null) {
                            tempDate +=
                                '<li>' +
                                '<div class="tg-linkstitle">\n' +
                                '<h2>' +pageInfos[i].name +'</h2>\n' +
                                '</div>\n' +
                                '<ul>\n' +
                                '<li><a href="/fg/book/bookList?categoryId='+ pageInfos[i].id + '">像钉子一样坚硬</a></li>\n' +
                                '<li><a href="/fg/book/bookList?categoryId='+ pageInfos[i].id + '">Pro Grease Monkey</a></li>\n' +
                                '<li><a href="/fg/book/bookList?categoryId='+ pageInfos[i].id + '">Building Memories</a></li>\n' +
                                '<li><a href="/fg/book/bookList?categoryId='+ pageInfos[i].id + '">Bulldozer Boyz</a></li>\n' +
                                '<li><a href="/fg/book/bookList?categoryId='+ pageInfos[i].id + '">Build Or Leave On Us</a></li>\n' +
                                '</ul>\n' +
                                '<a class="tg-btnviewall" href="/fg/book/bookList?categoryId='+ pageInfos[i].id + '">查看全部</a>\n' +
                                '</li>'
                        }


                    }
                    $("#subcategory").html(tempDate);
                },
                error: function (data) {
                    alert("更改失败");
                }
            })
        }

        function display() {
            $.ajax({
                url: "/fg/car/displayCar",
                type: "get",
                dataType: 'JSON',
                contentType: "application/json; charset=utf-8",
                success: function (data) {
                    var tempDate = '';
                    var money = 0.0;
                    var itemCount = 0;
                    var carList = data.carList;
                    for(var i=0; i <carList.length; i++) {
                        if (carList[i] !== undefined) {
                            tempDate +=
                                '<div class="tg-minicarproduct">\n' +
                                '<figure>\n' +
                                '<img src="/fg/images/products/img-01.jpg" alt="image description">\n' +
                                '</figure>\n' +
                                '<div class="tg-minicarproductdata">\n' +
                                '<h5><a href="javascript:void(0);">'+carList[i].book.name + '</a></h5>\n' +
                                '<h6>'+carList[i].book.sellingPrice+ '   ' +
                                '<button id="sub" onclick="updateCar(' + carList[i].book.iD+',-1)">' +
                                '<img src="/fg/images/sub.png">' +
                                '</button>' +
                                carList[i].orderMount +
                                '<button id="add" onclick="updateCar(' + carList[i].book.iD+ ',1)">' +
                                '<img src="/fg/images/add.png">' +
                                '</button>' +
                                '</h6>\n' +
                                '</div>\n' +
                                '</div>';
                            console.log(carList[i]);
                            itemCount++;
                            money += carList[i].totalPrice;
                        }
                    }
                    $("#list").html(tempDate);
                    if (money !== undefined && money !== '') {
                        $("#totalMoney").text("商品金额：" + money);
                    }
                    $("#itemCount").text(itemCount);
                },
                error: function (data) {
                    alert("添加失败");
                }
            });
        }

        function updateCar() {
            $.ajax({
                url: "/fg/car/updateCar?bookId=" + arguments[0] + "&sign=" + arguments[1],
                type: "get",
                dataType: 'JSON',
                contentType: "application/json; charset=utf-8",
                success: function (data) {
                    alert("更改成功");
                },
                error: function (data) {
                    alert("更改失败");
                }
            });
        }
    </script>
    <!--************************************
            Header End
    *************************************-->