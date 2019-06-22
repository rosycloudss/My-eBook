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
                    <ol class="tg-breadcrumb">
                        <li><a href="javascript:void(0);">主页</a></li>
                        <li class="tg-active">个人中心</li>
                    </ol>
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
                                        <li><a href="javascript:void(0);"><span>个人信息</span></a></li>
                                        <li><a href="javascript:void(0);"><span>我的订单</span></a></li>
                                    </ul>
                                </div>
                            </div>
                        </aside>
                    </div>
                    <div class="col-xs-12 col-sm-8 col-md-8 col-lg-9 pull-right">
                        <div id="tg-content" class="tg-content">
                            <div>个人中心或订单列表</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--************************************
            Contact Us End
    *************************************-->
</main>
<!--************************************
Main End
*************************************-->
<jsp:include page="base/foot.jsp"/>
