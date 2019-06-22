<%--
  Created by IntelliJ IDEA.
  User: liwei
  Date: 2019/6/22
  Time: 19:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<!--[if lt IE 7]>		<html class="no-js lt-ie9 lt-ie8 lt-ie7" lang=""> <![endif]-->
<!--[if IE 7]>			<html class="no-js lt-ie9 lt-ie8" lang=""> <![endif]-->
<!--[if IE 8]>			<html class="no-js lt-ie9" lang=""> <![endif]-->
<!--[if gt IE 8]><!-->	<html class="no-js" lang="zxx"> <!--<![endif]-->
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>My-eBook</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="apple-touch-icon" href="apple-touch-icon.png">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/normalize.css">
    <link rel="stylesheet" href="css/font-awesome.min.css">
    <link rel="stylesheet" href="css/icomoon.css">
    <link rel="stylesheet" href="css/jquery-ui.css">
    <link rel="stylesheet" href="css/owl.carousel.css">
    <link rel="stylesheet" href="css/transitions.css">
    <link rel="stylesheet" href="css/main.css">
    <link rel="stylesheet" href="css/color.css">
    <link rel="stylesheet" href="css/responsive.css">
    <script src="js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>
</head>
<body>

<!--[if lt IE 8]>
<p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
<![endif]-->
<!--************************************
        Wrapper Start
