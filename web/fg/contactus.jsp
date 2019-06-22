<%--
  Created by IntelliJ IDEA.
  User: liwei
  Date: 2019/6/22
  Time: 19:59
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
                    <h1>联系我们</h1>
                    <ol class="tg-breadcrumb">
                        <li><a href="javascript:void(0);">主页</a></li>
                        <li class="tg-active">联系我们</li>
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
                <div class="tg-contactus">
                    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                        <div class="tg-sectionhead">
                            <h2><span>打个招呼！</span>联系我们</h2>
                        </div>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
                        <div id="tg-locationmap" class="tg-locationmap tg-map"></div>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
                        <form class="tg-formtheme tg-formcontactus">
                            <fieldset>
                                <div class="form-group">
                                    <input type="text" name="first-name" class="form-control" placeholder="姓*">
                                </div>
                                <div class="form-group">
                                    <input type="text" name="last-name" class="form-control" placeholder="名*">
                                </div>
                                <div class="form-group">
                                    <input type="email" name="email" class="form-control" placeholder="邮箱*">
                                </div>
                                <div class="form-group">
                                    <input type="text" name="subject" class="form-control" placeholder="主题 (可选)">
                                </div>
                                <div class="form-group tg-hastextarea">
                                    <textarea placeholder="评论"></textarea>
                                </div>
                                <div class="form-group">
                                    <button type="submit" class="tg-btn tg-active">提交</button>
                                </div>
                            </fieldset>
                        </form>
                        <div class="tg-contactdetail">
                            <div class="tg-sectionhead">
                                <h2>Get In Touch With Us</h2>
                            </div>
                            <ul class="tg-contactinfo">
                                <li>
                                    <i class="icon-apartment"></i>
                                    <address>河南省 郑州市 高新区 科学大道100号（郑州大学新校区）</address>
                                </li>
                                <li>
                                    <i class="icon-phone-handset"></i>
                                    <span>
                                            <em>17803878845</em>
                                            <em>+4 1234 - 4567 - 67</em>
                                        </span>
                                </li>
                                <li>
                                    <i class="icon-envelope"></i>
                                    <span>
                                            <em><a href="mailto:1759840027@qq.com">1759840027@qq.com</a></em>
                                        </span>
                                </li>
                            </ul>
                            <ul class="tg-socialicons">
                                <li class="tg-facebook"><a href="javascript:void(0);"><i class="fa fa-facebook"></i></a></li>
                                <li class="tg-twitter"><a href="javascript:void(0);"><i class="fa fa-twitter"></i></a></li>
                                <li class="tg-linkedin"><a href="javascript:void(0);"><i class="fa fa-linkedin"></i></a></li>
                                <li class="tg-googleplus"><a href="javascript:void(0);"><i class="fa fa-google-plus"></i></a></li>
                                <li class="tg-rss"><a href="javascript:void(0);"><i class="fa fa-rss"></i></a></li>
                            </ul>
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