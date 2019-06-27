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
<%--    <link href="https://fonts.googleapis.com/css?family=Poppins:100,200,300,400,500,600,700,800,900&amp;subset=devanagari,latin-ext"--%>
<%--          rel="stylesheet">--%>
    <!-- title of site -->
    <title>登录</title>
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
<%
    String msg= request.getParameter("msg");
    if (msg !=null) {
%>
    <script type="text/javascript">
        alert('<%=msg%>');
    </script>
<%}%>
<body>
<!--[if lte IE 9]>
<p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="https://browsehappy.com/">upgrade
    your browser</a> to improve your experience and security.</p>
<![endif]-->
<!-- signin end -->
<section class="signin popup-in">
    <div class="container">
        <div class="sign-content popup-in-content">
            <div class="popup-in-txt">
                <h2>sign in</h2>
                <div class="row">
                    <div class="col-sm-12">
                        <div class="signin-form">
                            <form action="/fg/customer/login" method="post">
                                <div class="form-group">
                                    <label for="signin_form_email">电话号码</label>
                                    <input type="tel" class="form-control" id="signin_form_email" name="phone" placeholder="电话号码">
                                </div><!--/.form-group -->
                                <div class="form-group">
                                    <label for="signin_form_password">密码</label>
                                    <input type="password" class="form-control" id="signin_form_password" name="password"
                                           placeholder="请输入密码">
                                </div><!--/.form-group -->
                            </form><!--/form -->
                        </div><!--/.signin-form -->
                    </div><!--/.col -->
                </div><!--/.row -->
                <div class="row">
                    <div class="col-sm-12">
                        <div class="signin-password">
                            <div class="password-circle">
                                <div class="single-password-circle">
                                    <input type="radio" id="radio01" name="radio">
                                    <label for="radio01">
                                        <span class="round-boarder">
                                            <span class="round-boarder1"></span>
                                        </span>记住密码
                                    </label>
                                </div>
                                <div class="single-forgot-password-circle text-right">
                                    <a href="signin.html">忘记密码</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-12">
                        <div class="signin-footer">
                            <button type="button" onclick="send()" class="btn signin_btn signin_btn_two" data-toggle="modal"
                                    data-target=".signin_modal">
                                登录
                            </button>
                            <p>
                                没有账号 ?
                                <a href="/fg/register.jsp">注册</a>
                            </p>
                        </div><!--/.signin-footer -->
                    </div><!--/.col -->
                </div><!--/.row -->
            </div><!-- .popup-in-txt -->
        </div><!--/.sign-content -->
    </div><!--/.container -->
</section><!--/.signin -->
<!-- signin end -->
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