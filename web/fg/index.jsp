<%@ page import="org.apache.ibatis.annotations.Param" %>
<%@ page import="com.my_ebook.entity.Book" %>
<%@ page import="com.my_ebook.vo.Page" %>
<%@ page import="java.util.List" %>
<%@ page import="com.my_ebook.entity.Category" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="base/head.jsp"/>
<!--************************************
Inner Banner Start
*************************************-->
<div class="tg-innerbanner tg-haslayout tg-parallax tg-bginnerbanner" data-z-index="-100" data-appear-top-offset="600"
     data-parallax="scroll" data-image-src="/fg/images/parallax/bgparallax-07.jpg">
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
    <%
        Page<Book> bookPage  = (Page<Book>) request.getAttribute("books");
        List<Book> books = bookPage.getPageInfos();

        List<Category> categoryList = (List<Category>) session.getAttribute("categoryList");
    %>
    <div class="tg-sectionspace tg-haslayout">
        <div class="container">
            <div class="row">
                <div id="tg-twocolumns" class="tg-twocolumns">
                    <div class="col-xs-12 col-sm-4 col-md-4 col-lg-3 pull-left">
                        <aside id="tg-sidebar" class="tg-sidebar">
                            <div class="tg-widget tg-widgetsearch">
                                <form action="${pageContext.request.contextPath}/fg/book/findBook?currentPage=<%=bookPage.getPageCurrent()+1%>" method="post" class="tg-formtheme tg-formsearch">
                                    <div class="form-group">
                                        <button type="submit"><i class="icon-magnifier"></i></button>
                                        <input type="search" name="bookName" class="form-group" placeholder="请输入书名">
                                    </div>
                                </form>
                            </div>
                            <div class="tg-widget tg-catagories">
                                <div class="tg-widgettitle">
                                    <h3>分类</h3>
                                </div>
                                <div class="tg-widgetcontent">
                                    <ul>
                                        <%
                                            for (Category category: categoryList) {
                                        %>
                                        <li><a href="${pageContext.request.contextPath}/fg/book/bookList?categoryId=<%=category.getId()%>&currentPage=<%=bookPage.getPageCurrent()+1%>"><span><%= category.getName()%></span><em>28245</em></a></li>
                                        <%}%>
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
                                                        src="/fg/images/author/imag-03.jpg" alt="image description"></a>
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
                                                        src="/fg/images/author/imag-04.jpg" alt="image description"></a>
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
                                                        src="/fg/images/author/imag-05.jpg" alt="image description"></a>
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
                                                        src="/fg/images/author/imag-06.jpg" alt="image description"></a>
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
                                    <%
                                        for(Book book: books) {
                                            if(book != null) {
                                    %>
                                    <div class="col-xs-6 col-sm-6 col-md-4 col-lg-3">
                                        <div class="tg-postbook">
                                            <figure class="tg-featureimg">
                                                <div class="tg-bookimg">
                                                    <div class="tg-frontcover"><img src="/fg/<%=book.getCover()%>"
                                                                                    alt="image description"></div>
                                                    <div class="tg-backcover"><img src="/fg/<%=book.getCover()%>"
                                                                                   alt="image description"></div>
                                                </div>
                                                <a class="tg-btnaddtowishlist" href="javascript:void(0);">
                                                    <i class="icon-heart"></i>
                                                    <span>收藏</span>
                                                </a>
                                            </figure>
                                            <div class="tg-postbookcontent">
                                                <ul class="tg-bookscategories">
                                                    <li><a href="javascript:void(0);"><%=book.getCategory().getName()%></a></li>
                                                </ul>
                                                <div class="tg-themetagbox"><span class="tg-themetag">热卖</span></div>
                                                <div class="tg-booktitle">
                                                    <h3><a href="bookdetail.jsp"><%=book.getName()%></a></h3>
                                                </div>
                                                <span class="tg-bookwriter">作者: <a href="javascript:void(0);"><%=book.getAuthor()%></a></span>
                                                <span class="tg-stars"><span></span></span>
                                                <span class="tg-bookprice">
                                                    <ins><%=book.getPrice()%></ins>
                                                    <del><%=book.getSellingPrice()%></del>
                                                </span>
                                                <a class="tg-btn tg-btnstyletwo" href="javascript:void(0);">
                                                    <i class="fa fa-shopping-basket"></i>
                                                    <a href=/fg/car/addBook/<%=book.getID()%>><em>加入购物车</em></a>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                    <%}}%>
                                </div>
                                <div align="center">
                                    <ul class="pager">
                                        <%
                                            int strategy = (int) request.getAttribute("strategy");
                                            if (strategy == 0) {
                                        %>
                                        <li><a href="">&laquo;上一页</a></li>
                                        <li><a href="">下一页&raquo;</a></li>
                                        <%
                                            }else {
                                        %>
                                        <%
                                            }
                                        %>
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
