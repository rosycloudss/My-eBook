<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="base/head.jsp"/>
<div class="tg-innerbanner tg-haslayout tg-parallax tg-bginnerbanner" data-z-index="-100" data-appear-top-offset="600" data-parallax="scroll" data-image-src="images/parallax/bgparallax-07.jpg">
    <div class="container">
        <div class="row">
            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                <div class="tg-innerbannercontent">
                    <h1>修改密码</h1>
                </div>
            </div>
        </div>
    </div>
</div>
<main id="tg-main" class="tg-main tg-haslayout">
    <div class="tg-sectionspace tg-haslayout">
        <div class="container">
            <div class="row">
                <div class="tg-contactus">
                    <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
                        <form class="tg-formtheme tg-formcontactus">
                                <div class="form-group">
                                    <input style="width: 250px" type="password" id="oldpwd" name="oldpwd" class="form-control"  placeholder="旧密码">
                                </div>
                                <div class="form-group">
                                    <input style="width: 250px" id="newpwd" type="password" name="newpwd" class="form-control" placeholder="新密码">
                                </div>
                                <div class="form-group">
                                    <input style="width: 250px" id="renewpwd" type="password" name="renewpwd" class="form-control" placeholder="确认密码">
                                </div>
                                <div class="form-group">
                                    <button id="btn" onclick="modify()" type="button" class="tg-btn tg-active">确认修改</button>
                                </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

</main>
<script>
    function modify() {
        var oldpwd = $("#oldpwd").val();
        var newpwd = $("#newpwd").val();
        var renewpwd = $("#renewpwd").val();
        if(oldpwd==="" || newpwd==="" || renewpwd===""){
            alert("所输项目不可为空");
            return false;
        }
        if (newpwd === renewpwd) {
            $.ajax({
                url: "http://localhost:8080/fg/customer/changePassword/oldpwd/newpwd",
                type: "get",
                dataType: 'JSON',
                contentType: "application/json; charset=utf-8",
                success: function (data) {
                    if(data.result === 1){
                        alert("修改成功");
                    }else{
                        alert("修改失败");
                    }
                },
                error: function (data) {
                    alert("修改失败");
                }
            })
        }else{
            alert("新密码与旧密码不一致，请重新输入");
        }
    }
</script>
<jsp:include page="base/foot.jsp"/>