*************************************-->
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
                            <figure><a href="personal.jsp"><img src="images/users/img-01.jpg" alt="image description"></a></figure>
                            <span>Hi, 李伟</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="tg-middlecontainer">
            <div class="container">
                <div class="row">
                    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                        <strong class="tg-logo"><a href="index.jsp"><img src="images/logo.png" alt="company name here"></a></strong>
                        <div class="tg-wishlistandcart">
                            <div class="dropdown tg-themedropdown tg-wishlistdropdown">
                                <a href="javascript:void(0);" id="tg-wishlisst" class="tg-btnthemedropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    <span class="tg-themebadge">3</span>
                                    <i class="icon-heart"></i>
                                    <span>愿望书单</span>
                                </a>
                                <div class="dropdown-menu tg-themedropdownmenu" aria-labelledby="tg-wishlisst">
                                    <div class="tg-description"><p>愿望书店为空</p></div>
                                </div>
                            </div>
                            <div class="dropdown tg-themedropdown tg-minicartdropdown">
                                <a href="javascript:void(0);" id="tg-minicart" class="tg-btnthemedropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    <span class="tg-themebadge">3</span>
                                    <i class="icon-cart"></i>
                                    <span>￥123.00</span>
                                </a>
                                <!--   购物车列表 开始-->
                                <div class="dropdown-menu tg-themedropdownmenu" aria-labelledby="tg-minicart">
                                    <div class="tg-minicartbody">
                                        <div class="tg-minicarproduct">
                                            <figure>
                                                <img src="images/products/img-01.jpg" alt="image description">
                                            </figure>
                                            <div class="tg-minicarproductdata">
                                                <h5><a href="javascript:void(0);">Our State Fair Is A Great Function</a></h5>
                                                <h6><a href="javascript:void(0);">￥ 12.15</a></h6>
                                            </div>
                                        </div>
                                        <div class="tg-minicarproduct">
                                            <figure>
                                                <img src="images/products/img-02.jpg" alt="image description">

                                            </figure>
                                            <div class="tg-minicarproductdata">
                                                <h5><a href="javascript:void(0);">Bring Me To Light</a></h5>
                                                <h6><a href="javascript:void(0);">￥ 12.15</a></h6>
                                            </div>
                                        </div>
                                        <div class="tg-minicarproduct">
                                            <figure>
                                                <img src="images/products/img-03.jpg" alt="image description">

                                            </figure>
                                            <div class="tg-minicarproductdata">
                                                <h5><a href="javascript:void(0);">Have Faith In Your Soul</a></h5>
                                                <h6><a href="javascript:void(0);">￥ 12.15</a></h6>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="tg-minicartfoot">
                                        <a class="tg-btnemptycart" href="javascript:void(0);">
                                            <i class="fa fa-trash-o"></i>
                                            <span>清空购物车</span>
                                        </a>
                                        <span class="tg-subtotal">Subtotal: <strong>35.78</strong></span>
                                        <div class="tg-btns">
                                            <a class="tg-btn tg-active" href="javascript:void(0);">查看购物车</a>
                                            <a class="tg-btn" href="javascript:void(0);">结账</a>
                                        </div>
                                    </div>
                                </div>
                                <!--   购物车列表 结束-->
                            </div>
                        </div>
                        <!--搜索框 开始-->
                        <div class="tg-searchbox">
                            <form class="tg-formtheme tg-formsearch">
                                <fieldset>
                                    <input type="text" name="search" class="typeahead form-control" placeholder="请输入书名">
                                    <button type="submit"><i class="icon-magnifier"></i></button>
                                </fieldset>
                                <a href="javascript:void(0);">+ 高级搜索</a>
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
                                    <!--所有分类  开始-->
                                    <li class="menu-item-has-children menu-item-has-mega-menu">
                                        <a href="javascript:void(0);">所有分类</a>
                                        <div class="mega-menu">
                                            <ul class="tg-themetabnav" role="tablist">
                                                <li role="presentation" class="active">
                                                    <a href="#artandphotography" aria-controls="artandphotography" role="tab" data-toggle="tab">艺术与摄影</a>
                                                </li>
                                                <li role="presentation">
                                                    <a href="#biography" aria-controls="biography" role="tab" data-toggle="tab">传记</a>
                                                </li>
                                                <li role="presentation">
                                                    <a href="#childrensbook" aria-controls="childrensbook" role="tab" data-toggle="tab">儿童读物</a>
                                                </li>
                                                <li role="presentation">
                                                    <a href="#craftandhobbies" aria-controls="craftandhobbies" role="tab" data-toggle="tab">工艺和爱好</a>
                                                </li>
                                                <li role="presentation">
                                                    <a href="#crimethriller" aria-controls="crimethriller" role="tab" data-toggle="tab">犯罪与惊悚片</a>
                                                </li>
                                                <li role="presentation">
                                                    <a href="#fantasyhorror" aria-controls="fantasyhorror" role="tab" data-toggle="tab">恐怖幻想</a>
                                                </li>
                                                <li role="presentation">
                                                    <a href="#fiction" aria-controls="fiction" role="tab" data-toggle="tab">小说</a>
                                                </li>
                                                <li role="presentation">
                                                    <a href="#fooddrink" aria-controls="fooddrink" role="tab" data-toggle="tab">食品和饮料</a>
                                                </li><li role="presentation">
                                                <a href="#graphicanimemanga" aria-controls="graphicanimemanga" role="tab" data-toggle="tab">图形，动画与漫画</a>
                                            </li>
                                                <li role="presentation">
                                                    <a href="#sciencefiction" aria-controls="sciencefiction" role="tab" data-toggle="tab">科幻小说</a>
                                                </li>
                                            </ul>
                                            <div class="tab-content tg-themetabcontent">
                                                <div role="tabpanel" class="tab-pane active" id="artandphotography">
                                                    <ul>
                                                        <li>
                                                            <div class="tg-linkstitle">
                                                                <h2>建筑</h2>
                                                            </div>
                                                            <ul>
                                                                <li><a href="index.jsp">像钉子一样坚硬</a></li>
                                                                <li><a href="index.jsp">Pro Grease Monkey</a></li>
                                                                <li><a href="index.jsp">Building Memories</a></li>
                                                                <li><a href="index.jsp">Bulldozer Boyz</a></li>
                                                                <li><a href="index.jsp">Build Or Leave On Us</a></li>
                                                            </ul>
                                                            <a class="tg-btnviewall" href="index.jsp">查看全部</a>
                                                        </li>
                                                        <li>
                                                            <div class="tg-linkstitle">
                                                                <h2>艺术形式</h2>
                                                            </div>
                                                            <ul>
                                                                <li><a href="index.jsp">Consectetur adipisicing</a></li>
                                                                <li><a href="index.jsp">Aelit sed do eiusmod</a></li>
                                                                <li><a href="index.jsp">Tempor incididunt labore</a></li>
                                                                <li><a href="index.jsp">Dolore magna aliqua</a></li>
                                                                <li><a href="index.jsp">Ut enim ad minim</a></li>
                                                            </ul>
                                                            <a class="tg-btnviewall" href="index.jsp">查看全部</a>
                                                        </li>
                                                        <li>
                                                            <div class="tg-linkstitle">
                                                                <h2>历史</h2>
                                                            </div>
                                                            <ul>
                                                                <li><a href="index.jsp">Veniam quis nostrud</a></li>
                                                                <li><a href="index.jsp">Exercitation</a></li>
                                                                <li><a href="index.jsp">Laboris nisi ut aliuip</a></li>
                                                                <li><a href="index.jsp">Commodo conseat</a></li>
                                                                <li><a href="index.jsp">Duis aute irure</a></li>
                                                            </ul>
                                                            <a class="tg-btnviewall" href="index.jsp">查看全部</a>
                                                        </li>
                                                    </ul>
                                                    <!--                                                    <ul>-->
                                                    <!--                                                        <li>-->
                                                    <!--                                                            <figure><img src="images/img-01.png" alt="image description"></figure>-->
                                                    <!--                                                            <div class="tg-textbox">-->
                                                    <!--                                                                <h3>More Than<span>12,0657,53</span>Books Collection</h3>-->
                                                    <!--                                                                <div class="tg-description">-->
                                                    <!--                                                                    <p>Consectetur adipisicing elit sed doe eiusmod tempor incididunt laebore toloregna aliqua enim.</p>-->
                                                    <!--                                                                </div>-->
                                                    <!--                                                                <a class="tg-btn" href="index.jsp">view all</a>-->
                                                    <!--                                                            </div>-->
                                                    <!--                                                        </li>-->
                                                    <!--                                                    </ul>-->
                                                </div>
                                                <div role="tabpanel" class="tab-pane" id="biography">
                                                    <ul>
                                                        <li>
                                                            <div class="tg-linkstitle">
                                                                <h2>建筑</h2>
                                                            </div>
                                                            <ul>
                                                                <li><a href="index.jsp">像钉子一样坚硬</a></li>
                                                                <li><a href="index.jsp">Pro Grease Monkey</a></li>
                                                                <li><a href="index.jsp">Building Memories</a></li>
                                                                <li><a href="index.jsp">Bulldozer Boyz</a></li>
                                                                <li><a href="index.jsp">Build Or Leave On Us</a></li>
                                                            </ul>
                                                            <a class="tg-btnviewall" href="index.jsp">查看全部</a>
                                                        </li>
                                                        <li>
                                                            <div class="tg-linkstitle">
                                                                <h2>艺术形式</h2>
                                                            </div>
                                                            <ul>
                                                                <li><a href="index.jsp">Consectetur adipisicing</a></li>
                                                                <li><a href="index.jsp">Aelit sed do eiusmod</a></li>
                                                                <li><a href="index.jsp">Tempor incididunt labore</a></li>
                                                                <li><a href="index.jsp">Dolore magna aliqua</a></li>
                                                                <li><a href="index.jsp">Ut enim ad minim</a></li>
                                                            </ul>
                                                            <a class="tg-btnviewall" href="index.jsp">查看全部</a>
                                                        </li>
                                                        <li>
                                                            <div class="tg-linkstitle">
                                                                <h2>历史</h2>
                                                            </div>
                                                            <ul>
                                                                <li><a href="index.jsp">Veniam quis nostrud</a></li>
                                                                <li><a href="index.jsp">Exercitation</a></li>
                                                                <li><a href="index.jsp">Laboris nisi ut aliuip</a></li>
                                                                <li><a href="index.jsp">Commodo conseat</a></li>
                                                                <li><a href="index.jsp">Duis aute irure</a></li>
                                                            </ul>
                                                            <a class="tg-btnviewall" href="index.jsp">查看全部</a>
                                                        </li>
                                                    </ul>
                                                    <ul>
                                                        <li>
                                                            <figure><img src="images/img-01.png" alt="image description"></figure>
                                                            <div class="tg-textbox">
                                                                <h3>More Than<span>12,0657,53</span>Books Collection</h3>
                                                                <div class="tg-description">
                                                                    <p>Consectetur adipisicing elit sed doe eiusmod tempor incididunt laebore toloregna aliqua enim.</p>
                                                                </div>
                                                                <a class="tg-btn" href="index.jsp">view all</a>
                                                            </div>
                                                        </li>
                                                    </ul>
                                                </div>
                                                <div role="tabpanel" class="tab-pane" id="childrensbook">
                                                    <ul>
                                                        <li>
                                                            <div class="tg-linkstitle">
                                                                <h2>建筑</h2>
                                                            </div>
                                                            <ul>
                                                                <li><a href="index.jsp">像钉子一样坚硬</a></li>
                                                                <li><a href="index.jsp">Pro Grease Monkey</a></li>
                                                                <li><a href="index.jsp">Building Memories</a></li>
                                                                <li><a href="index.jsp">Bulldozer Boyz</a></li>
                                                                <li><a href="index.jsp">Build Or Leave On Us</a></li>
                                                            </ul>
                                                            <a class="tg-btnviewall" href="index.jsp">查看全部</a>
                                                        </li>
                                                        <li>
                                                            <div class="tg-linkstitle">
                                                                <h2>艺术形式</h2>
                                                            </div>
                                                            <ul>
                                                                <li><a href="index.jsp">Consectetur adipisicing</a></li>
                                                                <li><a href="index.jsp">Aelit sed do eiusmod</a></li>
                                                                <li><a href="index.jsp">Tempor incididunt labore</a></li>
                                                                <li><a href="index.jsp">Dolore magna aliqua</a></li>
                                                                <li><a href="index.jsp">Ut enim ad minim</a></li>
                                                            </ul>
                                                            <a class="tg-btnviewall" href="index.jsp">查看全部</a>
                                                        </li>
                                                        <li>
                                                            <div class="tg-linkstitle">
                                                                <h2>历史</h2>
                                                            </div>
                                                            <ul>
                                                                <li><a href="index.jsp">Veniam quis nostrud</a></li>
                                                                <li><a href="index.jsp">Exercitation</a></li>
                                                                <li><a href="index.jsp">Laboris nisi ut aliuip</a></li>
                                                                <li><a href="index.jsp">Commodo conseat</a></li>
                                                                <li><a href="index.jsp">Duis aute irure</a></li>
                                                            </ul>
                                                            <a class="tg-btnviewall" href="index.jsp">查看全部</a>
                                                        </li>
                                                    </ul>
                                                    <ul>
                                                        <li>
                                                            <figure><img src="images/img-01.png" alt="image description"></figure>
                                                            <div class="tg-textbox">
                                                                <h3>More Than<span>12,0657,53</span>Books Collection</h3>
                                                                <div class="tg-description">
                                                                    <p>Consectetur adipisicing elit sed doe eiusmod tempor incididunt laebore toloregna aliqua enim.</p>
                                                                </div>
                                                                <a class="tg-btn" href="index.jsp">view all</a>
                                                            </div>
                                                        </li>
                                                    </ul>
                                                </div>
                                                <div role="tabpanel" class="tab-pane" id="craftandhobbies">
                                                    <ul>
                                                        <li>
                                                            <div class="tg-linkstitle">
                                                                <h2>建筑</h2>
                                                            </div>
                                                            <ul>
                                                                <li><a href="index.jsp">像钉子一样坚硬</a></li>
                                                                <li><a href="index.jsp">Pro Grease Monkey</a></li>
                                                                <li><a href="index.jsp">Building Memories</a></li>
                                                                <li><a href="index.jsp">Bulldozer Boyz</a></li>
                                                                <li><a href="index.jsp">Build Or Leave On Us</a></li>
                                                            </ul>
                                                            <a class="tg-btnviewall" href="index.jsp">查看全部</a>
                                                        </li>
                                                        <li>
                                                            <div class="tg-linkstitle">
                                                                <h2>艺术形式</h2>
                                                            </div>
                                                            <ul>
                                                                <li><a href="index.jsp">Consectetur adipisicing</a></li>
                                                                <li><a href="index.jsp">Aelit sed do eiusmod</a></li>
                                                                <li><a href="index.jsp">Tempor incididunt labore</a></li>
                                                                <li><a href="index.jsp">Dolore magna aliqua</a></li>
                                                                <li><a href="index.jsp">Ut enim ad minim</a></li>
                                                            </ul>
                                                            <a class="tg-btnviewall" href="index.jsp">查看全部</a>
                                                        </li>
                                                        <li>
                                                            <div class="tg-linkstitle">
                                                                <h2>历史</h2>
                                                            </div>
                                                            <ul>
                                                                <li><a href="index.jsp">Veniam quis nostrud</a></li>
                                                                <li><a href="index.jsp">Exercitation</a></li>
                                                                <li><a href="index.jsp">Laboris nisi ut aliuip</a></li>
                                                                <li><a href="index.jsp">Commodo conseat</a></li>
                                                                <li><a href="index.jsp">Duis aute irure</a></li>
                                                            </ul>
                                                            <a class="tg-btnviewall" href="index.jsp">查看全部</a>
                                                        </li>
                                                    </ul>
                                                    <ul>
                                                        <li>
                                                            <figure><img src="images/img-01.png" alt="image description"></figure>
                                                            <div class="tg-textbox">
                                                                <h3>More Than<span>12,0657,53</span>Books Collection</h3>
                                                                <div class="tg-description">
                                                                    <p>Consectetur adipisicing elit sed doe eiusmod tempor incididunt laebore toloregna aliqua enim.</p>
                                                                </div>
                                                                <a class="tg-btn" href="index.jsp">view all</a>
                                                            </div>
                                                        </li>
                                                    </ul>
                                                </div>
                                                <div role="tabpanel" class="tab-pane" id="crimethriller">
                                                    <ul>
                                                        <li>
                                                            <div class="tg-linkstitle">
                                                                <h2>建筑</h2>
                                                            </div>
                                                            <ul>
                                                                <li><a href="index.jsp">像钉子一样坚硬</a></li>
                                                                <li><a href="index.jsp">Pro Grease Monkey</a></li>
                                                                <li><a href="index.jsp">Building Memories</a></li>
                                                                <li><a href="index.jsp">Bulldozer Boyz</a></li>
                                                                <li><a href="index.jsp">Build Or Leave On Us</a></li>
                                                            </ul>
                                                            <a class="tg-btnviewall" href="index.jsp">查看全部</a>
                                                        </li>
                                                        <li>
                                                            <div class="tg-linkstitle">
                                                                <h2>艺术形式</h2>
                                                            </div>
                                                            <ul>
                                                                <li><a href="index.jsp">Consectetur adipisicing</a></li>
                                                                <li><a href="index.jsp">Aelit sed do eiusmod</a></li>
                                                                <li><a href="index.jsp">Tempor incididunt labore</a></li>
                                                                <li><a href="index.jsp">Dolore magna aliqua</a></li>
                                                                <li><a href="index.jsp">Ut enim ad minim</a></li>
                                                            </ul>
                                                            <a class="tg-btnviewall" href="index.jsp">查看全部</a>
                                                        </li>
                                                        <li>
                                                            <div class="tg-linkstitle">
                                                                <h2>历史</h2>
                                                            </div>
                                                            <ul>
                                                                <li><a href="index.jsp">Veniam quis nostrud</a></li>
                                                                <li><a href="index.jsp">Exercitation</a></li>
                                                                <li><a href="index.jsp">Laboris nisi ut aliuip</a></li>
                                                                <li><a href="index.jsp">Commodo conseat</a></li>
                                                                <li><a href="index.jsp">Duis aute irure</a></li>
                                                            </ul>
                                                            <a class="tg-btnviewall" href="index.jsp">查看全部</a>
                                                        </li>
                                                    </ul>
                                                    <ul>
                                                        <li>
                                                            <figure><img src="images/img-01.png" alt="image description"></figure>
                                                            <div class="tg-textbox">
                                                                <h3>More Than<span>12,0657,53</span>Books Collection</h3>
                                                                <div class="tg-description">
                                                                    <p>Consectetur adipisicing elit sed doe eiusmod tempor incididunt laebore toloregna aliqua enim.</p>
                                                                </div>
                                                                <a class="tg-btn" href="index.jsp">view all</a>
                                                            </div>
                                                        </li>
                                                    </ul>
                                                </div>
                                                <div role="tabpanel" class="tab-pane" id="fantasyhorror">
                                                    <ul>
                                                        <li>
                                                            <div class="tg-linkstitle">
                                                                <h2>建筑</h2>
                                                            </div>
                                                            <ul>
                                                                <li><a href="index.jsp">像钉子一样坚硬</a></li>
                                                                <li><a href="index.jsp">Pro Grease Monkey</a></li>
                                                                <li><a href="index.jsp">Building Memories</a></li>
                                                                <li><a href="index.jsp">Bulldozer Boyz</a></li>
                                                                <li><a href="index.jsp">Build Or Leave On Us</a></li>
                                                            </ul>
                                                            <a class="tg-btnviewall" href="index.jsp">查看全部</a>
                                                        </li>
                                                        <li>
                                                            <div class="tg-linkstitle">
                                                                <h2>艺术形式</h2>
                                                            </div>
                                                            <ul>
                                                                <li><a href="index.jsp">Consectetur adipisicing</a></li>
                                                                <li><a href="index.jsp">Aelit sed do eiusmod</a></li>
                                                                <li><a href="index.jsp">Tempor incididunt labore</a></li>
                                                                <li><a href="index.jsp">Dolore magna aliqua</a></li>
                                                                <li><a href="index.jsp">Ut enim ad minim</a></li>
                                                            </ul>
                                                            <a class="tg-btnviewall" href="index.jsp">查看全部</a>
                                                        </li>
                                                        <li>
                                                            <div class="tg-linkstitle">
                                                                <h2>历史</h2>
                                                            </div>
                                                            <ul>
                                                                <li><a href="index.jsp">Veniam quis nostrud</a></li>
                                                                <li><a href="index.jsp">Exercitation</a></li>
                                                                <li><a href="index.jsp">Laboris nisi ut aliuip</a></li>
                                                                <li><a href="index.jsp">Commodo conseat</a></li>
                                                                <li><a href="index.jsp">Duis aute irure</a></li>
                                                            </ul>
                                                            <a class="tg-btnviewall" href="index.jsp">查看全部</a>
                                                        </li>
                                                    </ul>
                                                    <ul>
                                                        <li>
                                                            <figure><img src="images/img-01.png" alt="image description"></figure>
                                                            <div class="tg-textbox">
                                                                <h3>More Than<span>12,0657,53</span>Books Collection</h3>
                                                                <div class="tg-description">
                                                                    <p>Consectetur adipisicing elit sed doe eiusmod tempor incididunt laebore toloregna aliqua enim.</p>
                                                                </div>
                                                                <a class="tg-btn" href="index.jsp">view all</a>
                                                            </div>
                                                        </li>
                                                    </ul>
                                                </div>
                                                <div role="tabpanel" class="tab-pane" id="fiction">
                                                    <ul>
                                                        <li>
                                                            <div class="tg-linkstitle">
                                                                <h2>建筑</h2>
                                                            </div>
                                                            <ul>
                                                                <li><a href="index.jsp">像钉子一样坚硬</a></li>
                                                                <li><a href="index.jsp">Pro Grease Monkey</a></li>
                                                                <li><a href="index.jsp">Building Memories</a></li>
                                                                <li><a href="index.jsp">Bulldozer Boyz</a></li>
                                                                <li><a href="index.jsp">Build Or Leave On Us</a></li>
                                                            </ul>
                                                            <a class="tg-btnviewall" href="index.jsp">查看全部</a>
                                                        </li>
                                                        <li>
                                                            <div class="tg-linkstitle">
                                                                <h2>艺术形式</h2>
                                                            </div>
                                                            <ul>
                                                                <li><a href="index.jsp">Consectetur adipisicing</a></li>
                                                                <li><a href="index.jsp">Aelit sed do eiusmod</a></li>
                                                                <li><a href="index.jsp">Tempor incididunt labore</a></li>
                                                                <li><a href="index.jsp">Dolore magna aliqua</a></li>
                                                                <li><a href="index.jsp">Ut enim ad minim</a></li>
                                                            </ul>
                                                            <a class="tg-btnviewall" href="index.jsp">查看全部</a>
                                                        </li>
                                                        <li>
                                                            <div class="tg-linkstitle">
                                                                <h2>历史</h2>
                                                            </div>
                                                            <ul>
                                                                <li><a href="index.jsp">Veniam quis nostrud</a></li>
                                                                <li><a href="index.jsp">Exercitation</a></li>
                                                                <li><a href="index.jsp">Laboris nisi ut aliuip</a></li>
                                                                <li><a href="index.jsp">Commodo conseat</a></li>
                                                                <li><a href="index.jsp">Duis aute irure</a></li>
                                                            </ul>
                                                            <a class="tg-btnviewall" href="index.jsp">查看全部</a>
                                                        </li>
                                                    </ul>
                                                    <ul>
                                                        <li>
                                                            <figure><img src="images/img-01.png" alt="image description"></figure>
                                                            <div class="tg-textbox">
                                                                <h3>More Than<span>12,0657,53</span>Books Collection</h3>
                                                                <div class="tg-description">
                                                                    <p>Consectetur adipisicing elit sed doe eiusmod tempor incididunt laebore toloregna aliqua enim.</p>
                                                                </div>
                                                                <a class="tg-btn" href="index.jsp">view all</a>
                                                            </div>
                                                        </li>
                                                    </ul>
                                                </div>
                                                <div role="tabpanel" class="tab-pane" id="fooddrink">
                                                    <ul>
                                                        <li>
                                                            <div class="tg-linkstitle">
                                                                <h2>建筑</h2>
                                                            </div>
                                                            <ul>
                                                                <li><a href="index.jsp">像钉子一样坚硬</a></li>
                                                                <li><a href="index.jsp">Pro Grease Monkey</a></li>
                                                                <li><a href="index.jsp">Building Memories</a></li>
                                                                <li><a href="index.jsp">Bulldozer Boyz</a></li>
                                                                <li><a href="index.jsp">Build Or Leave On Us</a></li>
                                                            </ul>
                                                            <a class="tg-btnviewall" href="index.jsp">查看全部</a>
                                                        </li>
                                                        <li>
                                                            <div class="tg-linkstitle">
                                                                <h2>艺术形式</h2>
                                                            </div>
                                                            <ul>
                                                                <li><a href="index.jsp">Consectetur adipisicing</a></li>
                                                                <li><a href="index.jsp">Aelit sed do eiusmod</a></li>
                                                                <li><a href="index.jsp">Tempor incididunt labore</a></li>
                                                                <li><a href="index.jsp">Dolore magna aliqua</a></li>
                                                                <li><a href="index.jsp">Ut enim ad minim</a></li>
                                                            </ul>
                                                            <a class="tg-btnviewall" href="index.jsp">查看全部</a>
                                                        </li>
                                                        <li>
                                                            <div class="tg-linkstitle">
                                                                <h2>历史</h2>
                                                            </div>
                                                            <ul>
                                                                <li><a href="index.jsp">Veniam quis nostrud</a></li>
                                                                <li><a href="index.jsp">Exercitation</a></li>
                                                                <li><a href="index.jsp">Laboris nisi ut aliuip</a></li>
                                                                <li><a href="index.jsp">Commodo conseat</a></li>
                                                                <li><a href="index.jsp">Duis aute irure</a></li>
                                                            </ul>
                                                            <a class="tg-btnviewall" href="index.jsp">查看全部</a>
                                                        </li>
                                                    </ul>
                                                    <ul>
                                                        <li>
                                                            <figure><img src="images/img-01.png" alt="image description"></figure>
                                                            <div class="tg-textbox">
                                                                <h3>More Than<span>12,0657,53</span>Books Collection</h3>
                                                                <div class="tg-description">
                                                                    <p>Consectetur adipisicing elit sed doe eiusmod tempor incididunt laebore toloregna aliqua enim.</p>
                                                                </div>
                                                                <a class="tg-btn" href="index.jsp">view all</a>
                                                            </div>
                                                        </li>
                                                    </ul>
                                                </div>
                                                <div role="tabpanel" class="tab-pane" id="graphicanimemanga">
                                                    <ul>
                                                        <li>
                                                            <div class="tg-linkstitle">
                                                                <h2>建筑</h2>
                                                            </div>
                                                            <ul>
                                                                <li><a href="index.jsp">像钉子一样坚硬</a></li>
                                                                <li><a href="index.jsp">Pro Grease Monkey</a></li>
                                                                <li><a href="index.jsp">Building Memories</a></li>
                                                                <li><a href="index.jsp">Bulldozer Boyz</a></li>
                                                                <li><a href="index.jsp">Build Or Leave On Us</a></li>
                                                            </ul>
                                                            <a class="tg-btnviewall" href="index.jsp">查看全部</a>
                                                        </li>
                                                        <li>
                                                            <div class="tg-linkstitle">
                                                                <h2>艺术形式</h2>
                                                            </div>
                                                            <ul>
                                                                <li><a href="index.jsp">Consectetur adipisicing</a></li>
                                                                <li><a href="index.jsp">Aelit sed do eiusmod</a></li>
                                                                <li><a href="index.jsp">Tempor incididunt labore</a></li>
                                                                <li><a href="index.jsp">Dolore magna aliqua</a></li>
                                                                <li><a href="index.jsp">Ut enim ad minim</a></li>
                                                            </ul>
                                                            <a class="tg-btnviewall" href="index.jsp">查看全部</a>
                                                        </li>
                                                        <li>
                                                            <div class="tg-linkstitle">
                                                                <h2>历史</h2>
                                                            </div>
                                                            <ul>
                                                                <li><a href="index.jsp">Veniam quis nostrud</a></li>
                                                                <li><a href="index.jsp">Exercitation</a></li>
                                                                <li><a href="index.jsp">Laboris nisi ut aliuip</a></li>
                                                                <li><a href="index.jsp">Commodo conseat</a></li>
                                                                <li><a href="index.jsp">Duis aute irure</a></li>
                                                            </ul>
                                                            <a class="tg-btnviewall" href="index.jsp">查看全部</a>
                                                        </li>
                                                    </ul>
                                                    <ul>
                                                        <li>
                                                            <figure><img src="images/img-01.png" alt="image description"></figure>
                                                            <div class="tg-textbox">
                                                                <h3>More Than<span>12,0657,53</span>Books Collection</h3>
                                                                <div class="tg-description">
                                                                    <p>Consectetur adipisicing elit sed doe eiusmod tempor incididunt laebore toloregna aliqua enim.</p>
                                                                </div>
                                                                <a class="tg-btn" href="index.jsp">view all</a>
                                                            </div>
                                                        </li>
                                                    </ul>
                                                </div>
                                                <div role="tabpanel" class="tab-pane" id="sciencefiction">
                                                    <ul>
                                                        <li>
                                                            <div class="tg-linkstitle">
                                                                <h2>建筑</h2>
                                                            </div>
                                                            <ul>
                                                                <li><a href="index.jsp">像钉子一样坚硬</a></li>
                                                                <li><a href="index.jsp">Pro Grease Monkey</a></li>
                                                                <li><a href="index.jsp">Building Memories</a></li>
                                                                <li><a href="index.jsp">Bulldozer Boyz</a></li>
                                                                <li><a href="index.jsp">Build Or Leave On Us</a></li>
                                                            </ul>
                                                            <a class="tg-btnviewall" href="index.jsp">查看全部</a>
                                                        </li>
                                                        <li>
                                                            <div class="tg-linkstitle">
                                                                <h2>艺术形式</h2>
                                                            </div>
                                                            <ul>
                                                                <li><a href="index.jsp">Consectetur adipisicing</a></li>
                                                                <li><a href="index.jsp">Aelit sed do eiusmod</a></li>
                                                                <li><a href="index.jsp">Tempor incididunt labore</a></li>
                                                                <li><a href="index.jsp">Dolore magna aliqua</a></li>
                                                                <li><a href="index.jsp">Ut enim ad minim</a></li>
                                                            </ul>
                                                            <a class="tg-btnviewall" href="index.jsp">查看全部</a>
                                                        </li>
                                                        <li>
                                                            <div class="tg-linkstitle">
                                                                <h2>历史</h2>
                                                            </div>
                                                            <ul>
                                                                <li><a href="index.jsp">Veniam quis nostrud</a></li>
                                                                <li><a href="index.jsp">Exercitation</a></li>
                                                                <li><a href="index.jsp">Laboris nisi ut aliuip</a></li>
                                                                <li><a href="index.jsp">Commodo conseat</a></li>
                                                                <li><a href="index.jsp">Duis aute irure</a></li>
                                                            </ul>
                                                            <a class="tg-btnviewall" href="index.jsp">查看全部</a>
                                                        </li>
                                                    </ul>
                                                    <ul>
                                                        <li>
                                                            <figure><img src="images/img-01.png" alt="image description"></figure>
                                                            <div class="tg-textbox">
                                                                <h3>More Than<span>12,0657,53</span>Books Collection</h3>
                                                                <div class="tg-description">
                                                                    <p>Consectetur adipisicing elit sed doe eiusmod tempor incididunt laebore toloregna aliqua enim.</p>
                                                                </div>
                                                                <a class="tg-btn" href="index.jsp">view all</a>
                                                            </div>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                    <!--所有分类  结束-->
                                    <li><a href="personal.jsp">个人中心</a></li>
                                    <li><a href="contactus.jsp">联系我们</a></li>
                                    <li><a href="aboutus.jsp">关于我们</a></li>

                                </ul>
                            </div>
                        </nav>
                        <!--顶部导航 开始-->
                    </div>
                </div>
            </div>
        </div>
    </header>
    <!--************************************
            Header End
    *************************************-->