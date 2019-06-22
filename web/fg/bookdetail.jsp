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
                    <h1>图书详情</h1>
                    <ol class="tg-breadcrumb">
                        <li><a href="javascript:void(0);">主页</a></li>
                        <li class="tg-active">图书详情</li>
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
                    <div class="col-xs-12 col-sm-8 col-md-8 col-lg-9 pull-right">
                        <div id="tg-content" class="tg-content">
                            <div class="tg-productdetail">
                                <div class="row">
                                    <div class="col-xs-12 col-sm-12 col-md-4 col-lg-4">
                                        <div class="tg-postbook">
                                            <figure class="tg-featureimg"><img src="images/books/img-07.jpg" alt="image description"></figure>
                                            <div class="tg-postbookcontent">
														<span class="tg-bookprice">
															<ins>$25.18</ins>
                                                            <!--															<del>$27.20</del>-->
														</span>
                                                <!--                                                    <span class="tg-bookwriter">You save $4.02</span>-->
                                                <ul class="tg-delevrystock">
                                                    <li><i class="icon-store"></i><span>库存: <em>100</em></span></li>
                                                </ul>
                                                <div class="tg-quantityholder">
                                                    <em class="minus">-</em>
                                                    <input type="text" class="result" value="0" id="quantity1" name="quantity">
                                                    <em class="plus">+</em>
                                                </div>
                                                <a class="tg-btn tg-active tg-btn-lg" href="javascript:void(0);">添加购物车</a>
                                                <a class="tg-btnaddtowishlist" href="javascript:void(0);">
                                                    <span>立即购买</span>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xs-12 col-sm-12 col-md-8 col-lg-8">
                                        <div class="tg-productcontent">
                                            <ul class="tg-bookscategories">
                                                <li><a href="javascript:void(0);">艺术与摄影</a></li>
                                            </ul>
                                            <div class="tg-themetagbox"><span class="tg-themetag">热卖</span></div>
                                            <div class="tg-booktitle">
                                                <h3>Drive Safely, No Bumping</h3>
                                            </div>
                                            <span class="tg-bookwriter">作者: <a href="javascript:void(0);">李伟</a></span>
                                            <div class="tg-description">
                                                <p>Consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore etdoloreat magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laborisi nisi ut aliquip ex ea commodo consequat aute.</p>
                                                <p>Arure dolor in reprehenderit in voluptate velit esse cillum dolore fugiat nulla aetur excepteur sint occaecat cupidatat non proident, sunt in culpa quistan officia serunt mollit anim id est laborum sed ut perspiciatis unde omnis iste natus... <a href="javascript:void(0);">More</a></p>
                                            </div>
                                            <div class="tg-sectionhead">
                                                <h2>图书详情</h2>
                                            </div>
                                            <ul class="tg-productinfo">
                                                <li><span>格式:</span><span>Hardback</span></li>
                                                <li><span>页数:</span><span>528 页</span></li>
                                                <li><span>尺寸:</span><span>153 x 234 x 43mm | 758g</span></li>
                                                <li><span>出版日期:</span><span>2017-7-14</span></li>
                                                <li><span>出版商:</span><span>清华出版社</span></li>
                                                <li><span>语言:</span><span>English</span></li>
                                                <li><span>ISBN10:</span><span>1234567890</span></li>
                                                <li><span>ISBN13:</span><span>1234567890000</span></li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="tg-aboutauthor">
                                        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                                            <div class="tg-sectionhead">
                                                <h2>About Author</h2>
                                            </div>
                                            <div class="tg-authorbox">
                                                <figure class="tg-authorimg">
                                                    <img src="images/author/imag-24.jpg" alt="image description">
                                                </figure>
                                                <div class="tg-authorinfo">
                                                    <div class="tg-authorhead">
                                                        <div class="tg-leftarea">
                                                            <div class="tg-authorname">
                                                                <h2>Kathrine Culbertson</h2>
                                                                <span>Author Since: June 27, 2017</span>
                                                            </div>
                                                        </div>
                                                        <div class="tg-rightarea">
                                                            <ul class="tg-socialicons">
                                                                <li class="tg-facebook"><a href="javascript:void(0);"><i class="fa fa-facebook"></i></a></li>
                                                                <li class="tg-twitter"><a href="javascript:void(0);"><i class="fa fa-twitter"></i></a></li>
                                                                <li class="tg-linkedin"><a href="javascript:void(0);"><i class="fa fa-linkedin"></i></a></li>
                                                                <li class="tg-googleplus"><a href="javascript:void(0);"><i class="fa fa-google-plus"></i></a></li>
                                                                <li class="tg-rss"><a href="javascript:void(0);"><i class="fa fa-rss"></i></a></li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                    <div class="tg-description">
                                                        <p>Laborum sed ut perspiciatis unde omnis iste natus sit voluptatem accusantium doloremque laudantium totam rem aperiam eaque ipsa quae ab illo inventore veritatis etation.</p>
                                                    </div>
                                                    <a class="tg-btn tg-active" href="javascript:void(0);">View All Books</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <!--评论 开始-->
                                    <div class="tg-commentsarea">
                                        <div class="tg-sectionhead">

                                        </div>
                                        <div class="tg-sectionhead">
                                            <h2>03 Comments</h2>
                                        </div>
                                        <ul id="tg-comments" class="tg-comments">
                                            <li>
                                                <div class="tg-authorbox">
                                                    <figure class="tg-authorimg">
                                                        <img src="images/author/imag-24.jpg" alt="image description">
                                                    </figure>
                                                    <div class="tg-authorinfo">
                                                        <div class="tg-authorhead">
                                                            <div class="tg-leftarea">
                                                                <div class="tg-authorname">
                                                                    <h2>李伟</h2>
                                                                    <span>日期: 2017-11-11</span>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="tg-description">
                                                            <p>Laborum sed ut perspiciatis unde omnis iste natus sit voluptatem accusantium doloremque laudantium totam rem aperiam eaque ipsa quae ab illo inventore veritatis etation.</p>
                                                        </div>
                                                    </div>
                                                    <div class="tg-bottomarrow"></div>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="tg-authorbox">
                                                    <figure class="tg-authorimg">
                                                        <img src="images/author/imag-24.jpg" alt="image description">
                                                    </figure>
                                                    <div class="tg-authorinfo">
                                                        <div class="tg-authorhead">
                                                            <div class="tg-leftarea">
                                                                <div class="tg-authorname">
                                                                    <h2>李伟</h2>
                                                                    <span>日期: 2017-11-11</span>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="tg-description">
                                                            <p>Laborum sed ut perspiciatis unde omnis iste natus sit voluptatem accusantium doloremque laudantium totam rem aperiam eaque ipsa quae ab illo inventore veritatis etation.</p>
                                                        </div>
                                                    </div>
                                                    <div class="tg-bottomarrow"></div>
                                                </div>
                                            </li>
                                            <li class="tg-loadmore"><a class="tg-btn tg-active" href="javascript:void(0);">查看全部评论</a></li>
                                        </ul>
                                    </div>
                                    <div class="tg-leaveyourcomment">
                                        <div class="tg-sectionhead">
                                            <h2>留下你的评论</h2>
                                        </div>
                                        <form class="tg-formtheme tg-formleavecomment">
                                            <fieldset>
                                                <div class="form-group">
                                                    <input type="text" name="full name" class="form-control" placeholder="姓*">
                                                </div>
                                                <div class="form-group">
                                                    <input type="text" name="last name" class="form-control" placeholder="名*">
                                                </div>
                                                <div class="form-group">
                                                    <input type="email" name="email address" class="form-control" placeholder="邮箱*">
                                                </div>
                                                <div class="form-group">
                                                    <input type="text" name="subject" class="form-control" placeholder="主题 (可选)">
                                                </div>
                                                <div class="form-group">
                                                    <textarea placeholder="你的评论"></textarea>
                                                </div>
                                                <div class="form-group">
                                                    <a class="tg-btn tg-active" href="javascript:void(0);">提交</a>
                                                </div>
                                            </fieldset>
                                        </form>
                                    </div>
                                    <!--评论 结束-->

                                    <div class="tg-relatedproducts">
                                        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                                            <div class="tg-sectionhead">
                                                <h2><span>相关图书</span>你也可能喜欢</h2>
                                                <a class="tg-btn" href="javascript:void(0);">查看所有</a>
                                            </div>
                                        </div>
                                        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                                            <div id="tg-relatedproductslider" class="tg-relatedproductslider tg-relatedbooks owl-carousel">
                                                <div class="item">
                                                    <div class="tg-postbook">
                                                        <figure class="tg-featureimg">
                                                            <div class="tg-bookimg">
                                                                <div class="tg-frontcover"><img src="images/books/img-01.jpg" alt="image description"></div>
                                                                <div class="tg-backcover"><img src="images/books/img-01.jpg" alt="image description"></div>
                                                            </div>
                                                            <a class="tg-btnaddtowishlist" href="javascript:void(0);">
                                                                <i class="icon-heart"></i>
                                                                <span>add to wishlist</span>
                                                            </a>
                                                        </figure>
                                                        <div class="tg-postbookcontent">
                                                            <ul class="tg-bookscategories">
                                                                <li><a href="javascript:void(0);">Adventure</a></li>
                                                                <li><a href="javascript:void(0);">Fun</a></li>
                                                            </ul>
                                                            <div class="tg-themetagbox"><span class="tg-themetag">sale</span></div>
                                                            <div class="tg-booktitle">
                                                                <h3><a href="javascript:void(0);">Help Me Find My Stomach</a></h3>
                                                            </div>
                                                            <span class="tg-bookwriter">By: <a href="javascript:void(0);">Angela Gunning</a></span>
                                                            <span class="tg-stars"><span></span></span>
                                                            <span class="tg-bookprice">
																		<ins>$25.18</ins>
																		<del>$27.20</del>
																	</span>
                                                            <a class="tg-btn tg-btnstyletwo" href="javascript:void(0);">
                                                                <i class="fa fa-shopping-basket"></i>
                                                                <em>Add To Basket</em>
                                                            </a>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="item">
                                                    <div class="tg-postbook">
                                                        <figure class="tg-featureimg">
                                                            <div class="tg-bookimg">
                                                                <div class="tg-frontcover"><img src="images/books/img-02.jpg" alt="image description"></div>
                                                                <div class="tg-backcover"><img src="images/books/img-02.jpg" alt="image description"></div>
                                                            </div>
                                                            <a class="tg-btnaddtowishlist" href="javascript:void(0);">
                                                                <i class="icon-heart"></i>
                                                                <span>add to wishlist</span>
                                                            </a>
                                                        </figure>
                                                        <div class="tg-postbookcontent">
                                                            <ul class="tg-bookscategories">
                                                                <li><a href="javascript:void(0);">Adventure</a></li>
                                                                <li><a href="javascript:void(0);">Fun</a></li>
                                                            </ul>
                                                            <div class="tg-themetagbox"><span class="tg-themetag">sale</span></div>
                                                            <div class="tg-booktitle">
                                                                <h3><a href="javascript:void(0);">Drive Safely, No Bumping</a></h3>
                                                            </div>
                                                            <span class="tg-bookwriter">By: <a href="javascript:void(0);">Angela Gunning</a></span>
                                                            <span class="tg-stars"><span></span></span>
                                                            <span class="tg-bookprice">
																		<ins>$25.18</ins>
																		<del>$27.20</del>
																	</span>
                                                            <a class="tg-btn tg-btnstyletwo" href="javascript:void(0);">
                                                                <i class="fa fa-shopping-basket"></i>
                                                                <em>Add To Basket</em>
                                                            </a>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="item">
                                                    <div class="tg-postbook">
                                                        <figure class="tg-featureimg">
                                                            <div class="tg-bookimg">
                                                                <div class="tg-frontcover"><img src="images/books/img-03.jpg" alt="image description"></div>
                                                                <div class="tg-backcover"><img src="images/books/img-03.jpg" alt="image description"></div>
                                                            </div>
                                                            <a class="tg-btnaddtowishlist" href="javascript:void(0);">
                                                                <i class="icon-heart"></i>
                                                                <span>add to wishlist</span>
                                                            </a>
                                                        </figure>
                                                        <div class="tg-postbookcontent">
                                                            <ul class="tg-bookscategories">
                                                                <li><a href="javascript:void(0);">Adventure</a></li>
                                                                <li><a href="javascript:void(0);">Fun</a></li>
                                                            </ul>
                                                            <div class="tg-themetagbox"></div>
                                                            <div class="tg-booktitle">
                                                                <h3><a href="javascript:void(0);">Let The Good Times Roll Up</a></h3>
                                                            </div>
                                                            <span class="tg-bookwriter">By: <a href="javascript:void(0);">Angela Gunning</a></span>
                                                            <span class="tg-stars"><span></span></span>
                                                            <span class="tg-bookprice">
																		<ins>$25.18</ins>
																		<del>$27.20</del>
																	</span>
                                                            <a class="tg-btn tg-btnstyletwo" href="javascript:void(0);">
                                                                <i class="fa fa-shopping-basket"></i>
                                                                <em>Add To Basket</em>
                                                            </a>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="item">
                                                    <div class="tg-postbook">
                                                        <figure class="tg-featureimg">
                                                            <div class="tg-bookimg">
                                                                <div class="tg-frontcover"><img src="images/books/img-04.jpg" alt="image description"></div>
                                                                <div class="tg-backcover"><img src="images/books/img-04.jpg" alt="image description"></div>
                                                            </div>
                                                            <a class="tg-btnaddtowishlist" href="javascript:void(0);">
                                                                <i class="icon-heart"></i>
                                                                <span>add to wishlist</span>
                                                            </a>
                                                        </figure>
                                                        <div class="tg-postbookcontent">
                                                            <ul class="tg-bookscategories">
                                                                <li><a href="javascript:void(0);">Adventure</a></li>
                                                                <li><a href="javascript:void(0);">Fun</a></li>
                                                            </ul>
                                                            <div class="tg-themetagbox"><span class="tg-themetag">sale</span></div>
                                                            <div class="tg-booktitle">
                                                                <h3><a href="javascript:void(0);">Our State Fair Is A Great State Fair</a></h3>
                                                            </div>
                                                            <span class="tg-bookwriter">By: <a href="javascript:void(0);">Angela Gunning</a></span>
                                                            <span class="tg-stars"><span></span></span>
                                                            <span class="tg-bookprice">
																		<ins>$25.18</ins>
																		<del>$27.20</del>
																	</span>
                                                            <a class="tg-btn tg-btnstyletwo" href="javascript:void(0);">
                                                                <i class="fa fa-shopping-basket"></i>
                                                                <em>Add To Basket</em>
                                                            </a>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="item">
                                                    <div class="tg-postbook">
                                                        <figure class="tg-featureimg">
                                                            <div class="tg-bookimg">
                                                                <div class="tg-frontcover"><img src="images/books/img-05.jpg" alt="image description"></div>
                                                                <div class="tg-backcover"><img src="images/books/img-05.jpg" alt="image description"></div>
                                                            </div>
                                                            <a class="tg-btnaddtowishlist" href="javascript:void(0);">
                                                                <i class="icon-heart"></i>
                                                                <span>add to wishlist</span>
                                                            </a>
                                                        </figure>
                                                        <div class="tg-postbookcontent">
                                                            <ul class="tg-bookscategories">
                                                                <li><a href="javascript:void(0);">Adventure</a></li>
                                                                <li><a href="javascript:void(0);">Fun</a></li>
                                                            </ul>
                                                            <div class="tg-themetagbox"></div>
                                                            <div class="tg-booktitle">
                                                                <h3><a href="javascript:void(0);">Put The Petal To The Metal</a></h3>
                                                            </div>
                                                            <span class="tg-bookwriter">By: <a href="javascript:void(0);">Angela Gunning</a></span>
                                                            <span class="tg-stars"><span></span></span>
                                                            <span class="tg-bookprice">
																		<ins>$25.18</ins>
																		<del>$27.20</del>
																	</span>
                                                            <a class="tg-btn tg-btnstyletwo" href="javascript:void(0);">
                                                                <i class="fa fa-shopping-basket"></i>
                                                                <em>Add To Basket</em>
                                                            </a>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="item">
                                                    <div class="tg-postbook">
                                                        <figure class="tg-featureimg">
                                                            <div class="tg-bookimg">
                                                                <div class="tg-frontcover"><img src="images/books/img-06.jpg" alt="image description"></div>
                                                                <div class="tg-backcover"><img src="images/books/img-06.jpg" alt="image description"></div>
                                                            </div>
                                                            <a class="tg-btnaddtowishlist" href="javascript:void(0);">
                                                                <i class="icon-heart"></i>
                                                                <span>add to wishlist</span>
                                                            </a>
                                                        </figure>
                                                        <div class="tg-postbookcontent">
                                                            <ul class="tg-bookscategories">
                                                                <li><a href="javascript:void(0);">Adventure</a></li>
                                                                <li><a href="javascript:void(0);">Fun</a></li>
                                                            </ul>
                                                            <div class="tg-themetagbox"><span class="tg-themetag">sale</span></div>
                                                            <div class="tg-booktitle">
                                                                <h3><a href="javascript:void(0);">Help Me Find My Stomach</a></h3>
                                                            </div>
                                                            <span class="tg-bookwriter">By: <a href="javascript:void(0);">Angela Gunning</a></span>
                                                            <span class="tg-stars"><span></span></span>
                                                            <span class="tg-bookprice">
																		<ins>$25.18</ins>
																		<del>$27.20</del>
																	</span>
                                                            <a class="tg-btn tg-btnstyletwo" href="javascript:void(0);">
                                                                <i class="fa fa-shopping-basket"></i>
                                                                <em>Add To Basket</em>
                                                            </a>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="item">
                                                    <div class="tg-postbook">
                                                        <figure class="tg-featureimg">
                                                            <div class="tg-bookimg">
                                                                <div class="tg-frontcover"><img src="images/books/img-03.jpg" alt="image description"></div>
                                                                <div class="tg-backcover"><img src="images/books/img-03.jpg" alt="image description"></div>
                                                            </div>
                                                            <a class="tg-btnaddtowishlist" href="javascript:void(0);">
                                                                <i class="icon-heart"></i>
                                                                <span>add to wishlist</span>
                                                            </a>
                                                        </figure>
                                                        <div class="tg-postbookcontent">
                                                            <ul class="tg-bookscategories">
                                                                <li><a href="javascript:void(0);">Adventure</a></li>
                                                                <li><a href="javascript:void(0);">Fun</a></li>
                                                            </ul>
                                                            <div class="tg-themetagbox"></div>
                                                            <div class="tg-booktitle">
                                                                <h3><a href="javascript:void(0);">Let The Good Times Roll Up</a></h3>
                                                            </div>
                                                            <span class="tg-bookwriter">By: <a href="javascript:void(0);">Angela Gunning</a></span>
                                                            <span class="tg-stars"><span></span></span>
                                                            <span class="tg-bookprice">
																		<ins>$25.18</ins>
																		<del>$27.20</del>
																	</span>
                                                            <a class="tg-btn tg-btnstyletwo" href="javascript:void(0);">
                                                                <i class="fa fa-shopping-basket"></i>
                                                                <em>Add To Basket</em>
                                                            </a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
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
                            <!--左部分类 开始-->
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
                            <!--左部分类 结束-->
                            <!--热门作者 开始-->
                            <div class="tg-widget tg-widgetblogers">
                                <div class="tg-widgettitle">
                                    <h3>热门作者</h3>
                                </div>
                                <div class="tg-widgetcontent">
                                    <ul>
                                        <li>
                                            <div class="tg-author">
                                                <figure><a href="javascript:void(0);"><img src="images/author/imag-03.jpg" alt="image description"></a></figure>
                                                <div class="tg-authorcontent">
                                                    <h2><a href="javascript:void(0);">Jude Morphew</a></h2>
                                                    <span>21,658 Published Books</span>
                                                </div>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="tg-author">
                                                <figure><a href="javascript:void(0);"><img src="images/author/imag-04.jpg" alt="image description"></a></figure>
                                                <div class="tg-authorcontent">
                                                    <h2><a href="javascript:void(0);">Jude Morphew</a></h2>
                                                    <span>21,658 Published Books</span>
                                                </div>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="tg-author">
                                                <figure><a href="javascript:void(0);"><img src="images/author/imag-05.jpg" alt="image description"></a></figure>
                                                <div class="tg-authorcontent">
                                                    <h2><a href="javascript:void(0);">Jude Morphew</a></h2>
                                                    <span>21,658 Published Books</span>
                                                </div>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="tg-author">
                                                <figure><a href="javascript:void(0);"><img src="images/author/imag-06.jpg" alt="image description"></a></figure>
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
