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
    String msg = (String) request.getAttribute("msg");
    if (msg != null) {
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
                            <form id="regist_form" action="/fg/customer/register"
                                  method="post">
                                <div class="form-group">
                                    <label for="name">姓名</label>
                                    <input type="text" class="form-control" name="name" id="name"
                                           placeholder="姓名">
                                </div><!--/.form-group -->
                                <div class="form-group">
                                    <label for="nickname">昵称</label>
                                    <input type="text" class="form-control" name="nickname" id="nickname"
                                           placeholder="昵称">
                                </div><!--/.form-group -->
                                <div class="form-group">
                                    <label for="phone">电话号码</label>
                                    <input type="tel" class="form-control" name="phone" id="phone"
                                           placeholder="输入你的电话号码">
                                </div><!--/.form-group -->
                                <div class="form-group">
                                    <label for="password">密码</label>
                                    <input type="password" class="form-control" name="password" id="password"
                                           placeholder="输入你的密码">
                                </div><!--/.form-group -->
                                <div class="form-group">
                                    <label for="repassword">密码</label>
                                    <input type="password" class="form-control" name="repassword" id="repassword"
                                           placeholder="输入你的密码">
                                    <label id="msg"></label>
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
        if (checkInput()) {
            document.getElementsByTagName("form")[0].submit();
        }

    }
    var phone_regex = /^1(3|4|5|7|8)\d{9}$/;
    /*检查表单输入是否已经注册*/
    function checkInput() {
        var name = $("#name").val();
        if (name == "") {
            alert("姓名不能为空")
            return false;
        }
        var nickname = $("#nickname").val();
        if (nickname == "" ) {
            alert("昵称不能为空" );
            return false;
        }
        var phone = $("#phone").val();
        if (phone == "") {
            alert("手机号能为空" );
            return false;
        }else if (!(phone_regex.test(phone))) {
            alert("手机号格式错误");
            return false;
        }

        var password = $("#password").val();
        var repassword = $("#repassword").val();
        if (password == "") {
            alert("密码不能为空");
            return false;
        }else if (password != repassword) {
            alert("两次密码输入不一致");
            return false;
        }

        return true;
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
