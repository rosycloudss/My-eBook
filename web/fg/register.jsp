<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html>
<head>
    <!-- meta data -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <!--font-family-->
    <link href="https://fonts.googleapis.com/css?family=Poppins:100,200,300,400,500,600,700,800,900&amp;subset=devanagari,latin-ext"
          rel="stylesheet">
    <!-- title of site -->
    <title>注册</title>
    <!-- For favicon png -->
    <link rel="shortcut icon" type="image/icon" href="/fg/assets/logo/favicon.png"/>
    <!--font-awesome.min.css-->
    <link rel="stylesheet" href="/fg/assets/css/font-awesome.min.css">
    <!--animate.css-->
    <link rel="stylesheet" href="/fg/assets/css/animate.css">
    <!--bootstrap.min.css-->
    <link rel="stylesheet" href="/fg/assets/css/bootstrap.min.css">
    <!-- bootsnav -->
    <link rel="stylesheet" href="/fg/assets/css/bootsnav.css">
    <!--style.css-->
    <link rel="stylesheet" href="/fg/assets/css/style.css">
    <!--responsive.css-->
    <link rel="stylesheet" href="/fg/assets/css/responsive.css">
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>

<%
    String msg= request.getParameter("msg");
    if (msg !=null) {
%>
    <script type="text/javascript">
        alert('<%=msg%>');
    </script>
<%}%>

<section class="signin signup popup-in pop-up">
    <div class="container">
        <div class="sign-content popup-in-content">
            <div class="popup-in-txt">
                <h2>注册</h2>
                <div class="signin-form">
                    <div class=" ">
                        <div class=" ">
                            <form action="/fg/customer/register" method="post">
                                <div class="form-group">
                                    <label for="signin_form">姓名</label>
                                    <input type="text" class="form-control" name="name" id="signin_form" placeholder="姓名">
                                </div><!--/.form-group -->
                                <div class="form-group">
                                    <label for="signin_form">昵称</label>
                                    <input type="text" class="form-control" name="nickname" id="signin_form" placeholder="昵称">
                                </div><!--/.form-group -->
                                <div class="form-group">
                                    <label for="signin_form">电话号码</label>
                                    <input type="tel" class="form-control" name="phone" id="signin_form"
                                           placeholder="输入你的电话号码">
                                </div><!--/.form-group -->
                                <div class="form-group">
                                    <label for="signin_form">密码</label>
                                    <input type="password" class="form-control" name="password" id="signin_form"
                                           placeholder="输入你的密码">
                                </div><!--/.form-group -->
                            </form><!--/form -->
                        </div><!--/.col -->
                    </div><!--/.row -->
                </div><!--/.signin-form -->
                <div class="signin-password">
                    <div class="password-circle">
                        <div class="single-password-circle">
                            <input type="radio" id="radio01" name="radio">
                            <label for="radio01">
											<span class="round-boarder">
												<span class="round-boarder1"></span>
											</span>记住密码
                            </label>
                        </div><!--/.single-password-circle-->
                        <div class="single-forgot-password-circle text-right">
                            <a href="login.jsp">忘记账号或密码</a>
                        </div><!--/.single-password-circle-->
                    </div><!--/.password-circle-->
                </div><!--/.signin-password -->
                <div class="signin-footer">
                    <button type="button" onclick="send()" class="btn signin_btn signin_btn_two">
                       注册
                    </button>
                    <p>
                        已经注册 ?
                        <a href="login.jsp">登录</a>
                    </p>
                </div><!--/.signin-footer -->
            </div><!-- .popup-in-txt -->
        </div><!--/.sign-content -->
    </div><!--/.container -->
</section><!--/.signin -->
<!-- signin end -->
<!--footer copyright start -->
<footer class="footer-copyright">
    <div id="scroll-Top">
        <i class="fa fa-angle-double-up return-to-top" id="" data-toggle="tooltip" data-placement="top"
           title="" data-original-title="Back to Top" aria-hidden="true"></i>
    </div><!--/.scroll-Top-->
</footer><!--/.hm-footer-copyright-->
<script type="text/javascript">
    function send() {
        document.getElementsByTagName("form")[0].submit();
    }
</script>
<!-- Include all js compiled plugins (below), or include individual files as needed -->
<script src="/fg/assets/js/jquery.js"></script>
<!--modernizr.min.js-->
<script src="https://cdnjs.cloudflare.com/ajax/libs/modernizr/2.8.3/modernizr.min.js"></script>
<!--bootstrap.min.js-->
<script src="/fg/assets/js/bootstrap.min.js"></script>
<!-- bootsnav js -->
<script src="/fg/assets/js/bootsnav.js"></script>
<!-- jquery.sticky.js -->
<script src="/fg/assets/js/jquery.sticky.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.4.1/jquery.easing.min.js"></script>
<!--Custom JS-->
<script src="/fg/assets/js/custom.js"></script>
</body>
</html>
