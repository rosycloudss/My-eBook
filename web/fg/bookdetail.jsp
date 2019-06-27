<%@ page import="com.my_ebook.entity.Book" %>
<%@ page import="com.my_ebook.util.DateUtil" %>
<%@ page import="com.my_ebook.entity.Category" %>
<%@ page import="java.util.List" %>
<%@ page import="com.my_ebook.vo.Page" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<jsp:include page="base/head.jsp"/>

<div class="tg-innerbanner tg-haslayout tg-parallax tg-bginnerbanner" data-z-index="-100" data-appear-top-offset="600" data-parallax="scroll" data-image-src="/fg/images/parallax/bgparallax-07.jpg">
    <div class="container">
        <div class="row">
            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                <div class="tg-innerbannercontent">
                    <h1>图书详情</h1>
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
    <%
        Book book = (Book) request.getAttribute("book");
    %>
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
                                            <figure class="tg-featureimg"><img src="/fg/<%=book.getCover()%>" alt="image description"></figure>
                                            <div class="tg-postbookcontent">
														<span class="tg-bookprice">
															<ins><%=book.getSellingPrice()%></ins>
                                                            <!--															<del>$27.20</del>-->
														</span>
                                                <!--                                                    <span class="tg-bookwriter">You save $4.02</span>-->
                                                <ul class="tg-delevrystock">
                                                    <li><i class="icon-store"></i><span>库存: <em><%=book.getReserve()%></em></span></li>
                                                </ul>
                                                <a class="tg-btn tg-active tg-btn-lg" onclick="addCar(<%=book.getID()%>)" href="javascript:void(0);">添加购物车</a>
                                                <a class="tg-btnaddtowishlist" href="/fg/car/checkOut?isCar=0&bookId=<%=book.getID()%>">
                                                    <span>立即购买</span>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xs-12 col-sm-12 col-md-8 col-lg-8">
                                        <div class="tg-productcontent">
                                            <ul class="tg-bookscategories">
                                                <li><a href="javascript:void(0);"><%=book.getCategory().getName()%></a></li>
                                            </ul>
                                            <div class="tg-themetagbox"><span class="tg-themetag">热卖</span></div>
                                            <div class="tg-booktitle">
                                                <h3><%=book.getName()%></h3>
                                            </div>
                                            <span class="tg-bookwriter">作者: <a href="javascript:void(0);"><%=book.getAuthor()%></a></span>
                                            <div class="tg-description">
                                                <p><%=book.getDescription()%></p>
                                            </div>
                                            <div class="tg-sectionhead">
                                                <h2>图书详情</h2>
                                            </div>
                                            <ul class="tg-productinfo">
                                                <li><span>格式:</span><span>Hardback</span></li>
                                                <li><span>页数:</span><span><%=book.getPages()%></span></li>
                                                <li><span>尺寸:</span><span>153 x 234 x 43mm | 758g</span></li>
                                                <li><span>出版日期:</span><span><%=DateUtil.formatDate(book.getPublishDate())%></span></li>
                                                <li><span>出版商:</span><span><%=book.getPublisher()%></span></li>
                                                <li><span>语言:</span><span>English</span></li>
                                                <li><span>ISBN:</span><span><%=book.getISBN()%></span></li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="tg-aboutauthor">
                                        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                                            <div class="tg-sectionhead">
                                                <h2>关于作者</h2>
                                            </div>
                                            <div class="tg-authorbox">
                                                <figure class="tg-authorimg">
                                                    <img src="/fg/images/author/imag-24.jpg" alt="image description">
                                                </figure>
                                                <div class="tg-authorinfo">
                                                    <div class="tg-authorhead">
                                                        <div class="tg-leftarea">
                                                            <div class="tg-authorname">
                                                                <h2><%=book.getAuthor()%></h2>
                                                                <span><%=book.getPublishDate()%></span>
                                                            </div>
                                                        </div>
                                                        <%--<div class="tg-rightarea">
                                                            <ul class="tg-socialicons">
                                                                <li class="tg-facebook"><a href="javascript:void(0);"><i class="fa fa-facebook"></i></a></li>
                                                                <li class="tg-twitter"><a href="javascript:void(0);"><i class="fa fa-twitter"></i></a></li>
                                                                <li class="tg-linkedin"><a href="javascript:void(0);"><i class="fa fa-linkedin"></i></a></li>
                                                                <li class="tg-googleplus"><a href="javascript:void(0);"><i class="fa fa-google-plus"></i></a></li>
                                                                <li class="tg-rss"><a href="javascript:void(0);"><i class="fa fa-rss"></i></a></li>
                                                            </ul>
                                                        </div>--%>
                                                    </div>
                                                    <div class="tg-description">
                                                        <p>该作者出版过很多书籍，是一位优秀的人.</p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!--评论 开始-->
                                    <div class="tg-commentsarea">
                                        <div class="tg-sectionhead">
                                            <h2>3个评论</h2>
                                        </div>
                                        <ul id="tg-comments" class="tg-comments">

                                            <li>
                                                <div class="tg-authorbox">
                                                    <figure class="tg-authorimg">
                                                        <img src="/fg/images/author/imag-24.jpg" alt="image description">
                                                    </figure>
                                                    <div class="tg-authorinfo">
                                                        <div class="tg-authorhead">
                                                            <div class="tg-leftarea">
                                                                <div class="tg-authorname">
                                                                    <h2>李伟</h2>
                                                                    <span>日期: 2019-6-27</span>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="tg-description">
                                                            <p>这本书很棒，非常适合我</p>
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
                                        <form class="tg-formtheme tg-formcontactus">
                                            <fieldset>
                                                <div class="form-group tg-hastextarea">
                                                    <textarea id="comment" placeholder="你的评论"></textarea>
                                                </div>
                                                <div class="form-group ">
                                                    <a class="tg-btn tg-active" onclick="addComment(<%=book.getID()%>)" href="javascript:void(0);">提交</a>
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
                                                <%
                                                    Page<Book> recommandBooks = (Page<Book>) request.getAttribute("recommandBook");
                                                    List<Book> bookList = recommandBooks.getPageInfos();
                                                    for (Book recommandBook : bookList) {
                                                        if (recommandBook != null) {
                                                %>
                                                <div class="item">
                                                    <div class="tg-postbook">
                                                        <figure class="tg-featureimg">
                                                            <div class="tg-bookimg">
                                                                <div class="tg-frontcover"><img src="/fg/<%=recommandBook.getCover()%>" alt="image description"></div>
                                                                <div class="tg-backcover"><img src="/fg/<%=recommandBook.getCover()%>" alt="image description"></div>
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
                                                            <div class="tg-themetagbox"><span class="tg-themetag">热卖</span></div>
                                                            <div class="tg-booktitle">
                                                                <h3><a href="${pageContext.request.contextPath}/fg/book/bookDetails?bookId=<%=book.getID()%>"><%=recommandBook.getName()%></a></h3>
                                                            </div>
                                                            <span class="tg-bookwriter">By: <a href="${pageContext.request.contextPath}/fg/book/bookDetails?bookId=<%=book.getID()%>"><%=recommandBook.getAuthor()%></a></span>
                                                            <span class="tg-stars"><span></span></span>
                                                            <span class="tg-bookprice">
																		<ins><%=recommandBook.getSellingPrice()%></ins>
																		<del><%=recommandBook.getPrice()%></del>
																	</span>
                                                            <a class="tg-btn tg-btnstyletwo" href="javascript:void(0);">
                                                                <i class="fa fa-shopping-basket"></i>
                                                                <em onclick="addCar(<%=recommandBook.getID()%>)">加入购物车</em>
                                                            </a>
                                                        </div>
                                                    </div>
                                                </div>
                                                <%}}%>
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
                                <form action="${pageContext.request.contextPath}/fg/book/findBook?currentPage=1" method="post" class="tg-formtheme tg-formsearch">
                                    <div class="form-group">
                                        <button type="submit"><i class="icon-magnifier"></i></button>
                                        <input type="search" name="bookName" class="form-group" placeholder="请输入书名">
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
                                        <%
                                            List<Category> categoryList = (List<Category>) session.getAttribute("categoryList");
                                            for (Category category: categoryList) {
                                        %>
                                        <li><a href="${pageContext.request.contextPath}/fg/book/bookList?categoryId=<%=category.getId()%>&currentPage=0"><span><%= category.getName()%></span></a></li>
                                        <%}%>
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
                                                <figure><a href="javascript:void(0);"><img src="/fg/images/author/imag-03.jpg" alt="image description"></a></figure>
                                                <div class="tg-authorcontent">
                                                    <h2><a href="javascript:void(0);">Jude Morphew</a></h2>
                                                    <span>21,658 Published Books</span>
                                                </div>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="tg-author">
                                                <figure><a href="javascript:void(0);"><img src="/fg/images/author/imag-04.jpg" alt="image description"></a></figure>
                                                <div class="tg-authorcontent">
                                                    <h2><a href="javascript:void(0);">Jude Morphew</a></h2>
                                                    <span>21,658 Published Books</span>
                                                </div>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="tg-author">
                                                <figure><a href="javascript:void(0);"><img src="/fg/images/author/imag-05.jpg" alt="image description"></a></figure>
                                                <div class="tg-authorcontent">
                                                    <h2><a href="javascript:void(0);">Jude Morphew</a></h2>
                                                    <span>21,658 Published Books</span>
                                                </div>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="tg-author">
                                                <figure><a href="javascript:void(0);"><img src="/fg/images/author/imag-06.jpg" alt="image description"></a></figure>
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
<script type="text/javascript">
    function addCar() {
        $.ajax({
            url: "/fg/car/addBook?bookId=" + arguments[0],
            type: "get",
            dataType: 'JSON',
            contentType: "application/json; charset=utf-8",
            success: function (data) {
                alert("添加成功");
            },
            error: function (data) {
                alert("添加失败");
            }
        })
    }

    function addComment(bookId) {
        var comment = $("#comment").val();
        $.ajax({
            url: "/fg/book/addComment",
            type: "post",
            dataType: "JSON",
            contentType : "application/json; charset=utf-8",
            data: JSON.stringify({"comment":comment,"bookId":bookId}),
            success : function(data) {
                alert("评论成功，等待审核");
            },
            error : function() {
                alert("评论失败");
            }
        });

    }
</script>
<jsp:include page="base/foot.jsp"/>
