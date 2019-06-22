<%--
  Created by IntelliJ IDEA.
  User: liwei
  Date: 2019/6/22
  Time: 19:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="base/head.jsp"/>
<!--************************************
Inner Banner Start
*************************************-->
<div class="tg-innerbanner tg-haslayout tg-parallax tg-bginnerbanner" data-z-index="-100" data-appear-top-offset="600"
     data-parallax="scroll" data-image-src="images/parallax/bgparallax-07.jpg">
    <div class="container">
        <div class="row">
            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                <div class="tg-innerbannercontent">
                    <h1>主页</h1>
                    <ol class="tg-breadcrumb">
                        <li><a href="javascript:void(0);">主页</a></li>
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
            News Grid Start
    *************************************-->
    <div class="tg-sectionspace tg-haslayout">
        <div class="container">
            <div class="row">
                <div id="tg-twocolumns" class="tg-twocolumns">
                    <div class="col-xs-12 col-sm-4 col-md-4 col-lg-3 pull-left">
                        <aside id="tg-sidebar" class="tg-sidebar">
                            <div class="tg-widget tg-widgetsearch">
                                <form class="tg-formtheme tg-formsearch">
                                    <div class="form-group">
                                        <button type="submit"><i class="icon-magnifier"></i></button>
                                        <input type="search" name="search" class="form-group" placeholder="请输入书名">
                                    </div>
                                </form>
                            </div>
                            <div class="tg-widget tg-catagories">
                                <div class="tg-widgettitle">
                                    <h3>分类</h3>
                                </div>
                                <div class="tg-widgetcontent">
                                    <ul>
                                        <li><a href="javascript:void(0);"><span>艺术与摄影</span><em>28245</em></a></li>
                                        <li><a href="javascript:void(0);"><span>传记</span><em>4856</em></a></li>
                                        <li><a href="javascript:void(0);"><span>儿童读物</span><em>8654</em></a></li>
                                        <li><a href="javascript:void(0);"><span>工艺和爱好</span><em>6247</em></a></li>
                                        <li><a href="javascript:void(0);"><span>犯罪与惊悚片</span><em>888654</em></a></li>
                                        <li><a href="javascript:void(0);"><span>恐怖幻想</span><em>873144</em></a></li>
                                        <li><a href="javascript:void(0);"><span>小说</span><em>18465</em></a></li>
                                        <li><a href="javascript:void(0);"><span>食品和饮料</span><em>3148</em></a></li>
                                        <li><a href="javascript:void(0);"><span>图形，动画与漫画</span><em>77531</em></a></li>
                                        <li><a href="javascript:void(0);"><span>科幻小说</span><em>9247</em></a></li>
                                        <li><a href="javascript:void(0);"><span>查看所有</span></a></li>
                                    </ul>
                                </div>
                            </div>
                            <!--热门作者 开始-->
                            <div class="tg-widget tg-widgetblogers">
                                <div class="tg-widgettitle">
                                    <h3>热门作者</h3>
                                </div>
                                <div class="tg-widgetcontent">
                                    <ul>
                                        <li>
                                            <div class="tg-author">
                                                <figure><a href="javascript:void(0);"><img
                                                        src="images/author/imag-03.jpg" alt="image description"></a>
                                                </figure>
                                                <div class="tg-authorcontent">
                                                    <h2><a href="javascript:void(0);">Jude Morphew</a></h2>
                                                    <span>21,658 Published Books</span>
                                                </div>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="tg-author">
                                                <figure><a href="javascript:void(0);"><img
                                                        src="images/author/imag-04.jpg" alt="image description"></a>
                                                </figure>
                                                <div class="tg-authorcontent">
                                                    <h2><a href="javascript:void(0);">Jude Morphew</a></h2>
                                                    <span>21,658 Published Books</span>
                                                </div>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="tg-author">
                                                <figure><a href="javascript:void(0);"><img
                                                        src="images/author/imag-05.jpg" alt="image description"></a>
                                                </figure>
                                                <div class="tg-authorcontent">
                                                    <h2><a href="javascript:void(0);">Jude Morphew</a></h2>
                                                    <span>21,658 Published Books</span>
                                                </div>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="tg-author">
                                                <figure><a href="javascript:void(0);"><img
                                                        src="images/author/imag-06.jpg" alt="image description"></a>
                                                </figure>
                                                <div class="tg-authorcontent">
                                                    <h2><a href="javascript:void(0);">Jude Morphew</a></h2>
                                                    <span>21,658 Published Books</span>
                                                </div>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <!--热门作者 结束-->
                        </aside>
                    </div>
                    <div class="col-xs-12 col-sm-8 col-md-8 col-lg-9 pull-right">
                        <div id="tg-content" class="tg-content">
                            <div class="tg-products">
                                <div class="tg-productgrid">
                                    <div class="tg-refinesearch">
                                        <!--                                            <span>showing 1 to 8 of 20 total</span>-->
                                        <form class="tg-formtheme tg-formsortshoitems">
                                            <fieldset>
                                                <div class="form-group">
                                                    <label>排序:</label>
                                                    <span class="tg-select">
																<select>
																	<option>name</option>
																	<option>name</option>
																	<option>name</option>
																</select>
															</span>
                                                </div>
                                                <div class="form-group">
                                                    <label>显示:</label>
                                                    <span class="tg-select">
																<select>
																	<option>8</option>
																	<option>16</option>
																	<option>20</option>
																</select>
															</span>
                                                </div>
                                            </fieldset>
                                        </form>
                                    </div>
                                    <div class="col-xs-6 col-sm-6 col-md-4 col-lg-3">
                                        <div class="tg-postbook">
                                            <figure class="tg-featureimg">
                                                <div class="tg-bookimg">
                                                    <div class="tg-frontcover"><img src="images/books/img-01.jpg"
                                                                                    alt="image description"></div>
                                                    <div class="tg-backcover"><img src="images/books/img-01.jpg"
                                                                                   alt="image description"></div>
                                                </div>
                                                <a class="tg-btnaddtowishlist" href="javascript:void(0);">
                                                    <i class="icon-heart"></i>
                                                    <span>收藏</span>
                                                </a>
                                            </figure>
                                            <div class="tg-postbookcontent">
                                                <ul class="tg-bookscategories">
                                                    <li><a href="javascript:void(0);">艺术与摄影</a></li>
                                                </ul>
                                                <div class="tg-themetagbox"><span class="tg-themetag">热卖</span></div>
                                                <div class="tg-booktitle">
                                                    <h3><a href="bookdetail.jsp">Help Me Find My Stomach</a></h3>
                                                </div>
                                                <span class="tg-bookwriter">作者: <a href="javascript:void(0);">Angela Gunning</a></span>
                                                <span class="tg-stars"><span></span></span>
                                                <span class="tg-bookprice">
															<ins>$25.18</ins>
															<del>$27.20</del>
														</span>
                                                <a class="tg-btn tg-btnstyletwo" href="javascript:void(0);">
                                                    <i class="fa fa-shopping-basket"></i>
                                                    <em>加入购物车</em>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xs-6 col-sm-6 col-md-4 col-lg-3">
                                        <div class="tg-postbook">
                                            <figure class="tg-featureimg">
                                                <div class="tg-bookimg">
                                                    <div class="tg-frontcover"><img src="images/books/img-02.jpg"
                                                                                    alt="image description"></div>
                                                    <div class="tg-backcover"><img src="images/books/img-02.jpg"
                                                                                   alt="image description"></div>
                                                </div>
                                                <a class="tg-btnaddtowishlist" href="javascript:void(0);">
                                                    <i class="icon-heart"></i>
                                                    <span>收藏 </span>
                                                </a>
                                            </figure>
                                            <div class="tg-postbookcontent">
                                                <ul class="tg-bookscategories">
                                                    <li><a href="javascript:void(0);">Art &amp; Photography</a></li>
                                                </ul>
                                                <div class="tg-themetagbox"><span class="tg-themetag">热卖</span></div>
                                                <div class="tg-booktitle">
                                                    <h3><a href="bookdetail.jsp">Help Me Find My Stomach</a></h3>
                                                </div>
                                                <span class="tg-bookwriter">作者: <a href="javascript:void(0);">Angela Gunning</a></span>
                                                <span class="tg-stars"><span></span></span>
                                                <span class="tg-bookprice">
															<ins>$25.18</ins>
															<del>$27.20</del>
														</span>
                                                <a class="tg-btn tg-btnstyletwo" href="javascript:void(0);">
                                                    <i class="fa fa-shopping-basket"></i>
                                                    <em>加入购物车</em>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xs-6 col-sm-6 col-md-4 col-lg-3">
                                        <div class="tg-postbook">
                                            <figure class="tg-featureimg">
                                                <div class="tg-bookimg">
                                                    <div class="tg-frontcover"><img src="images/books/img-03.jpg"
                                                                                    alt="image description"></div>
                                                    <div class="tg-backcover"><img src="images/books/img-03.jpg"
                                                                                   alt="image description"></div>
                                                </div>
                                                <a class="tg-btnaddtowishlist" href="javascript:void(0);">
                                                    <i class="icon-heart"></i>
                                                    <span>收藏 </span>
                                                </a>
                                            </figure>
                                            <div class="tg-postbookcontent">
                                                <ul class="tg-bookscategories">
                                                    <li><a href="javascript:void(0);">Art &amp; Photography</a></li>
                                                </ul>
                                                <div class="tg-themetagbox"><span class="tg-themetag">热卖</span></div>
                                                <div class="tg-booktitle">
                                                    <h3><a href="bookdetail.jsp">Help Me Find My Stomach</a></h3>
                                                </div>
                                                <span class="tg-bookwriter">作者: <a href="javascript:void(0);">Angela Gunning</a></span>
                                                <span class="tg-stars"><span></span></span>
                                                <span class="tg-bookprice">
															<ins>$25.18</ins>
															<del>$27.20</del>
														</span>
                                                <a class="tg-btn tg-btnstyletwo" href="javascript:void(0);">
                                                    <i class="fa fa-shopping-basket"></i>
                                                    <em>加入购物车</em>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xs-6 col-sm-6 col-md-4 col-lg-3">
                                        <div class="tg-postbook">
                                            <figure class="tg-featureimg">
                                                <div class="tg-bookimg">
                                                    <div class="tg-frontcover"><img src="images/books/img-04.jpg"
                                                                                    alt="image description"></div>
                                                    <div class="tg-backcover"><img src="images/books/img-04.jpg"
                                                                                   alt="image description"></div>
                                                </div>
                                                <a class="tg-btnaddtowishlist" href="javascript:void(0);">
                                                    <i class="icon-heart"></i>
                                                    <span>收藏 </span>
                                                </a>
                                            </figure>
                                            <div class="tg-postbookcontent">
                                                <ul class="tg-bookscategories">
                                                    <li><a href="javascript:void(0);">Art &amp; Photography</a></li>
                                                </ul>
                                                <div class="tg-themetagbox"><span class="tg-themetag">热卖</span></div>
                                                <div class="tg-booktitle">
                                                    <h3><a href="bookdetail.jsp">Help Me Find My Stomach</a></h3>
                                                </div>
                                                <span class="tg-bookwriter">作者: <a href="javascript:void(0);">Angela Gunning</a></span>
                                                <span class="tg-stars"><span></span></span>
                                                <span class="tg-bookprice">
															<ins>$25.18</ins>
															<del>$27.20</del>
														</span>
                                                <a class="tg-btn tg-btnstyletwo" href="javascript:void(0);">
                                                    <i class="fa fa-shopping-basket"></i>
                                                    <em>加入购物车</em>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xs-6 col-sm-6 col-md-4 col-lg-3">
                                        <div class="tg-postbook">
                                            <figure class="tg-featureimg">
                                                <div class="tg-bookimg">
                                                    <div class="tg-frontcover"><img src="images/books/img-05.jpg"
                                                                                    alt="image description"></div>
                                                    <div class="tg-backcover"><img src="images/books/img-05.jpg"
                                                                                   alt="image description"></div>
                                                </div>
                                                <a class="tg-btnaddtowishlist" href="javascript:void(0);">
                                                    <i class="icon-heart"></i>
                                                    <span>收藏 </span>
                                                </a>
                                            </figure>
                                            <div class="tg-postbookcontent">
                                                <ul class="tg-bookscategories">
                                                    <li><a href="javascript:void(0);">Art &amp; Photography</a></li>
                                                </ul>
                                                <div class="tg-themetagbox"><span class="tg-themetag">热卖</span></div>
                                                <div class="tg-booktitle">
                                                    <h3><a href="bookdetail.jsp">Help Me Find My Stomach</a></h3>
                                                </div>
                                                <span class="tg-bookwriter">作者: <a href="javascript:void(0);">Angela Gunning</a></span>
                                                <span class="tg-stars"><span></span></span>
                                                <span class="tg-bookprice">
															<ins>$25.18</ins>
															<del>$27.20</del>
														</span>
                                                <a class="tg-btn tg-btnstyletwo" href="javascript:void(0);">
                                                    <i class="fa fa-shopping-basket"></i>
                                                    <em>加入购物车</em>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xs-6 col-sm-6 col-md-4 col-lg-3">
                                        <div class="tg-postbook">
                                            <figure class="tg-featureimg">
                                                <div class="tg-bookimg">
                                                    <div class="tg-frontcover"><img src="images/books/img-06.jpg"
                                                                                    alt="image description"></div>
                                                    <div class="tg-backcover"><img src="images/books/img-06.jpg"
                                                                                   alt="image description"></div>
                                                </div>
                                                <a class="tg-btnaddtowishlist" href="javascript:void(0);">
                                                    <i class="icon-heart"></i>
                                                    <span>收藏 </span>
                                                </a>
                                            </figure>
                                            <div class="tg-postbookcontent">
                                                <ul class="tg-bookscategories">
                                                    <li><a href="javascript:void(0);">Art &amp; Photography</a></li>
                                                </ul>
                                                <div class="tg-themetagbox"><span class="tg-themetag">热卖</span></div>
                                                <div class="tg-booktitle">
                                                    <h3><a href="bookdetail.jsp">Help Me Find My Stomach</a></h3>
                                                </div>
                                                <span class="tg-bookwriter">作者: <a href="javascript:void(0);">Angela Gunning</a></span>
                                                <span class="tg-stars"><span></span></span>
                                                <span class="tg-bookprice">
															<ins>$25.18</ins>
															<del>$27.20</del>
														</span>
                                                <a class="tg-btn tg-btnstyletwo" href="javascript:void(0);">
                                                    <i class="fa fa-shopping-basket"></i>
                                                    <em>加入购物车</em>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xs-6 col-sm-6 col-md-4 col-lg-3">
                                        <div class="tg-postbook">
                                            <figure class="tg-featureimg">
                                                <div class="tg-bookimg">
                                                    <div class="tg-frontcover"><img src="images/books/img-07.jpg"
                                                                                    alt="image description"></div>
                                                    <div class="tg-backcover"><img src="images/books/img-07.jpg"
                                                                                   alt="image description"></div>
                                                </div>
                                                <a class="tg-btnaddtowishlist" href="javascript:void(0);">
                                                    <i class="icon-heart"></i>
                                                    <span>收藏 </span>
                                                </a>
                                            </figure>
                                            <div class="tg-postbookcontent">
                                                <ul class="tg-bookscategories">
                                                    <li><a href="javascript:void(0);">Art &amp; Photography</a></li>
                                                </ul>
                                                <div class="tg-themetagbox"><span class="tg-themetag">热卖</span></div>
                                                <div class="tg-booktitle">
                                                    <h3><a href="bookdetail.jsp">Help Me Find My Stomach</a></h3>
                                                </div>
                                                <span class="tg-bookwriter">作者: <a href="javascript:void(0);">Angela Gunning</a></span>
                                                <span class="tg-stars"><span></span></span>
                                                <span class="tg-bookprice">
															<ins>$25.18</ins>
															<del>$27.20</del>
														</span>
                                                <a class="tg-btn tg-btnstyletwo" href="javascript:void(0);">
                                                    <i class="fa fa-shopping-basket"></i>
                                                    <em>加入购物车</em>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xs-6 col-sm-6 col-md-4 col-lg-3">
                                        <div class="tg-postbook">
                                            <figure class="tg-featureimg">
                                                <div class="tg-bookimg">
                                                    <div class="tg-frontcover"><img src="images/books/img-08.jpg"
                                                                                    alt="image description"></div>
                                                    <div class="tg-backcover"><img src="images/books/img-08.jpg"
                                                                                   alt="image description"></div>
                                                </div>
                                                <a class="tg-btnaddtowishlist" href="javascript:void(0);">
                                                    <i class="icon-heart"></i>
                                                    <span>收藏 </span>
                                                </a>
                                            </figure>
                                            <div class="tg-postbookcontent">
                                                <ul class="tg-bookscategories">
                                                    <li><a href="javascript:void(0);">Art &amp; Photography</a></li>
                                                </ul>
                                                <div class="tg-themetagbox"><span class="tg-themetag">热卖</span></div>
                                                <div class="tg-booktitle">
                                                    <h3><a href="bookdetail.jsp">Help Me Find My Stomach</a></h3>
                                                </div>
                                                <span class="tg-bookwriter">作者: <a href="javascript:void(0);">Angela Gunning</a></span>
                                                <span class="tg-stars"><span></span></span>
                                                <span class="tg-bookprice">
															<ins>$25.18</ins>
															<del>$27.20</del>
														</span>
                                                <a class="tg-btn tg-btnstyletwo" href="javascript:void(0);">
                                                    <i class="fa fa-shopping-basket"></i>
                                                    <em>加入购物车</em>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xs-6 col-sm-6 col-md-4 col-lg-3">
                                        <div class="tg-postbook">
                                            <figure class="tg-featureimg">
                                                <div class="tg-bookimg">
                                                    <div class="tg-frontcover"><img src="images/books/img-09.jpg"
                                                                                    alt="image description"></div>
                                                    <div class="tg-backcover"><img src="images/books/img-09.jpg"
                                                                                   alt="image description"></div>
                                                </div>
                                                <a class="tg-btnaddtowishlist" href="javascript:void(0);">
                                                    <i class="icon-heart"></i>
                                                    <span>收藏 </span>
                                                </a>
                                            </figure>
                                            <div class="tg-postbookcontent">
                                                <ul class="tg-bookscategories">
                                                    <li><a href="javascript:void(0);">Art &amp; Photography</a></li>
                                                </ul>
                                                <div class="tg-themetagbox"><span class="tg-themetag">热卖</span></div>
                                                <div class="tg-booktitle">
                                                    <h3><a href="bookdetail.jsp">Help Me Find My Stomach</a></h3>
                                                </div>
                                                <span class="tg-bookwriter">作者: <a href="javascript:void(0);">Angela Gunning</a></span>
                                                <span class="tg-stars"><span></span></span>
                                                <span class="tg-bookprice">
															<ins>$25.18</ins>
															<del>$27.20</del>
														</span>
                                                <a class="tg-btn tg-btnstyletwo" href="javascript:void(0);">
                                                    <i class="fa fa-shopping-basket"></i>
                                                    <em>加入购物车</em>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xs-6 col-sm-6 col-md-4 col-lg-3">
                                        <div class="tg-postbook">
                                            <figure class="tg-featureimg">
                                                <div class="tg-bookimg">
                                                    <div class="tg-frontcover"><img src="images/books/img-10.jpg"
                                                                                    alt="image description"></div>
                                                    <div class="tg-backcover"><img src="images/books/img-10.jpg"
                                                                                   alt="image description"></div>
                                                </div>
                                                <a class="tg-btnaddtowishlist" href="javascript:void(0);">
                                                    <i class="icon-heart"></i>
                                                    <span>收藏 </span>
                                                </a>
                                            </figure>
                                            <div class="tg-postbookcontent">
                                                <ul class="tg-bookscategories">
                                                    <li><a href="javascript:void(0);">Art &amp; Photography</a></li>
                                                </ul>
                                                <div class="tg-themetagbox"><span class="tg-themetag">热卖</span></div>
                                                <div class="tg-booktitle">
                                                    <h3><a href="bookdetail.jsp">Help Me Find My Stomach</a></h3>
                                                </div>
                                                <span class="tg-bookwriter">作者: <a href="javascript:void(0);">Angela Gunning</a></span>
                                                <span class="tg-stars"><span></span></span>
                                                <span class="tg-bookprice">
															<ins>$25.18</ins>
															<del>$27.20</del>
														</span>
                                                <a class="tg-btn tg-btnstyletwo" href="javascript:void(0);">
                                                    <i class="fa fa-shopping-basket"></i>
                                                    <em>加入购物车</em>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xs-6 col-sm-6 col-md-4 col-lg-3">
                                        <div class="tg-postbook">
                                            <figure class="tg-featureimg">
                                                <div class="tg-bookimg">
                                                    <div class="tg-frontcover"><img src="images/books/img-11.jpg"
                                                                                    alt="image description"></div>
                                                    <div class="tg-backcover"><img src="images/books/img-11.jpg"
                                                                                   alt="image description"></div>
                                                </div>
                                                <a class="tg-btnaddtowishlist" href="javascript:void(0);">
                                                    <i class="icon-heart"></i>
                                                    <span>收藏 </span>
                                                </a>
                                            </figure>
                                            <div class="tg-postbookcontent">
                                                <ul class="tg-bookscategories">
                                                    <li><a href="javascript:void(0);">Art &amp; Photography</a></li>
                                                </ul>
                                                <div class="tg-themetagbox"><span class="tg-themetag">热卖</span></div>
                                                <div class="tg-booktitle">
                                                    <h3><a href="bookdetail.jsp">Help Me Find My Stomach</a></h3>
                                                </div>
                                                <span class="tg-bookwriter">作者: <a href="javascript:void(0);">Angela Gunning</a></span>
                                                <span class="tg-stars"><span></span></span>
                                                <span class="tg-bookprice">
															<ins>$25.18</ins>
															<del>$27.20</del>
														</span>
                                                <a class="tg-btn tg-btnstyletwo" href="javascript:void(0);">
                                                    <i class="fa fa-shopping-basket"></i>
                                                    <em>加入购物车</em>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xs-6 col-sm-6 col-md-4 col-lg-3">
                                        <div class="tg-postbook">
                                            <figure class="tg-featureimg">
                                                <div class="tg-bookimg">
                                                    <div class="tg-frontcover"><img src="images/books/img-12.jpg"
                                                                                    alt="image description"></div>
                                                    <div class="tg-backcover"><img src="images/books/img-12.jpg"
                                                                                   alt="image description"></div>
                                                </div>
                                                <a class="tg-btnaddtowishlist" href="javascript:void(0);">
                                                    <i class="icon-heart"></i>
                                                    <span>收藏 </span>
                                                </a>
                                            </figure>
                                            <div class="tg-postbookcontent">
                                                <ul class="tg-bookscategories">
                                                    <li><a href="javascript:void(0);">Art &amp; Photography</a></li>
                                                </ul>
                                                <div class="tg-themetagbox"><span class="tg-themetag">热卖</span></div>
                                                <div class="tg-booktitle">
                                                    <h3><a href="bookdetail.jsp">Help Me Find My Stomach</a></h3>
                                                </div>
                                                <span class="tg-bookwriter">作者: <a href="javascript:void(0);">Angela Gunning</a></span>
                                                <span class="tg-stars"><span></span></span>
                                                <span class="tg-bookprice">
															<ins>$25.18</ins>
															<del>$27.20</del>
														</span>
                                                <a class="tg-btn tg-btnstyletwo" href="javascript:void(0);">
                                                    <i class="fa fa-shopping-basket"></i>
                                                    <em>加入购物车</em>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div align="center">
                                    <ul class="pager">
                                        <li><a href="javascript:void(0);">&laquo;上一页</a></li>
                                        <li><a href="javascript:void(0);">下一页&raquo;</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--************************************
            News Grid End
    *************************************-->
</main>
<!--************************************
Main End
*************************************-->
<jsp:include page="base/foot.jsp"/>
