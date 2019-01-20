<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>MyShop | 登录</title>
    <link rel="stylesheet" href="/static/css/index.css"/>
    <link rel="stylesheet" href="/static/css/ziy.css"/>
</head>
<body>
<!--dengl-->
<div class="beij_center">
    <div class="dengl_logo">
        <a href="/index"><img src="/static/images/logo_1.png"></a>
        <h1>欢迎登录</h1>
    </div>
</div>
<div class="dengl_beij">

    <div class="banner_xin">
        <img src="/static/images/ss.jpg">
    </div>
    <div class="beij_center dengl_jvz">
        <div class="login_form">
            <div class="login_tab">
                <h2>欢迎登录</h2>
                <div class="dengl_erwm">
                    <a href="#"><img src="/static/images/er_wm.png"></a>
                    <div class="tanc_erwm_kuang">
                        <img src="/static/images/mb_wangid.png">
                        <div class="qrcode_panel">
                            <ul>
                                <li class="fore1">
                                    <span>打开</span>
                                    <a href="#" target="_blank"> <span class="red">手机MyShop</span></a>
                                </li>
                                <li>扫描二维码</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <div class="kengl_kuang">
                <c:if test="${baseResult != null}">
                    <div class="red">${baseResult.message}</div>
                </c:if>

                <form action="/login" method="post">
                    <div class="txt_kuang">
                        <input id="username" name="username" type="text" class="itxt" placeholder="邮箱/用户名/已验证手机">
                        <input id="password" name="password" type="password" class="itxt" placeholder="密码">
                        <input id="verification" name="verification" type="text" class="itxt" placeholder="验证码" style="width: 119px;">
                        <img id="validateCode" src="/verification" style="float: right; padding-right: 23px; cursor: pointer;" title="看不清？换一张" />
                    </div>
                    <div class="remember">
                        <div class="fl">
                            <input type="checkbox">
                            <label>自动登录</label>
                        </div>
                        <div class="fr">
                            <a href="#" class="fl" target="_blank" title="忘记密码">忘记密码?</a>
                        </div>
                    </div>
                    <input type="submit" tabindex="5" value="登 录" class="btnnuw">
                </form>
            </div>
            <div class="corp_login">
                <div class="mingb_shoq"><a href="#">名榜授权登录！</a></div>
                <div class="regist_link"><a href="/register" target="_blank"><b></b>立即注册</a></div>
            </div>
        </div>
    </div>
</div>


<div class="jianj_dib">
    <div class="beia_hao">
        <p>京ICP备：123456789号 </p>
        <p class="gonga_bei">京公网安备：123456789号</p>
    </div>
</div>

<script src="/static/js/jquery-1.11.3.min.js"></script>
<script>
    $(function () {
        // 刷新验证码
        $("#validateCode").bind("click", function () {
            $(this).hide().attr('src', '/verification?' + Math.random()).fadeIn();
        });
    });
</script>
</body>
</html>
