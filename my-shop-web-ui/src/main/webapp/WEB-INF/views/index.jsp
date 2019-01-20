<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <title>MyShop | 首页</title>
    <link rel="stylesheet" href="/static/css/index.css" />

    <script src="/static/js/jquery-1.11.3.min.js"></script>
    <script src="/static/js/jquery.SuperSlide.2.1.1.source.js"></script>
    <script src="/static/js/index.js"></script>
</head>
<body>
<!--侧边-->
<div class="jdm-toolbar-wrap J-wrap">
    <div class="jdm-toolbar J-toolbar">
        <div class="jdm-toolbar-panels J-panel"></div>
        <div class="jdm-toolbar-tabs J-tab">
            <div data-type="bar" class="J-trigger jdm-toolbar-tab jdm-tbar-tab-ger">
                <i class="tab-ico"></i>
                <em class="tab-text">购物车</em>
            </div>
            <div data-type="bar" class="J-trigger jdm-toolbar-tab jdm-tbar-tab-cart">
                <i class="tab-ico"></i>
                <em class="tab-text">购物车</em>
            </div>
            <div data-type="bar" clstag="h|keycount|cebianlan_h_follow|btn" class="J-trigger jdm-toolbar-tab jdm-tbar-tab-follow" data-name="follow" data-login="true">
                <i class="tab-ico"></i>
                <em class="tab-text">我的关注</em>
            </div>
        </div>
        <div class="J-trigger jdm-toolbar-tab jdm-tbar-tab-message" data-name="message"><a target="_blank" href="#">
            <i class="tab-ico"></i>
            <em class="tab-text">我的消息
            </em></a>
        </div>
    </div>
    <div class="jdm-toolbar-footer">
        <div data-type="link" id="#top" class="J-trigger jdm-toolbar-tab jdm-tbar-tab-top">
            <a href="#" clstag="h|keycount|cebianlan_h|top">
                <i class="tab-ico"></i>
                <em class="tab-text">顶部</em>
            </a>
        </div>
    </div>
    <div class="jdm-toolbar-mini"></div>
    <div id="J-toolbar-load-hook" clstag="h|keycount|cebianlan_h|load"></div>
</div>

<!--头部-->
<div id="header">
    <div class="header-box">
        <h3 class="huany">MyShop本地购物商城欢迎您的到来！</h3>
        <ul class="header-left">
            <li class="bj">
                <a class="dib" href="#">广州市</a>
                <i class="ci-leftll">
                    <s class="jt">◇</s>
                </i>
                <div class="bj-1">
                    <h3>热门城市：</h3>
                    <a href="">北京</a><a href="">上海</a><a href="">天津</a><a href="">重庆</a><a href="">河北</a><a href="">山西</a><a href="">河南</a><a href="">辽宁</a><a href="">吉林</a><a href="">黑龙江</a><a href="">浙江</a><a href="">江苏</a><a href="">山东</a><a href="">安徽</a><a href="">内蒙古</a><a href="">湖北</a><a href="">湖南</a><a href="">广东</a><a href="">广西</a><a href="">江西</a><a href="">四川</a><a href="">海南</a><a href="">贵州</a><a href="">云南</a><a href="">西藏</a><a href="">陕西</a><a href="">甘肃</a><a href="">青海</a><a href="">宁夏</a><a href="">新疆</a><a href="">台湾</a><a href="">香港</a><a href="">澳门</a><a href="">海外</a><a href="qieh_cs.html">全部+</a>
                </div>
            </li>
        </ul>
        <ul class="header-right">
            <c:if test="${tbUser != null}">
                <li class="denglu">Hi~ ${tbUser.username} 欢迎回来 <a class="red" href="/logout">[注销]</a></li>
            </c:if>
            <c:if test="${tbUser == null}">
                <li class="denglu">Hi~<a class="red" href="/login">请登录!</a> <a href="/register">[免费注册]</a></li>
            </c:if>
            <li class="shu"></li>
            <li class="denglu"><a class="ing_ps" href="#">我的收藏</a></li>
            <li class="shu"></li>
            <li class="denglu"><a class="ing_ps ps1" href="#">申请入驻</a></li>
            <li class="shu"></li>
            <li class="denglu"><a class="ing_ps ps2" href="#">客户服务</a></li>
            <li class="shu"></li>
            <li class="shouji bj">
                <a class="ing_ps ps3" href="#">手机MyShop</a>
                <i class="ci-right ">
                    <s class="jt">◇</s>
                </i>
                <div class="shouji1">
                    <img src="/static/images/mb_wangid.png" class="shouji4">
                    <div class="shouji2">
                        <p>MyShop客户端</p>
                        <p class="red">首次下单满79元，送79元</p>
                    </div>
                    <div class="yi">
                        <img src="/static/images/mb_wangid.png" class="shouji4">
                        <div class="er">
                            <p>MyShop微信公众号</p>
                            <p class="red">关注MyShop公众号的积分，换大礼</p>
                        </div>
                    </div>
                </div>
            </li>
        </ul>
    </div>
</div>

<!--搜索栏-->
<div class="toub_beij">
    <div class="logo"><a href="#"><img src="/static/images/logo.png"></a></div>
    <div class="search">
        <input type="text" value="家电一折抢" class="text" id="textt">
        <button class="button">搜索</button>
    </div>
    <div class="right">
        <i class="gw-left"></i>
        <i class="gw-right"></i>
        <div class="sc">
            <i class="gw-count">0</i>
            <i class="sd"></i>
        </div>
        <a href="gouw_che.html">我的购物车</a>
        <div class="dorpdown-layer">
            <ul>
                <li class="meiyou">
                    <img src="/static/images/settleup-nogoods.png">
                    <span>购物车中还没有商品，赶紧选购吧！</span>
                </li>
            </ul>
        </div>
    </div>
    <div class="hotwords">
        <a class="biaoti">热门搜索：</a>
        <a href="#">新款连衣裙</a>
        <a href="#">四件套</a>
        <a href="#">潮流T恤</a>
        <a href="#">时尚女鞋</a>
        <a href="#">乐1</a>
        <a href="#">特步女鞋</a>
        <a href="#">威士忌</a>
    </div>
</div>

<!--轮播图上方导航栏  一栏-->
<div id="navv">
    <div class="focus">
        <div class="focus-a">
            <div class="fouc-font"><a href="">全部商品分类</a> </div>
        </div>
        <div class="focus-b">
            <ul>
                <li><a href="#">商城首页</a></li>
                <li><a href="#">本地生活</a></li>
                <li><a href="#">团购专区</a></li>
                <li><a href="#">积分商城 </a></li>
                <li><a href="#">分销系统</a></li>
                <li><a href="#">办公耗材</a></li>
                <li><a href="#">饰品礼品</a></li>
                <li><a href="#">休闲娱乐</a></li>
            </ul>
        </div>

        <!--左边导航-->
        <div class="dd-inner">
            <div class="font-item">
                <div class="item fore1">
                    <h3>
                        <a class="da_zhu" href="#">办公家具</a>
                        <p>
                            <a href="#">五金</a>
                            <a href="#">家具</a>
                            <a href="#">家装</a>
                            <a href="#">厨具</a>
                        </p>
                    </h3>
                    <i>></i>
                </div>
                <div class="font-item1">
                    <div class="font-lefty">
                        <dl class="fore1">
                            <dt><a href="">大家电<i>></i></a></dt>
                            <dd>
                                <a href="">平板电视</a><a href="">空调</a><a href="">冰箱</a><a href="">洗衣机</a><a href="">家庭影院</a><a href="">DVD</a><a href="">迷你音响</a>
                                <a href="">烟机/灶具</a><a href="">热水器</a><a href="">消毒具/洗碗柜</a><a href="">冰柜/冰吧</a><a href="">酒柜</a><a href="">家电配件</a>
                            </dd>
                        </dl>
                        <dl class="fore1">
                            <dt><a href="">生活电器<i>></i></a></dt>
                            <dd>
                                <a href="">取暖电器</a><a href="">净化器</a><a href="">扫地机器人</a><a href="">吸尘器</a><a href="">加湿器</a><a href="">挂烫机/熨斗</a><a href="">电风扇</a>
                                <a href="">冷风扇</a><a href="">插座</a><a href="">电话机</a><a href="">净水器</a><a href="">饮水机</a>
                                <a href="">除湿机</a><a href="">干衣机清洁机</a><a href="">收录/音机</a><a href="">生活电器配件</a><a href="">其它生活电器</a>
                            </dd>
                        </dl>
                        <dl class="fore1">
                            <dt><a href="">厨房电器<i>></i></a></dt>
                            <dd>
                                <a href="">电压力锅</a><a href="">豆浆机</a><a href="">面包机</a><a href="">咖啡机</a><a href="">微波炉料理/榨汁机</a><a href="">电烤箱</a><a href="">电磁炉</a>
                                <a href="">电饼铛/烧烤盘</a><a href="">煮蛋器酸奶机</a><a href="">电水壶/热水瓶</a><a href="">电炖锅</a><a href="">多用途锅</a><a href="">果蔬解毒机</a><a href="">养生壶/煎药壶</a><a href="">其它厨房电器</a>
                            </dd>
                        </dl>
                        <dl class="fore1">
                            <dt><a href="">个护健康<i>></i></a></dt>
                            <dd>
                                <a href="">剃须刀剃/脱毛器</a><a href="">口腔护理</a><a href="">电吹风</a><a href="">美容器</a><a href="">理发器卷/直发器</a><a href="">按摩椅</a><a href="">按摩器</a>
                                <a href="">足浴盆</a><a href="">血压计</a><a href="">健康秤/厨房秤</a><a href="">血糖仪</a><a href="">体温计</a><a href="">计步器/脂肪检测仪</a><a href="">脂肪检测仪其它健康电器</a>
                            </dd>
                        </dl>
                        <dl class="fore1">
                            <dt><a href="">五金家装<i>></i></a></dt>
                            <dd>
                                <a href="">平板电视</a><a href="">空调</a><a href="">冰箱</a><a href="">洗衣机</a><a href="">家庭影院</a><a href="">DVD</a><a href="">迷你音响</a><a href="">烟机/灶具</a>
                                <a href="">热水器</a><a href="">消毒具/洗碗柜</a><a href="">冰柜/冰吧</a><a href="">酒柜</a><a href="">家电配件</a>
                            </dd>
                        </dl>
                    </div>
                    <div class="font-right">
                        <div>
                            <a href="#">
                                <img src="/static/images/562f4971Na5379aba.jpg">
                            </a>
                            <a href="#">
                                <img src="/static/images/54d9eef9N5bb8d27f.jpg">
                            </a>
                            <a href="#">
                                <img src="/static/images/54d9ef02N99d26435.jpg">
                            </a>
                            <a href="#">
                                <img src="/static/images/54d9ef10Nd206a236.jpg">
                            </a>
                            <a href="#">
                                <img src="/static/images/54d9ef28N00328d44.jpg">
                            </a>
                            <a href="#">
                                <img src="/static/images/54d9ef34N7cc61f4c.jpg">
                            </a>
                            <a href="#">
                                <img src="/static/images/54d9ef3eN99aef1f0.jpg">
                            </a>
                            <a href="#">
                                <img src="/static/images/54d9ef4cN4fe57f9b.jpg">
                            </a>
                        </div>
                    </div>
                    <div class="font-righty">
                        <a href="#">
                            <img src="/static/images/5673a854N10856704.jpg">
                        </a>
                        <a href="#">
                            <img src="/static/images/56a0376aN7de1bdcf.jpg">
                        </a>
                    </div>
                </div>
            </div>
            <div class="fore-2">
                <div class="item fore1">
                    <h3>
                        <a class="da_zhu" href="#">电脑数码</a>
                        <p>
                            <a href="#">手机</a>
                            <a href="#">电脑</a>
                            <a href="#">办公</a>
                            <a href="#">钟表</a>
                        </p>
                    </h3>
                    <i>></i>
                </div>
                <div class="font-item1">
                    <div class="font-lefty">
                        <dl class="fore1">
                            <dt><a href="">电脑数码<i>></i></a></dt>
                            <dd>
                                <a href="">平板电视</a><a href="">空调</a><a href="">冰箱</a><a href="">洗衣机</a><a href="">家庭影院</a><a href="">DVD</a><a href="">迷你音响</a>
                                <a href="">烟机/灶具</a><a href="">热水器</a><a href="">消毒具/洗碗柜</a><a href="">冰柜/冰吧</a><a href="">酒柜</a><a href="">家电配件</a>
                            </dd>
                        </dl>
                    </div>
                    <div class="font-right">
                        <div>
                            <a href="#">
                                <img src="/static/images/562f4971Na5379aba.jpg">
                            </a>
                            <a href="#">
                                <img src="/static/images/54d9eef9N5bb8d27f.jpg">
                            </a>
                            <a href="#">
                                <img src="/static/images/54d9ef02N99d26435.jpg">
                            </a>
                            <a href="#">
                                <img src="/static/images/54d9ef10Nd206a236.jpg">
                            </a>
                            <a href="#">
                                <img src="/static/images/54d9ef28N00328d44.jpg">
                            </a>
                            <a href="#">
                                <img src="/static/images/54d9ef34N7cc61f4c.jpg">
                            </a>
                            <a href="#">
                                <img src="/static/images/54d9ef3eN99aef1f0.jpg">
                            </a>
                            <a href="#">
                                <img src="/static/images/54d9ef4cN4fe57f9b.jpg">
                            </a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="fore-3">
                <div class="item fore1">
                    <h3>
                        <a class="da_zhu" href="#">服饰鞋帽</a>
                        <p>
                            <a href="#">男装</a>
                            <a href="#">女装</a>
                            <a href="#">童装</a>
                            <a href="#">内衣</a>
                        </p>
                    </h3>
                    <i>></i>
                </div>
                <div class="font-item1">
                    <div class="font-lefty">
                        <dl class="fore1">
                            <dt><a href="">服饰鞋帽<i>></i></a></dt>
                            <dd>
                                <a href="">平板电视</a><a href="">空调</a><a href="">冰箱</a><a href="">洗衣机</a><a href="">家庭影院</a><a href="">DVD</a><a href="">迷你音响</a>
                                <a href="">烟机/灶具</a><a href="">热水器</a><a href="">消毒具/洗碗柜</a><a href="">冰柜/冰吧</a><a href="">酒柜</a><a href="">家电配件</a>
                            </dd>
                        </dl>
                    </div>
                    <div class="font-right">
                        <div>
                            <a href="#">
                                <img src="/static/images/562f4971Na5379aba.jpg">
                            </a>
                            <a href="#">
                                <img src="/static/images/54d9eef9N5bb8d27f.jpg">
                            </a>
                            <a href="#">
                                <img src="/static/images/54d9ef02N99d26435.jpg">
                            </a>
                            <a href="#">
                                <img src="/static/images/54d9ef10Nd206a236.jpg">
                            </a>
                            <a href="#">
                                <img src="/static/images/54d9ef28N00328d44.jpg">
                            </a>
                            <a href="#">
                                <img src="/static/images/54d9ef34N7cc61f4c.jpg">
                            </a>
                            <a href="#">
                                <img src="/static/images/54d9ef3eN99aef1f0.jpg">
                            </a>
                            <a href="#">
                                <img src="/static/images/54d9ef4cN4fe57f9b.jpg">
                            </a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="fore-4">
                <div class="item fore1">
                    <h3>
                        <a class="da_zhu" href="#">汽车用品</a>
                        <p>
                            <a href="#">汽车配件</a>
                            <a href="#">礼品</a>
                            <a href="#">家政服务</a>
                        </p>
                    </h3>
                    <i>></i>
                </div>
                <div class="font-item1">
                    <div class="font-lefty">
                        <dl class="fore1">
                            <dt><a href="">汽车用品<i>></i></a></dt>
                            <dd>
                                <a href="">平板电视</a><a href="">空调</a><a href="">冰箱</a><a href="">洗衣机</a><a href="">家庭影院</a><a href="">DVD</a><a href="">迷你音响</a>
                                <a href="">烟机/灶具</a><a href="">热水器</a><a href="">消毒具/洗碗柜</a><a href="">冰柜/冰吧</a><a href="">酒柜</a><a href="">家电配件</a>
                            </dd>
                        </dl>
                    </div>
                    <div class="font-right">
                        <div>
                            <a href="#">
                                <img src="/static/images/562f4971Na5379aba.jpg">
                            </a>
                            <a href="#">
                                <img src="/static/images/54d9eef9N5bb8d27f.jpg">
                            </a>
                            <a href="#">
                                <img src="/static/images/54d9ef02N99d26435.jpg">
                            </a>
                            <a href="#">
                                <img src="/static/images/54d9ef10Nd206a236.jpg">
                            </a>
                            <a href="#">
                                <img src="/static/images/54d9ef28N00328d44.jpg">
                            </a>
                            <a href="#">
                                <img src="/static/images/54d9ef34N7cc61f4c.jpg">
                            </a>
                            <a href="#">
                                <img src="/static/images/54d9ef3eN99aef1f0.jpg">
                            </a>
                            <a href="#">
                                <img src="/static/images/54d9ef4cN4fe57f9b.jpg">
                            </a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="fore-5">
                <div class="item fore1">
                    <h3>
                        <a class="da_zhu" href="#">食品保健</a>
                        <p>
                            <a href="#">美食</a>
                            <a href="#">酒类</a>
                            <a href="#">生鲜</a>
                            <a href="#">特产</a>
                        </p>
                    </h3>
                    <i>></i>
                </div>
                <div class="font-item1">
                    <div class="font-lefty">
                        <dl class="fore1">
                            <dt><a href="">食品保健<i>></i></a></dt>
                            <dd>
                                <a href="">食品保健</a><a href="">食品保健</a><a href="">冰箱</a><a href="">洗衣机</a><a href="">家庭影院</a><a href="">DVD</a><a href="">迷你音响</a>
                                <a href="">烟机/食品保健</a><a href="">热水器</a><a href="">消毒具/洗碗柜</a><a href="">冰柜/冰吧</a><a href="">酒柜</a><a href="">家电配件</a>
                            </dd>
                        </dl>
                    </div>
                    <div class="font-right">
                        <div>
                            <a href="#">
                                <img src="/static/images/562f4971Na5379aba.jpg">
                            </a>
                            <a href="#">
                                <img src="/static/images/54d9eef9N5bb8d27f.jpg">
                            </a>
                            <a href="#">
                                <img src="/static/images/54d9ef02N99d26435.jpg">
                            </a>
                            <a href="#">
                                <img src="/static/images/54d9ef10Nd206a236.jpg">
                            </a>
                            <a href="#">
                                <img src="/static/images/54d9ef28N00328d44.jpg">
                            </a>
                            <a href="#">
                                <img src="/static/images/54d9ef34N7cc61f4c.jpg">
                            </a>
                            <a href="#">
                                <img src="/static/images/54d9ef3eN99aef1f0.jpg">
                            </a>
                            <a href="#">
                                <img src="/static/images/54d9ef4cN4fe57f9b.jpg">
                            </a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="fore-6">
                <div class="item fore1">
                    <h3>
                        <a class="da_zhu" href="#">美酒鲜花</a>
                        <p>
                            <a href="#">手机</a>
                            <a href="#">电脑</a>
                            <a href="#">办公</a>
                            <a href="#">钟表</a>
                        </p>
                    </h3>
                    <i>></i>
                </div>
                <div class="font-item1">
                    <div class="font-lefty">
                        <dl class="fore1">
                            <dt><a href="">美酒鲜花<i>></i></a></dt>
                            <dd>
                                <a href="">平板电视</a><a href="">空调</a><a href="">冰箱</a><a href="">洗衣机</a><a href="">家庭影院</a><a href="">DVD</a><a href="">迷你音响</a>
                                <a href="">烟机/灶具</a><a href="">热水器</a><a href="">消毒具/洗碗柜</a><a href="">冰柜/冰吧</a><a href="">酒柜</a><a href="">家电配件</a>
                            </dd>
                        </dl>
                    </div>
                    <div class="font-right">
                        <div>
                            <a href="#">
                                <img src="/static/images/562f4971Na5379aba.jpg">
                            </a>
                            <a href="#">
                                <img src="/static/images/54d9eef9N5bb8d27f.jpg">
                            </a>
                            <a href="#">
                                <img src="/static/images/54d9ef02N99d26435.jpg">
                            </a>
                            <a href="#">
                                <img src="/static/images/54d9ef10Nd206a236.jpg">
                            </a>
                            <a href="#">
                                <img src="/static/images/54d9ef28N00328d44.jpg">
                            </a>
                            <a href="#">
                                <img src="/static/images/54d9ef34N7cc61f4c.jpg">
                            </a>
                            <a href="#">
                                <img src="/static/images/54d9ef3eN99aef1f0.jpg">
                            </a>
                            <a href="#">
                                <img src="/static/images/54d9ef4cN4fe57f9b.jpg">
                            </a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="fore-7">
                <div class="item fore1">
                    <h3>
                        <a class="da_zhu" href="#">图书</a>
                        <p>
                            <a href="#">图书</a>
                            <a href="#">图书</a>
                            <a href="#">办公</a>
                            <a href="#">电子书</a>
                        </p>
                    </h3>
                    <i>></i>
                </div>
                <div class="font-item1">
                    <div class="font-lefty">
                        <dl class="fore1">
                            <dt><a href="">图书<i>></i></a></dt>
                            <dd>
                                <a href="">平板电视</a><a href="">空调</a><a href="">冰箱</a><a href="">洗衣机</a><a href="">家庭影院</a><a href="">DVD</a><a href="">迷你音响</a>
                                <a href="">烟机/灶具</a><a href="">热水器</a><a href="">消毒具/洗碗柜</a><a href="">冰柜/冰吧</a><a href="">酒柜</a><a href="">家电配件</a>
                            </dd>
                        </dl>
                    </div>
                    <div class="font-right">
                        <div>
                            <a href="#">
                                <img src="/static/images/562f4971Na5379aba.jpg">
                            </a>
                            <a href="#">
                                <img src="/static/images/54d9eef9N5bb8d27f.jpg">
                            </a>
                            <a href="#">
                                <img src="/static/images/54d9ef02N99d26435.jpg">
                            </a>
                            <a href="#">
                                <img src="/static/images/54d9ef10Nd206a236.jpg">
                            </a>
                            <a href="#">
                                <img src="/static/images/54d9ef28N00328d44.jpg">
                            </a>
                            <a href="#">
                                <img src="/static/images/54d9ef34N7cc61f4c.jpg">
                            </a>
                            <a href="#">
                                <img src="/static/images/54d9ef3eN99aef1f0.jpg">
                            </a>
                            <a href="#">
                                <img src="/static/images/54d9ef4cN4fe57f9b.jpg">
                            </a>
                        </div>
                    </div>
                </div>
            </div>
            <!---->
        </div>
    </div>
</div>

<!--轮播图-->
<div id="lunbo">
    <ul id="one">
        <c:forEach items="${ppt}" var="ppt">
            <li><a href="#"><img src="${ppt.pic}" alt="${ppt.title}" title="${ppt.title}"></a></li>
        </c:forEach>
    </ul>
    <ul id="two">
        <c:forEach items="${ppt}" var="ppt" varStatus="status">
            <li class="${status.count == 1 ? "on" : ""}">${status.count}</li>
        </c:forEach>
    </ul>
    <!--轮播图左右箭头-->
    <div class="slider-page">
        <a href="javascript:void(0)" id="left"><</a>
        <a href="javascript:void(0)" id="right">></a>
    </div>
</div>

<!--内容一开始了-->
<div class="bend_beij">
    <!--本地生活-->
    <div class="bend_dhengh">
        <div class="neir_biaot">
            <p>本地生活</p>
            <p class="yingw">Local life</p>
        </div>
        <div class="jiank_meis">
            <div class="kuang_1">
                <a href="#">
                    <img src="/static/images/jiank_meis.jpg">
                    <div class="jiank_meis_wenz">
                        <p>健康美食</p>
                        <span>让生活&nbsp;&nbsp;更健康&nbsp;&nbsp;更美味&nbsp;&nbsp;更舒心</span>
                    </div>
                </a>
            </div>
            <div class="dianq_qvy">
                <div class="shiq">
                    <h2>全部区域</h2>
                    <ul>
                        <li><a href="#">云岩区</a></li>
                        <li><a href="#">南明区</a></li>
                        <li><a href="#">白云区</a></li>
                        <li><a href="#">乌当区</a></li>
                        <li><a href="#">花溪区</a></li>
                        <li><a href="#">清镇市</a></li>
                        <li><a href="#">开阳县</a></li>
                        <li><a href="#" class="hide">开阳县</a></li>
                        <li><a href="#" class="hide">开阳县</a></li>
                        <li id="show">更多 </li>
                    </ul>
                </div>
                <div class="ktv_jiub">
                    <ul>
                        <li><a href="#">KTV/酒吧</a></li>
                        <li><a href="#">周边游</a></li>
                        <li><a href="#">生活服务</a></li>
                        <li><a href="#">真人CS</a></li>
                        <li><a href="#">中医养生</a></li>
                        <li><a href="#">体检/齿科</a></li>
                        <li><a href="#">棋牌室</a></li>
                        <li><a href="#">洗浴/汗蒸</a></li>
                    </ul>
                </div>
            </div>
            <div class="lunb_t">
                <div class="picScroll_left_1">
                    <div class="bd">
                        <ul class="picList">
                            <li>
                                <div class="pic"><a href="#" target="_blank"><img src="/static/images/lengy.jpg" /></a></div>
                                <div class="title"><a href="#" target="_blank">卡通美食冷饮</a><span>卡通美食冷饮全家福三人分</span><p>￥6.00</p></div>
                            </li>
                            <li>
                                <div class="pic"><a href="#" target="_blank"><img src="/static/images/lengy.jpg" /></a></div>
                                <div class="title"><a href="#" target="_blank">卡通美食冷饮</a><span>卡通美食冷饮全家福三人分</span><p>￥6.00</p></div>
                            </li>
                            <li>
                                <div class="pic"><a href="#" target="_blank"><img src="/static/images/lengy.jpg" /></a></div>
                                <div class="title"><a href="#" target="_blank">卡通美食冷饮</a><span>卡通美食冷饮全家福三人分</span><p>￥6.00</p></div>
                            </li>
                        </ul>
                    </div>
                    <div class="hd">
                        <ul></ul>
                    </div>
                </div>
                <script type="text/javascript">
                    jQuery(".picScroll_left_1").slide({titCell:".hd ul",mainCell:".bd ul",autoPage:true,effect:"left",autoPlay:true,vis:1,trigger:"click"});
                </script>

            </div>
        </div>
        <div class="toum_">
            <ul>
                <li><a href="#"><img src="/static/images/jiudi_kez.jpg">
                    <div class="jiank_meis_wenz_1">
                        <p>健康美食</p>
                    </div>
                </a>
                </li>
                <li class="sdfs"><a href="#"><img src="/static/images/xiux_yvl.jpg">
                    <div class="jiank_meis_wenz_1">
                        <p>休闲娱乐</p>
                    </div>
                </a>
                </li>
                <li><a href="#"><img src="/static/images/liren.jpg">
                    <div class="jiank_meis_wenz_1">
                        <p>丽人</p>
                    </div>
                </a>
                </li>
            </ul>
        </div>
    </div>

    <!--周边-->
    <div class="zhoub">
        <div class="neir_biaot">
            <p>周边</p>
            <p class="yingw">periphery</p>
        </div>
        <div class="zhoub_neir">
            <ul>
                <li><a href="#"><img src="/static/images/zoub.jpg"></a></li>
                <li><a href="#"><img src="/static/images/zoub2.jpg"></a></li>
                <li><a href="#"><img src="/static/images/zoub3.jpg"></a></li>
            </ul>
        </div>
    </div>
</div>

<!--快速通道栏-->
<div class="kuanjlan">
    <ul class="clearfix">
        <li>
            <div class="list-li-box">
                <a class="list-img" href="#" data-code="index01004-1" target="_blank">
                    <img src="/static/images/meinv_1.jpg">
                    <span class="list-bg"></span>
                    <div class="list-cont">
                        <p class="cont-item"><span>羽饰</span></p>
                        <p class="cont-tile">秋季来点羽毛元素</p>
                        <p class="cont-info">让你更加美丽迷人</p>
                    </div>
                </a>
            </div>
        </li>
        <li>
            <div class="list-li-box">
                <a class="list-img" href="#" data-code="index01004-2" target="_blank">
                    <img src="/static/images/meinv_2.jpg">
                    <span class="list-bg"></span>
                    <div class="list-cont">
                        <p class="cont-item"><span>原宿风</span></p>
                        <p class="cont-tile">个性夸张美衣</p>
                        <p class="cont-info">潮流原宿风</p>
                    </div>
                </a>
            </div>
        </li>
        <li>
            <div class="list-li-box">
                <a class="list-img" href="#" data-code="index01004-3" target="_blank">
                    <img src="/static/images/meinv_3.jpg">
                    <span class="list-bg"></span>
                    <div class="list-cont">
                        <p class="cont-item"><span>皮裤</span></p>
                        <p class="cont-tile">高腰修身皮裤</p>
                        <p class="cont-info">轻松享受女神感觉</p>
                    </div>
                </a>
            </div>
        </li>
        <li>
            <div class="list-li-box">
                <a class="list-img" href="#" data-code="index01004-4" target="_blank">
                    <img src="/static/images/meinv_4.jpg">
                    <span class="list-bg"></span>
                    <div class="list-cont">
                        <p class="cont-item"><span>服装</span></p>
                        <p class="cont-tile">变身女神范儿</p>
                        <p class="cont-info">几种搭配轻松打造</p>
                    </div>
                </a>
            </div>
        </li>
    </ul>
</div>

<!--层次-->
<div class="chengc_jvz">
    <div class="slideTxtBox">
        <div class="hd">
            <h1>
                <p>办公家具</p>
                <p class="yingw_">Office furniture</p>
            </h1>
            <ul><li>精品热卖</li><li>卧室家具</li><li>灯饰照明</li><li>五金工具</li><li>厨房卫浴</li><li>办公文教</li></ul>
        </div>
        <div class="bd">
            <ul>
                <div class="louc_tup_qieh">
                    <div class="js-silder ws-slider">
                        <div class="silder-scroll">
                            <div class="silder-main">
                                <div class="silder-main-img">
                                    <a href="#"><img src="/static/images/liuceng_1.jpg" alt=""></a>
                                </div>
                                <div class="silder-main-img">
                                    <a href="#"><img src="/static/images/2.png" alt=""></a>
                                </div>
                                <div class="silder-main-img">
                                    <a href="#"><img src="/static/images/3.png" alt=""></a>
                                </div>
                            </div>
                        </div>
                        <div class="js-silder-ctrl">
                            <span class="silder-ctrl-prev"></span>
                            <span class="silder-ctrl-next"></span>
                        </div>
                    </div>
                    <div class="kuas_daoh">
                        <a href="#">客厅餐厅</a>
                        <a href="#">床衣柜</a>
                        <a href="#">书房儿童</a>
                        <a href="#">五金工具</a>
                        <a href="#">沙发实木</a>
                        <a href="#">床垫</a>
                        <a href="#">电脑桌</a>
                        <a href="#">接线板</a>
                        <a href="#">餐桌餐椅</a>
                        <a href="#">简易衣柜</a>
                        <a href="#">书桌</a>
                        <a href="#">开关插座</a>
                        <a href="#">酒柜餐边</a>
                        <a href="#">乳胶床垫</a>
                        <a href="#">办公桌</a>
                        <a href="#">USB插座</a>
                    </div>
                </div>
                <div class="you_lirb">
                    <div class="shang_buf">
                        <div class="you_shangp_lieb ">
                            <a href="#"><img  class="you_tup_k" src="/static/images/yic_001.jpg"></a>
                            <a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
                            <span>¥ 2599 .00</span>
                        </div>
                        <div class="you_shangp_lieb">
                            <a href="#"><img  class="you_tup_k" src="/static/images/yic_002.jpg"></a>
                            <a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
                            <span>¥ 2599 .00</span>
                        </div>
                        <div class="you_shangp_lieb cnm">
                            <a href="#"><img  class="you_tup_k" src="/static/images/yic_003.jpg"></a>
                            <a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
                            <span>¥ 2599 .00</span>
                        </div>
                    </div>
                    <div class="xia_buf">
                        <div class="you_shangp_lieb">
                            <a href="#"><img  class="you_tup_k" src="/static/images/yic_004.jpg"></a>
                            <a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
                            <span>¥ 2599 .00</span>
                        </div>
                        <div class="you_shangp_lieb">
                            <a href="#"><img  class="you_tup_k" src="/static/images/yic_003.jpg"></a>
                            <a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
                            <span>¥ 2599 .00</span>
                        </div>
                        <div class="you_shangp_lieb cnm">
                            <a href="#"><img  class="you_tup_k" src="/static/images/yic_005.jpg"></a>
                            <a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
                            <span>¥ 2599 .00</span>
                        </div>
                    </div>
                </div>
            </ul>
            <ul>
                <div class="pangb_daoh">
                    <h1><a href="#"><img src="/static/images/de111.jpg"></a></h1>
                    <div class="kuas_daoh_houm">
                        <a href="#">客厅餐厅</a>
                        <a href="#">床衣柜</a>
                        <a href="#">书房儿童</a>
                        <a href="#">五金工具</a>
                        <a href="#">沙发实木</a>
                        <a href="#">床垫</a>
                        <a href="#">电脑桌</a>
                        <a href="#">接线板</a>
                        <a href="#">餐桌餐椅</a>
                        <a href="#">简易衣柜</a>
                        <a href="#">书桌</a>
                        <a href="#">开关插座</a>
                        <a href="#">酒柜餐边</a>
                        <a href="#">乳胶床垫</a>
                        <a href="#">办公桌</a>
                        <a href="#">USB插座</a>
                    </div>
                </div>
                <div class="you_lirb you_lirb_hou">
                    <div class="shang_buf">
                        <div class="you_shangp_lieb ">
                            <a href="#"><img  class="you_tup_k" src="/static/images/yic_001.jpg"></a>
                            <a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
                            <span>¥ 2599 .00</span>
                        </div>
                        <div class="you_shangp_lieb">
                            <a href="#"><img  class="you_tup_k" src="/static/images/yic_002.jpg"></a>
                            <a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
                            <span>¥ 2599 .00</span>
                        </div>
                        <div class="you_shangp_lieb ">
                            <a href="#"><img  class="you_tup_k" src="/static/images/yic_001.jpg"></a>
                            <a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
                            <span>¥ 2599 .00</span>
                        </div>
                        <div class="you_shangp_lieb cnm">
                            <a href="#"><img  class="you_tup_k" src="/static/images/yic_003.jpg"></a>
                            <a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
                            <span>¥ 2599 .00</span>
                        </div>
                    </div>
                    <div class="xia_buf">
                        <div class="you_shangp_lieb">
                            <a href="#"><img  class="you_tup_k" src="/static/images/yic_004.jpg"></a>
                            <a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
                            <span>¥ 2599 .00</span>
                        </div>
                        <div class="you_shangp_lieb">
                            <a href="#"><img  class="you_tup_k" src="/static/images/yic_003.jpg"></a>
                            <a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
                            <span>¥ 2599 .00</span>
                        </div>
                        <div class="you_shangp_lieb">
                            <a href="#"><img  class="you_tup_k" src="/static/images/yic_004.jpg"></a>
                            <a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
                            <span>¥ 2599 .00</span>
                        </div>
                        <div class="you_shangp_lieb cnm">
                            <a href="#"><img  class="you_tup_k" src="/static/images/yic_005.jpg"></a>
                            <a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
                            <span>¥ 2599 .00</span>
                        </div>
                    </div>
                </div>
            </ul>
            <ul>
                <div class="pangb_daoh">
                    <h1><a href="#"><img src="/static/images/de111.jpg"></a></h1>
                    <div class="kuas_daoh_houm">
                        <a href="#">客厅餐厅</a>
                        <a href="#">床衣柜</a>
                        <a href="#">书房儿童</a>
                        <a href="#">五金工具</a>
                        <a href="#">沙发实木</a>
                        <a href="#">床垫</a>
                        <a href="#">电脑桌</a>
                        <a href="#">接线板</a>
                        <a href="#">餐桌餐椅</a>
                        <a href="#">简易衣柜</a>
                        <a href="#">书桌</a>
                        <a href="#">开关插座</a>
                        <a href="#">酒柜餐边</a>
                        <a href="#">乳胶床垫</a>
                        <a href="#">办公桌</a>
                        <a href="#">USB插座</a>
                    </div>
                </div>
                <div class="you_lirb you_lirb_hou">
                    <div class="shang_buf">
                        <div class="you_shangp_lieb ">
                            <a href="#"><img  class="you_tup_k" src="/static/images/yic_001.jpg"></a>
                            <a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
                            <span>¥ 2599 .00</span>
                        </div>
                        <div class="you_shangp_lieb">
                            <a href="#"><img  class="you_tup_k" src="/static/images/yic_002.jpg"></a>
                            <a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
                            <span>¥ 2599 .00</span>
                        </div>
                        <div class="you_shangp_lieb ">
                            <a href="#"><img  class="you_tup_k" src="/static/images/yic_001.jpg"></a>
                            <a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
                            <span>¥ 2599 .00</span>
                        </div>
                        <div class="you_shangp_lieb cnm">
                            <a href="#"><img  class="you_tup_k" src="/static/images/yic_003.jpg"></a>
                            <a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
                            <span>¥ 2599 .00</span>
                        </div>
                    </div>
                    <div class="xia_buf">
                        <div class="you_shangp_lieb">
                            <a href="#"><img  class="you_tup_k" src="/static/images/yic_004.jpg"></a>
                            <a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
                            <span>¥ 2599 .00</span>
                        </div>
                        <div class="you_shangp_lieb">
                            <a href="#"><img  class="you_tup_k" src="/static/images/yic_003.jpg"></a>
                            <a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
                            <span>¥ 2599 .00</span>
                        </div>
                        <div class="you_shangp_lieb">
                            <a href="#"><img  class="you_tup_k" src="/static/images/yic_004.jpg"></a>
                            <a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
                            <span>¥ 2599 .00</span>
                        </div>
                        <div class="you_shangp_lieb cnm">
                            <a href="#"><img  class="you_tup_k" src="/static/images/yic_005.jpg"></a>
                            <a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
                            <span>¥ 2599 .00</span>
                        </div>
                    </div>
                </div>
            </ul>
            <ul>
                <div class="pangb_daoh">
                    <h1><a href="#"><img src="/static/images/de111.jpg"></a></h1>
                    <div class="kuas_daoh_houm">
                        <a href="#">客厅餐厅</a>
                        <a href="#">床衣柜</a>
                        <a href="#">书房儿童</a>
                        <a href="#">五金工具</a>
                        <a href="#">沙发实木</a>
                        <a href="#">床垫</a>
                        <a href="#">电脑桌</a>
                        <a href="#">接线板</a>
                        <a href="#">餐桌餐椅</a>
                        <a href="#">简易衣柜</a>
                        <a href="#">书桌</a>
                        <a href="#">开关插座</a>
                        <a href="#">酒柜餐边</a>
                        <a href="#">乳胶床垫</a>
                        <a href="#">办公桌</a>
                        <a href="#">USB插座</a>
                    </div>
                </div>
                <div class="you_lirb you_lirb_hou">
                    <div class="shang_buf">
                        <div class="you_shangp_lieb ">
                            <a href="#"><img  class="you_tup_k" src="/static/images/yic_001.jpg"></a>
                            <a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
                            <span>¥ 2599 .00</span>
                        </div>
                        <div class="you_shangp_lieb">
                            <a href="#"><img  class="you_tup_k" src="/static/images/yic_002.jpg"></a>
                            <a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
                            <span>¥ 2599 .00</span>
                        </div>
                        <div class="you_shangp_lieb ">
                            <a href="#"><img  class="you_tup_k" src="/static/images/yic_001.jpg"></a>
                            <a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
                            <span>¥ 2599 .00</span>
                        </div>
                        <div class="you_shangp_lieb cnm">
                            <a href="#"><img  class="you_tup_k" src="/static/images/yic_003.jpg"></a>
                            <a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
                            <span>¥ 2599 .00</span>
                        </div>
                    </div>
                    <div class="xia_buf">
                        <div class="you_shangp_lieb">
                            <a href="#"><img  class="you_tup_k" src="/static/images/yic_004.jpg"></a>
                            <a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
                            <span>¥ 2599 .00</span>
                        </div>
                        <div class="you_shangp_lieb">
                            <a href="#"><img  class="you_tup_k" src="/static/images/yic_003.jpg"></a>
                            <a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
                            <span>¥ 2599 .00</span>
                        </div>
                        <div class="you_shangp_lieb">
                            <a href="#"><img  class="you_tup_k" src="/static/images/yic_004.jpg"></a>
                            <a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
                            <span>¥ 2599 .00</span>
                        </div>
                        <div class="you_shangp_lieb cnm">
                            <a href="#"><img  class="you_tup_k" src="/static/images/yic_005.jpg"></a>
                            <a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
                            <span>¥ 2599 .00</span>
                        </div>
                    </div>
                </div>
            </ul>
            <ul>
                <div class="pangb_daoh">
                    <h1><a href="#"><img src="/static/images/de111.jpg"></a></h1>
                    <div class="kuas_daoh_houm">
                        <a href="#">客厅餐厅</a>
                        <a href="#">床衣柜</a>
                        <a href="#">书房儿童</a>
                        <a href="#">五金工具</a>
                        <a href="#">沙发实木</a>
                        <a href="#">床垫</a>
                        <a href="#">电脑桌</a>
                        <a href="#">接线板</a>
                        <a href="#">餐桌餐椅</a>
                        <a href="#">简易衣柜</a>
                        <a href="#">书桌</a>
                        <a href="#">开关插座</a>
                        <a href="#">酒柜餐边</a>
                        <a href="#">乳胶床垫</a>
                        <a href="#">办公桌</a>
                        <a href="#">USB插座</a>
                    </div>
                </div>
                <div class="you_lirb you_lirb_hou">
                    <div class="shang_buf">
                        <div class="you_shangp_lieb ">
                            <a href="#"><img  class="you_tup_k" src="/static/images/yic_001.jpg"></a>
                            <a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
                            <span>¥ 2599 .00</span>
                        </div>
                        <div class="you_shangp_lieb">
                            <a href="#"><img  class="you_tup_k" src="/static/images/yic_002.jpg"></a>
                            <a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
                            <span>¥ 2599 .00</span>
                        </div>
                        <div class="you_shangp_lieb ">
                            <a href="#"><img  class="you_tup_k" src="/static/images/yic_001.jpg"></a>
                            <a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
                            <span>¥ 2599 .00</span>
                        </div>
                        <div class="you_shangp_lieb cnm">
                            <a href="#"><img  class="you_tup_k" src="/static/images/yic_003.jpg"></a>
                            <a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
                            <span>¥ 2599 .00</span>
                        </div>
                    </div>
                    <div class="xia_buf">
                        <div class="you_shangp_lieb">
                            <a href="#"><img  class="you_tup_k" src="/static/images/yic_004.jpg"></a>
                            <a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
                            <span>¥ 2599 .00</span>
                        </div>
                        <div class="you_shangp_lieb">
                            <a href="#"><img  class="you_tup_k" src="/static/images/yic_003.jpg"></a>
                            <a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
                            <span>¥ 2599 .00</span>
                        </div>
                        <div class="you_shangp_lieb">
                            <a href="#"><img  class="you_tup_k" src="/static/images/yic_004.jpg"></a>
                            <a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
                            <span>¥ 2599 .00</span>
                        </div>
                        <div class="you_shangp_lieb cnm">
                            <a href="#"><img  class="you_tup_k" src="/static/images/yic_005.jpg"></a>
                            <a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
                            <span>¥ 2599 .00</span>
                        </div>
                    </div>
                </div>
            </ul>
            <ul>
                <div class="pangb_daoh">
                    <h1><a href="#"><img src="/static/images/de111.jpg"></a></h1>
                    <div class="kuas_daoh_houm">
                        <a href="#">客厅餐厅</a>
                        <a href="#">床衣柜</a>
                        <a href="#">书房儿童</a>
                        <a href="#">五金工具</a>
                        <a href="#">沙发实木</a>
                        <a href="#">床垫</a>
                        <a href="#">电脑桌</a>
                        <a href="#">接线板</a>
                        <a href="#">餐桌餐椅</a>
                        <a href="#">简易衣柜</a>
                        <a href="#">书桌</a>
                        <a href="#">开关插座</a>
                        <a href="#">酒柜餐边</a>
                        <a href="#">乳胶床垫</a>
                        <a href="#">办公桌</a>
                        <a href="#">USB插座</a>
                    </div>
                </div>
                <div class="you_lirb you_lirb_hou">
                    <div class="shang_buf">
                        <div class="you_shangp_lieb ">
                            <a href="#"><img  class="you_tup_k" src="/static/images/yic_001.jpg"></a>
                            <a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
                            <span>¥ 2599 .00</span>
                        </div>
                        <div class="you_shangp_lieb">
                            <a href="#"><img  class="you_tup_k" src="/static/images/yic_002.jpg"></a>
                            <a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
                            <span>¥ 2599 .00</span>
                        </div>
                        <div class="you_shangp_lieb ">
                            <a href="#"><img  class="you_tup_k" src="/static/images/yic_001.jpg"></a>
                            <a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
                            <span>¥ 2599 .00</span>
                        </div>
                        <div class="you_shangp_lieb cnm">
                            <a href="#"><img  class="you_tup_k" src="/static/images/yic_003.jpg"></a>
                            <a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
                            <span>¥ 2599 .00</span>
                        </div>
                    </div>
                    <div class="xia_buf">
                        <div class="you_shangp_lieb">
                            <a href="#"><img  class="you_tup_k" src="/static/images/yic_004.jpg"></a>
                            <a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
                            <span>¥ 2599 .00</span>
                        </div>
                        <div class="you_shangp_lieb">
                            <a href="#"><img  class="you_tup_k" src="/static/images/yic_003.jpg"></a>
                            <a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
                            <span>¥ 2599 .00</span>
                        </div>
                        <div class="you_shangp_lieb">
                            <a href="#"><img  class="you_tup_k" src="/static/images/yic_004.jpg"></a>
                            <a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
                            <span>¥ 2599 .00</span>
                        </div>
                        <div class="you_shangp_lieb cnm">
                            <a href="#"><img  class="you_tup_k" src="/static/images/yic_005.jpg"></a>
                            <a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
                            <span>¥ 2599 .00</span>
                        </div>
                    </div>
                </div>
            </ul>
        </div>
    </div>
</div>

<div class="chengc_jvz">
    <div class="slideTxtBox2">
        <div class="hd">
            <h1>
                <p>手机数码</p>
                <p class="yingw_">Mobile phone digital</p>
            </h1>
            <ul><li>电脑整机</li><li>热门手机</li><li>智能数码</li><li>游戏组装</li><li>硬件存储</li><li>摄影产品</li></ul>
        </div>
        <div class="bd">
            <ul>
                <div class="louc_tup_qieh">
                    <div class="js-silder ws-slider">
                        <div class="silder-scroll">
                            <div class="silder-main">
                                <div class="silder-main-img">
                                    <a href="#"><img src="/static/images/liuceng_1.jpg" alt=""></a>
                                </div>
                                <div class="silder-main-img">
                                    <a href="#"><img src="/static/images/2.png" alt=""></a>
                                </div>
                                <div class="silder-main-img">
                                    <a href="#"><img src="/static/images/3.png" alt=""></a>
                                </div>
                            </div>
                        </div>
                        <div class="js-silder-ctrl">
                            <span class="silder-ctrl-prev"></span>
                            <span class="silder-ctrl-next"></span>
                        </div>
                    </div>
                    <div class="kuas_daoh kuas_daoh_2">
                        <a href="#">客厅餐厅</a>
                        <a href="#">床衣柜</a>
                        <a href="#">书房儿童</a>
                        <a href="#">五金工具</a>
                        <a href="#">沙发实木</a>
                        <a href="#">床垫</a>
                        <a href="#">电脑桌</a>
                        <a href="#">接线板</a>
                        <a href="#">餐桌餐椅</a>
                        <a href="#">简易衣柜</a>
                        <a href="#">书桌</a>
                        <a href="#">开关插座</a>
                        <a href="#">酒柜餐边</a>
                        <a href="#">乳胶床垫</a>
                        <a href="#">办公桌</a>
                        <a href="#">USB插座</a>
                    </div>
                </div>
                <div class="you_lirb you_lirb_2">
                    <div class="shang_buf">
                        <div class="you_shangp_lieb ">
                            <a href="#"><img  class="you_tup_k" src="/static/images/yic_001.jpg"></a>
                            <a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
                            <span>¥ 2599 .00</span>
                        </div>
                        <div class="you_shangp_lieb">
                            <a href="#"><img  class="you_tup_k" src="/static/images/yic_002.jpg"></a>
                            <a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
                            <span>¥ 2599 .00</span>
                        </div>
                        <div class="you_shangp_lieb cnm">
                            <a href="#"><img  class="you_tup_k" src="/static/images/yic_003.jpg"></a>
                            <a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
                            <span>¥ 2599 .00</span>
                        </div>
                    </div>
                    <div class="xia_buf">
                        <div class="you_shangp_lieb">
                            <a href="#"><img  class="you_tup_k" src="/static/images/yic_004.jpg"></a>
                            <a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
                            <span>¥ 2599 .00</span>
                        </div>
                        <div class="you_shangp_lieb">
                            <a href="#"><img  class="you_tup_k" src="/static/images/yic_003.jpg"></a>
                            <a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
                            <span>¥ 2599 .00</span>
                        </div>
                        <div class="you_shangp_lieb cnm">
                            <a href="#"><img  class="you_tup_k" src="/static/images/yic_005.jpg"></a>
                            <a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
                            <span>¥ 2599 .00</span>
                        </div>
                    </div>
                </div>
            </ul>
            <ul>
                <div class="pangb_daoh">
                    <h1><a href="#"><img src="/static/images/de111.jpg"></a></h1>
                    <div class="kuas_daoh_houm kuas_daoh_houm_2">
                        <a href="#">客厅餐厅</a>
                        <a href="#">床衣柜</a>
                        <a href="#">书房儿童</a>
                        <a href="#">五金工具</a>
                        <a href="#">沙发实木</a>
                        <a href="#">床垫</a>
                        <a href="#">电脑桌</a>
                        <a href="#">接线板</a>
                        <a href="#">餐桌餐椅</a>
                        <a href="#">简易衣柜</a>
                        <a href="#">书桌</a>
                        <a href="#">开关插座</a>
                        <a href="#">酒柜餐边</a>
                        <a href="#">乳胶床垫</a>
                        <a href="#">办公桌</a>
                        <a href="#">USB插座</a>
                    </div>
                </div>
                <div class="you_lirb you_lirb_hou you_lirb_2">
                    <div class="shang_buf">
                        <div class="you_shangp_lieb ">
                            <a href="#"><img  class="you_tup_k" src="/static/images/yic_001.jpg"></a>
                            <a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
                            <span>¥ 2599 .00</span>
                        </div>
                        <div class="you_shangp_lieb">
                            <a href="#"><img  class="you_tup_k" src="/static/images/yic_002.jpg"></a>
                            <a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
                            <span>¥ 2599 .00</span>
                        </div>
                        <div class="you_shangp_lieb ">
                            <a href="#"><img  class="you_tup_k" src="/static/images/yic_001.jpg"></a>
                            <a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
                            <span>¥ 2599 .00</span>
                        </div>
                        <div class="you_shangp_lieb cnm">
                            <a href="#"><img  class="you_tup_k" src="/static/images/yic_003.jpg"></a>
                            <a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
                            <span>¥ 2599 .00</span>
                        </div>
                    </div>
                    <div class="xia_buf">
                        <div class="you_shangp_lieb">
                            <a href="#"><img  class="you_tup_k" src="/static/images/yic_004.jpg"></a>
                            <a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
                            <span>¥ 2599 .00</span>
                        </div>
                        <div class="you_shangp_lieb">
                            <a href="#"><img  class="you_tup_k" src="/static/images/yic_003.jpg"></a>
                            <a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
                            <span>¥ 2599 .00</span>
                        </div>
                        <div class="you_shangp_lieb">
                            <a href="#"><img  class="you_tup_k" src="/static/images/yic_004.jpg"></a>
                            <a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
                            <span>¥ 2599 .00</span>
                        </div>
                        <div class="you_shangp_lieb cnm">
                            <a href="#"><img  class="you_tup_k" src="/static/images/yic_005.jpg"></a>
                            <a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
                            <span>¥ 2599 .00</span>
                        </div>
                    </div>
                </div>
            </ul>
            <ul>
                <div class="pangb_daoh">
                    <h1><a href="#"><img src="/static/images/de111.jpg"></a></h1>
                    <div class="kuas_daoh_houm kuas_daoh_houm_2">
                        <a href="#">客厅餐厅</a>
                        <a href="#">床衣柜</a>
                        <a href="#">书房儿童</a>
                        <a href="#">五金工具</a>
                        <a href="#">沙发实木</a>
                        <a href="#">床垫</a>
                        <a href="#">电脑桌</a>
                        <a href="#">接线板</a>
                        <a href="#">餐桌餐椅</a>
                        <a href="#">简易衣柜</a>
                        <a href="#">书桌</a>
                        <a href="#">开关插座</a>
                        <a href="#">酒柜餐边</a>
                        <a href="#">乳胶床垫</a>
                        <a href="#">办公桌</a>
                        <a href="#">USB插座</a>
                    </div>
                </div>
                <div class="you_lirb you_lirb_hou you_lirb_2">
                    <div class="shang_buf">
                        <div class="you_shangp_lieb ">
                            <a href="#"><img  class="you_tup_k" src="/static/images/yic_001.jpg"></a>
                            <a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
                            <span>¥ 2599 .00</span>
                        </div>
                        <div class="you_shangp_lieb">
                            <a href="#"><img  class="you_tup_k" src="/static/images/yic_002.jpg"></a>
                            <a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
                            <span>¥ 2599 .00</span>
                        </div>
                        <div class="you_shangp_lieb ">
                            <a href="#"><img  class="you_tup_k" src="/static/images/yic_001.jpg"></a>
                            <a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
                            <span>¥ 2599 .00</span>
                        </div>
                        <div class="you_shangp_lieb cnm">
                            <a href="#"><img  class="you_tup_k" src="/static/images/yic_003.jpg"></a>
                            <a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
                            <span>¥ 2599 .00</span>
                        </div>
                    </div>
                    <div class="xia_buf">
                        <div class="you_shangp_lieb">
                            <a href="#"><img  class="you_tup_k" src="/static/images/yic_004.jpg"></a>
                            <a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
                            <span>¥ 2599 .00</span>
                        </div>
                        <div class="you_shangp_lieb">
                            <a href="#"><img  class="you_tup_k" src="/static/images/yic_003.jpg"></a>
                            <a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
                            <span>¥ 2599 .00</span>
                        </div>
                        <div class="you_shangp_lieb">
                            <a href="#"><img  class="you_tup_k" src="/static/images/yic_004.jpg"></a>
                            <a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
                            <span>¥ 2599 .00</span>
                        </div>
                        <div class="you_shangp_lieb cnm">
                            <a href="#"><img  class="you_tup_k" src="/static/images/yic_005.jpg"></a>
                            <a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
                            <span>¥ 2599 .00</span>
                        </div>
                    </div>
                </div>
            </ul>
            <ul>
                <div class="pangb_daoh">
                    <h1><a href="#"><img src="/static/images/de111.jpg"></a></h1>
                    <div class="kuas_daoh_houm kuas_daoh_houm_2">
                        <a href="#">客厅餐厅</a>
                        <a href="#">床衣柜</a>
                        <a href="#">书房儿童</a>
                        <a href="#">五金工具</a>
                        <a href="#">沙发实木</a>
                        <a href="#">床垫</a>
                        <a href="#">电脑桌</a>
                        <a href="#">接线板</a>
                        <a href="#">餐桌餐椅</a>
                        <a href="#">简易衣柜</a>
                        <a href="#">书桌</a>
                        <a href="#">开关插座</a>
                        <a href="#">酒柜餐边</a>
                        <a href="#">乳胶床垫</a>
                        <a href="#">办公桌</a>
                        <a href="#">USB插座</a>
                    </div>
                </div>
                <div class="you_lirb you_lirb_hou you_lirb_2">
                    <div class="shang_buf">
                        <div class="you_shangp_lieb ">
                            <a href="#"><img  class="you_tup_k" src="/static/images/yic_001.jpg"></a>
                            <a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
                            <span>¥ 2599 .00</span>
                        </div>
                        <div class="you_shangp_lieb">
                            <a href="#"><img  class="you_tup_k" src="/static/images/yic_002.jpg"></a>
                            <a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
                            <span>¥ 2599 .00</span>
                        </div>
                        <div class="you_shangp_lieb ">
                            <a href="#"><img  class="you_tup_k" src="/static/images/yic_001.jpg"></a>
                            <a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
                            <span>¥ 2599 .00</span>
                        </div>
                        <div class="you_shangp_lieb cnm">
                            <a href="#"><img  class="you_tup_k" src="/static/images/yic_003.jpg"></a>
                            <a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
                            <span>¥ 2599 .00</span>
                        </div>
                    </div>
                    <div class="xia_buf">
                        <div class="you_shangp_lieb">
                            <a href="#"><img  class="you_tup_k" src="/static/images/yic_004.jpg"></a>
                            <a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
                            <span>¥ 2599 .00</span>
                        </div>
                        <div class="you_shangp_lieb">
                            <a href="#"><img  class="you_tup_k" src="/static/images/yic_003.jpg"></a>
                            <a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
                            <span>¥ 2599 .00</span>
                        </div>
                        <div class="you_shangp_lieb">
                            <a href="#"><img  class="you_tup_k" src="/static/images/yic_004.jpg"></a>
                            <a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
                            <span>¥ 2599 .00</span>
                        </div>
                        <div class="you_shangp_lieb cnm">
                            <a href="#"><img  class="you_tup_k" src="/static/images/yic_005.jpg"></a>
                            <a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
                            <span>¥ 2599 .00</span>
                        </div>
                    </div>
                </div>
            </ul>
            <ul>
                <div class="pangb_daoh">
                    <h1><a href="#"><img src="/static/images/de111.jpg"></a></h1>
                    <div class="kuas_daoh_houm kuas_daoh_houm_2">
                        <a href="#">客厅餐厅</a>
                        <a href="#">床衣柜</a>
                        <a href="#">书房儿童</a>
                        <a href="#">五金工具</a>
                        <a href="#">沙发实木</a>
                        <a href="#">床垫</a>
                        <a href="#">电脑桌</a>
                        <a href="#">接线板</a>
                        <a href="#">餐桌餐椅</a>
                        <a href="#">简易衣柜</a>
                        <a href="#">书桌</a>
                        <a href="#">开关插座</a>
                        <a href="#">酒柜餐边</a>
                        <a href="#">乳胶床垫</a>
                        <a href="#">办公桌</a>
                        <a href="#">USB插座</a>
                    </div>
                </div>
                <div class="you_lirb you_lirb_hou you_lirb_2">
                    <div class="shang_buf">
                        <div class="you_shangp_lieb ">
                            <a href="#"><img  class="you_tup_k" src="/static/images/yic_001.jpg"></a>
                            <a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
                            <span>¥ 2599 .00</span>
                        </div>
                        <div class="you_shangp_lieb">
                            <a href="#"><img  class="you_tup_k" src="/static/images/yic_002.jpg"></a>
                            <a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
                            <span>¥ 2599 .00</span>
                        </div>
                        <div class="you_shangp_lieb ">
                            <a href="#"><img  class="you_tup_k" src="/static/images/yic_001.jpg"></a>
                            <a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
                            <span>¥ 2599 .00</span>
                        </div>
                        <div class="you_shangp_lieb cnm">
                            <a href="#"><img  class="you_tup_k" src="/static/images/yic_003.jpg"></a>
                            <a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
                            <span>¥ 2599 .00</span>
                        </div>
                    </div>
                    <div class="xia_buf">
                        <div class="you_shangp_lieb">
                            <a href="#"><img  class="you_tup_k" src="/static/images/yic_004.jpg"></a>
                            <a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
                            <span>¥ 2599 .00</span>
                        </div>
                        <div class="you_shangp_lieb">
                            <a href="#"><img  class="you_tup_k" src="/static/images/yic_003.jpg"></a>
                            <a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
                            <span>¥ 2599 .00</span>
                        </div>
                        <div class="you_shangp_lieb">
                            <a href="#"><img  class="you_tup_k" src="/static/images/yic_004.jpg"></a>
                            <a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
                            <span>¥ 2599 .00</span>
                        </div>
                        <div class="you_shangp_lieb cnm">
                            <a href="#"><img  class="you_tup_k" src="/static/images/yic_005.jpg"></a>
                            <a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
                            <span>¥ 2599 .00</span>
                        </div>
                    </div>
                </div>
            </ul>
            <ul>
                <div class="pangb_daoh">
                    <h1><a href="#"><img src="/static/images/de111.jpg"></a></h1>
                    <div class="kuas_daoh_houm kuas_daoh_houm_2">
                        <a href="#">客厅餐厅</a>
                        <a href="#">床衣柜</a>
                        <a href="#">书房儿童</a>
                        <a href="#">五金工具</a>
                        <a href="#">沙发实木</a>
                        <a href="#">床垫</a>
                        <a href="#">电脑桌</a>
                        <a href="#">接线板</a>
                        <a href="#">餐桌餐椅</a>
                        <a href="#">简易衣柜</a>
                        <a href="#">书桌</a>
                        <a href="#">开关插座</a>
                        <a href="#">酒柜餐边</a>
                        <a href="#">乳胶床垫</a>
                        <a href="#">办公桌</a>
                        <a href="#">USB插座</a>
                    </div>
                </div>
                <div class="you_lirb you_lirb_hou you_lirb_2">
                    <div class="shang_buf">
                        <div class="you_shangp_lieb ">
                            <a href="#"><img  class="you_tup_k" src="/static/images/yic_001.jpg"></a>
                            <a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
                            <span>¥ 2599 .00</span>
                        </div>
                        <div class="you_shangp_lieb">
                            <a href="#"><img  class="you_tup_k" src="/static/images/yic_002.jpg"></a>
                            <a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
                            <span>¥ 2599 .00</span>
                        </div>
                        <div class="you_shangp_lieb ">
                            <a href="#"><img  class="you_tup_k" src="/static/images/yic_001.jpg"></a>
                            <a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
                            <span>¥ 2599 .00</span>
                        </div>
                        <div class="you_shangp_lieb cnm">
                            <a href="#"><img  class="you_tup_k" src="/static/images/yic_003.jpg"></a>
                            <a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
                            <span>¥ 2599 .00</span>
                        </div>
                    </div>
                    <div class="xia_buf">
                        <div class="you_shangp_lieb">
                            <a href="#"><img  class="you_tup_k" src="/static/images/yic_004.jpg"></a>
                            <a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
                            <span>¥ 2599 .00</span>
                        </div>
                        <div class="you_shangp_lieb">
                            <a href="#"><img  class="you_tup_k" src="/static/images/yic_003.jpg"></a>
                            <a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
                            <span>¥ 2599 .00</span>
                        </div>
                        <div class="you_shangp_lieb">
                            <a href="#"><img  class="you_tup_k" src="/static/images/yic_004.jpg"></a>
                            <a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
                            <span>¥ 2599 .00</span>
                        </div>
                        <div class="you_shangp_lieb cnm">
                            <a href="#"><img  class="you_tup_k" src="/static/images/yic_005.jpg"></a>
                            <a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
                            <span>¥ 2599 .00</span>
                        </div>
                    </div>
                </div>
            </ul>
        </div>
    </div>
</div>

<div class="chengc_jvz">
    <div class="slideTxtBox3">
        <div class="hd">
            <h1>
                <p>服饰鞋帽</p>
                <p class="yingw_">Shoes and hats</p>
            </h1>
            <ul><li>精品热卖</li><li>精品热卖 </li><li>女装</li><li>男装</li><li>内衣</li><li>时尚套装</li></ul>
        </div>
        <div class="bd">
            <ul>
                <div class="louc_tup_qieh">
                    <div class="js-silder ws-slider">
                        <div class="silder-scroll">
                            <div class="silder-main">
                                <div class="silder-main-img">
                                    <a href="#"><img src="/static/images/mm_yif.jpg" alt=""></a>
                                </div>
                                <div class="silder-main-img">
                                    <a href="#"><img src="/static/images/2.png" alt=""></a>
                                </div>
                                <div class="silder-main-img">
                                    <a href="#"><img src="/static/images/mm_yif.jpg" alt=""></a>
                                </div>
                            </div>
                        </div>
                        <div class="js-silder-ctrl">
                            <span class="silder-ctrl-prev"></span>
                            <span class="silder-ctrl-next"></span>
                        </div>
                    </div>
                    <div class="kuas_daoh kuas_daoh_3">
                        <a href="#">客厅餐厅</a>
                        <a href="#">床衣柜</a>
                        <a href="#">书房儿童</a>
                        <a href="#">五金工具</a>
                        <a href="#">沙发实木</a>
                        <a href="#">床垫</a>
                        <a href="#">电脑桌</a>
                        <a href="#">接线板</a>
                        <a href="#">餐桌餐椅</a>
                        <a href="#">简易衣柜</a>
                        <a href="#">书桌</a>
                        <a href="#">开关插座</a>
                        <a href="#">酒柜餐边</a>
                        <a href="#">乳胶床垫</a>
                        <a href="#">办公桌</a>
                        <a href="#">USB插座</a>
                    </div>
                </div>
                <div class="you_lirb you_lirb_3">
                    <div class="shang_buf">
                        <div class="you_shangp_lieb ">
                            <a href="#"><img  class="you_tup_k" src="/static/images/yic_001.jpg"></a>
                            <a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
                            <span>¥ 2599 .00</span>
                        </div>
                        <div class="you_shangp_lieb">
                            <a href="#"><img  class="you_tup_k" src="/static/images/yic_002.jpg"></a>
                            <a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
                            <span>¥ 2599 .00</span>
                        </div>
                        <div class="you_shangp_lieb cnm">
                            <a href="#"><img  class="you_tup_k" src="/static/images/yic_003.jpg"></a>
                            <a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
                            <span>¥ 2599 .00</span>
                        </div>
                    </div>
                    <div class="xia_buf">
                        <div class="you_shangp_lieb">
                            <a href="#"><img  class="you_tup_k" src="/static/images/yic_004.jpg"></a>
                            <a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
                            <span>¥ 2599 .00</span>
                        </div>
                        <div class="you_shangp_lieb">
                            <a href="#"><img  class="you_tup_k" src="/static/images/yic_003.jpg"></a>
                            <a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
                            <span>¥ 2599 .00</span>
                        </div>
                        <div class="you_shangp_lieb cnm">
                            <a href="#"><img  class="you_tup_k" src="/static/images/yic_005.jpg"></a>
                            <a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
                            <span>¥ 2599 .00</span>
                        </div>
                    </div>
                </div>
            </ul>
            <ul>
                <div class="pangb_daoh">
                    <h1><a href="#"><img src="/static/images/de111.jpg"></a></h1>
                    <div class="kuas_daoh_houm kuas_daoh_houm_3">
                        <a href="#">客厅餐厅</a>
                        <a href="#">床衣柜</a>
                        <a href="#">书房儿童</a>
                        <a href="#">五金工具</a>
                        <a href="#">沙发实木</a>
                        <a href="#">床垫</a>
                        <a href="#">电脑桌</a>
                        <a href="#">接线板</a>
                        <a href="#">餐桌餐椅</a>
                        <a href="#">简易衣柜</a>
                        <a href="#">书桌</a>
                        <a href="#">开关插座</a>
                        <a href="#">酒柜餐边</a>
                        <a href="#">乳胶床垫</a>
                        <a href="#">办公桌</a>
                        <a href="#">USB插座</a>
                    </div>
                </div>
                <div class="you_lirb you_lirb_hou you_lirb_3">
                    <div class="shang_buf">
                        <div class="you_shangp_lieb ">
                            <a href="#"><img  class="you_tup_k" src="/static/images/yic_001.jpg"></a>
                            <a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
                            <span>¥ 2599 .00</span>
                        </div>
                        <div class="you_shangp_lieb">
                            <a href="#"><img  class="you_tup_k" src="/static/images/yic_002.jpg"></a>
                            <a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
                            <span>¥ 2599 .00</span>
                        </div>
                        <div class="you_shangp_lieb ">
                            <a href="#"><img  class="you_tup_k" src="/static/images/yic_001.jpg"></a>
                            <a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
                            <span>¥ 2599 .00</span>
                        </div>
                        <div class="you_shangp_lieb cnm">
                            <a href="#"><img  class="you_tup_k" src="/static/images/yic_003.jpg"></a>
                            <a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
                            <span>¥ 2599 .00</span>
                        </div>
                    </div>
                    <div class="xia_buf">
                        <div class="you_shangp_lieb">
                            <a href="#"><img  class="you_tup_k" src="/static/images/yic_004.jpg"></a>
                            <a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
                            <span>¥ 2599 .00</span>
                        </div>
                        <div class="you_shangp_lieb">
                            <a href="#"><img  class="you_tup_k" src="/static/images/yic_003.jpg"></a>
                            <a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
                            <span>¥ 2599 .00</span>
                        </div>
                        <div class="you_shangp_lieb">
                            <a href="#"><img  class="you_tup_k" src="/static/images/yic_004.jpg"></a>
                            <a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
                            <span>¥ 2599 .00</span>
                        </div>
                        <div class="you_shangp_lieb cnm">
                            <a href="#"><img  class="you_tup_k" src="/static/images/yic_005.jpg"></a>
                            <a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
                            <span>¥ 2599 .00</span>
                        </div>
                    </div>
                </div>
            </ul>
            <ul>
                <div class="pangb_daoh">
                    <h1><a href="#"><img src="/static/images/de111.jpg"></a></h1>
                    <div class="kuas_daoh_houm kuas_daoh_houm_3">
                        <a href="#">客厅餐厅</a>
                        <a href="#">床衣柜</a>
                        <a href="#">书房儿童</a>
                        <a href="#">五金工具</a>
                        <a href="#">沙发实木</a>
                        <a href="#">床垫</a>
                        <a href="#">电脑桌</a>
                        <a href="#">接线板</a>
                        <a href="#">餐桌餐椅</a>
                        <a href="#">简易衣柜</a>
                        <a href="#">书桌</a>
                        <a href="#">开关插座</a>
                        <a href="#">酒柜餐边</a>
                        <a href="#">乳胶床垫</a>
                        <a href="#">办公桌</a>
                        <a href="#">USB插座</a>
                    </div>
                </div>
                <div class="you_lirb you_lirb_hou you_lirb_3">
                    <div class="shang_buf">
                        <div class="you_shangp_lieb ">
                            <a href="#"><img  class="you_tup_k" src="/static/images/yic_001.jpg"></a>
                            <a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
                            <span>¥ 2599 .00</span>
                        </div>
                        <div class="you_shangp_lieb">
                            <a href="#"><img  class="you_tup_k" src="/static/images/yic_002.jpg"></a>
                            <a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
                            <span>¥ 2599 .00</span>
                        </div>
                        <div class="you_shangp_lieb ">
                            <a href="#"><img  class="you_tup_k" src="/static/images/yic_001.jpg"></a>
                            <a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
                            <span>¥ 2599 .00</span>
                        </div>
                        <div class="you_shangp_lieb cnm">
                            <a href="#"><img  class="you_tup_k" src="/static/images/yic_003.jpg"></a>
                            <a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
                            <span>¥ 2599 .00</span>
                        </div>
                    </div>
                    <div class="xia_buf">
                        <div class="you_shangp_lieb">
                            <a href="#"><img  class="you_tup_k" src="/static/images/yic_004.jpg"></a>
                            <a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
                            <span>¥ 2599 .00</span>
                        </div>
                        <div class="you_shangp_lieb">
                            <a href="#"><img  class="you_tup_k" src="/static/images/yic_003.jpg"></a>
                            <a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
                            <span>¥ 2599 .00</span>
                        </div>
                        <div class="you_shangp_lieb">
                            <a href="#"><img  class="you_tup_k" src="/static/images/yic_004.jpg"></a>
                            <a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
                            <span>¥ 2599 .00</span>
                        </div>
                        <div class="you_shangp_lieb cnm">
                            <a href="#"><img  class="you_tup_k" src="/static/images/yic_005.jpg"></a>
                            <a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
                            <span>¥ 2599 .00</span>
                        </div>
                    </div>
                </div>
            </ul>
            <ul>
                <div class="pangb_daoh">
                    <h1><a href="#"><img src="/static/images/de111.jpg"></a></h1>
                    <div class="kuas_daoh_houm kuas_daoh_houm_3">
                        <a href="#">客厅餐厅</a>
                        <a href="#">床衣柜</a>
                        <a href="#">书房儿童</a>
                        <a href="#">五金工具</a>
                        <a href="#">沙发实木</a>
                        <a href="#">床垫</a>
                        <a href="#">电脑桌</a>
                        <a href="#">接线板</a>
                        <a href="#">餐桌餐椅</a>
                        <a href="#">简易衣柜</a>
                        <a href="#">书桌</a>
                        <a href="#">开关插座</a>
                        <a href="#">酒柜餐边</a>
                        <a href="#">乳胶床垫</a>
                        <a href="#">办公桌</a>
                        <a href="#">USB插座</a>
                    </div>
                </div>
                <div class="you_lirb you_lirb_hou you_lirb_3">
                    <div class="shang_buf">
                        <div class="you_shangp_lieb ">
                            <a href="#"><img  class="you_tup_k" src="/static/images/yic_001.jpg"></a>
                            <a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
                            <span>¥ 2599 .00</span>
                        </div>
                        <div class="you_shangp_lieb">
                            <a href="#"><img  class="you_tup_k" src="/static/images/yic_002.jpg"></a>
                            <a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
                            <span>¥ 2599 .00</span>
                        </div>
                        <div class="you_shangp_lieb ">
                            <a href="#"><img  class="you_tup_k" src="/static/images/yic_001.jpg"></a>
                            <a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
                            <span>¥ 2599 .00</span>
                        </div>
                        <div class="you_shangp_lieb cnm">
                            <a href="#"><img  class="you_tup_k" src="/static/images/yic_003.jpg"></a>
                            <a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
                            <span>¥ 2599 .00</span>
                        </div>
                    </div>
                    <div class="xia_buf">
                        <div class="you_shangp_lieb">
                            <a href="#"><img  class="you_tup_k" src="/static/images/yic_004.jpg"></a>
                            <a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
                            <span>¥ 2599 .00</span>
                        </div>
                        <div class="you_shangp_lieb">
                            <a href="#"><img  class="you_tup_k" src="/static/images/yic_003.jpg"></a>
                            <a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
                            <span>¥ 2599 .00</span>
                        </div>
                        <div class="you_shangp_lieb">
                            <a href="#"><img  class="you_tup_k" src="/static/images/yic_004.jpg"></a>
                            <a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
                            <span>¥ 2599 .00</span>
                        </div>
                        <div class="you_shangp_lieb cnm">
                            <a href="#"><img  class="you_tup_k" src="/static/images/yic_005.jpg"></a>
                            <a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
                            <span>¥ 2599 .00</span>
                        </div>
                    </div>
                </div>
            </ul>
            <ul>
                <div class="pangb_daoh">
                    <h1><a href="#"><img src="/static/images/de111.jpg"></a></h1>
                    <div class="kuas_daoh_houm kuas_daoh_houm_3">
                        <a href="#">客厅餐厅</a>
                        <a href="#">床衣柜</a>
                        <a href="#">书房儿童</a>
                        <a href="#">五金工具</a>
                        <a href="#">沙发实木</a>
                        <a href="#">床垫</a>
                        <a href="#">电脑桌</a>
                        <a href="#">接线板</a>
                        <a href="#">餐桌餐椅</a>
                        <a href="#">简易衣柜</a>
                        <a href="#">书桌</a>
                        <a href="#">开关插座</a>
                        <a href="#">酒柜餐边</a>
                        <a href="#">乳胶床垫</a>
                        <a href="#">办公桌</a>
                        <a href="#">USB插座</a>
                    </div>
                </div>
                <div class="you_lirb you_lirb_hou you_lirb_3">
                    <div class="shang_buf">
                        <div class="you_shangp_lieb ">
                            <a href="#"><img  class="you_tup_k" src="/static/images/yic_001.jpg"></a>
                            <a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
                            <span>¥ 2599 .00</span>
                        </div>
                        <div class="you_shangp_lieb">
                            <a href="#"><img  class="you_tup_k" src="/static/images/yic_002.jpg"></a>
                            <a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
                            <span>¥ 2599 .00</span>
                        </div>
                        <div class="you_shangp_lieb ">
                            <a href="#"><img  class="you_tup_k" src="/static/images/yic_001.jpg"></a>
                            <a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
                            <span>¥ 2599 .00</span>
                        </div>
                        <div class="you_shangp_lieb cnm">
                            <a href="#"><img  class="you_tup_k" src="/static/images/yic_003.jpg"></a>
                            <a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
                            <span>¥ 2599 .00</span>
                        </div>
                    </div>
                    <div class="xia_buf">
                        <div class="you_shangp_lieb">
                            <a href="#"><img  class="you_tup_k" src="/static/images/yic_004.jpg"></a>
                            <a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
                            <span>¥ 2599 .00</span>
                        </div>
                        <div class="you_shangp_lieb">
                            <a href="#"><img  class="you_tup_k" src="/static/images/yic_003.jpg"></a>
                            <a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
                            <span>¥ 2599 .00</span>
                        </div>
                        <div class="you_shangp_lieb">
                            <a href="#"><img  class="you_tup_k" src="/static/images/yic_004.jpg"></a>
                            <a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
                            <span>¥ 2599 .00</span>
                        </div>
                        <div class="you_shangp_lieb cnm">
                            <a href="#"><img  class="you_tup_k" src="/static/images/yic_005.jpg"></a>
                            <a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
                            <span>¥ 2599 .00</span>
                        </div>
                    </div>
                </div>
            </ul>
            <ul>
                <div class="pangb_daoh">
                    <h1><a href="#"><img src="/static/images/de111.jpg"></a></h1>
                    <div class="kuas_daoh_houm kuas_daoh_houm_3">
                        <a href="#">客厅餐厅</a>
                        <a href="#">床衣柜</a>
                        <a href="#">书房儿童</a>
                        <a href="#">五金工具</a>
                        <a href="#">沙发实木</a>
                        <a href="#">床垫</a>
                        <a href="#">电脑桌</a>
                        <a href="#">接线板</a>
                        <a href="#">餐桌餐椅</a>
                        <a href="#">简易衣柜</a>
                        <a href="#">书桌</a>
                        <a href="#">开关插座</a>
                        <a href="#">酒柜餐边</a>
                        <a href="#">乳胶床垫</a>
                        <a href="#">办公桌</a>
                        <a href="#">USB插座</a>
                    </div>
                </div>
                <div class="you_lirb you_lirb_hou you_lirb_3">
                    <div class="shang_buf">
                        <div class="you_shangp_lieb ">
                            <a href="#"><img  class="you_tup_k" src="/static/images/yic_001.jpg"></a>
                            <a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
                            <span>¥ 2599 .00</span>
                        </div>
                        <div class="you_shangp_lieb">
                            <a href="#"><img  class="you_tup_k" src="/static/images/yic_002.jpg"></a>
                            <a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
                            <span>¥ 2599 .00</span>
                        </div>
                        <div class="you_shangp_lieb ">
                            <a href="#"><img  class="you_tup_k" src="/static/images/yic_001.jpg"></a>
                            <a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
                            <span>¥ 2599 .00</span>
                        </div>
                        <div class="you_shangp_lieb cnm">
                            <a href="#"><img  class="you_tup_k" src="/static/images/yic_003.jpg"></a>
                            <a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
                            <span>¥ 2599 .00</span>
                        </div>
                    </div>
                    <div class="xia_buf">
                        <div class="you_shangp_lieb">
                            <a href="#"><img  class="you_tup_k" src="/static/images/yic_004.jpg"></a>
                            <a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
                            <span>¥ 2599 .00</span>
                        </div>
                        <div class="you_shangp_lieb">
                            <a href="#"><img  class="you_tup_k" src="/static/images/yic_003.jpg"></a>
                            <a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
                            <span>¥ 2599 .00</span>
                        </div>
                        <div class="you_shangp_lieb">
                            <a href="#"><img  class="you_tup_k" src="/static/images/yic_004.jpg"></a>
                            <a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
                            <span>¥ 2599 .00</span>
                        </div>
                        <div class="you_shangp_lieb cnm">
                            <a href="#"><img  class="you_tup_k" src="/static/images/yic_005.jpg"></a>
                            <a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
                            <span>¥ 2599 .00</span>
                        </div>
                    </div>
                </div>
            </ul>
        </div>
    </div>
</div>

<div class="chengc_jvz">
    <div class="slideTxtBox4">
        <div class="hd">
            <h1>
                <p>汽车用品</p>
                <p class="yingw_">Automobile</p>
            </h1>
            <ul><li>精品热卖</li><li>汽车品牌</li><li>维修保养</li><li>汽车装饰</li><li>车载电器</li><li>汽车服务</li></ul>
        </div>
        <div class="bd">
            <ul>
                <div class="louc_tup_qieh">
                    <div class="js-silder ws-slider">
                        <div class="silder-scroll">
                            <div class="silder-main">
                                <div class="silder-main-img">
                                    <a href="#"><img src="/static/images/qiche_tu.jpg" alt=""></a>
                                </div>
                                <div class="silder-main-img">
                                    <a href="#"><img src="/static/images/mm_yif.jpg" alt=""></a>
                                </div>
                                <div class="silder-main-img">
                                    <a href="#"><img src="/static/images/3.png" alt=""></a>
                                </div>
                            </div>
                        </div>
                        <div class="js-silder-ctrl">
                            <span class="silder-ctrl-prev"></span>
                            <span class="silder-ctrl-next"></span>
                        </div>
                    </div>
                    <div class="kuas_daoh kuas_daoh_4">
                        <a href="#">客厅餐厅</a>
                        <a href="#">床衣柜</a>
                        <a href="#">书房儿童</a>
                        <a href="#">五金工具</a>
                        <a href="#">沙发实木</a>
                        <a href="#">床垫</a>
                        <a href="#">电脑桌</a>
                        <a href="#">接线板</a>
                        <a href="#">餐桌餐椅</a>
                        <a href="#">简易衣柜</a>
                        <a href="#">书桌</a>
                        <a href="#">开关插座</a>
                        <a href="#">酒柜餐边</a>
                        <a href="#">乳胶床垫</a>
                        <a href="#">办公桌</a>
                        <a href="#">USB插座</a>
                    </div>
                </div>
                <div class="you_lirb you_lirb_4">
                    <div class="shang_buf">
                        <div class="you_shangp_lieb ">
                            <a href="#"><img  class="you_tup_k" src="/static/images/yic_001.jpg"></a>
                            <a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
                            <span>¥ 2599 .00</span>
                        </div>
                        <div class="you_shangp_lieb">
                            <a href="#"><img  class="you_tup_k" src="/static/images/yic_002.jpg"></a>
                            <a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
                            <span>¥ 2599 .00</span>
                        </div>
                        <div class="you_shangp_lieb cnm">
                            <a href="#"><img  class="you_tup_k" src="/static/images/yic_003.jpg"></a>
                            <a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
                            <span>¥ 2599 .00</span>
                        </div>
                    </div>
                    <div class="xia_buf">
                        <div class="you_shangp_lieb">
                            <a href="#"><img  class="you_tup_k" src="/static/images/yic_004.jpg"></a>
                            <a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
                            <span>¥ 2599 .00</span>
                        </div>
                        <div class="you_shangp_lieb">
                            <a href="#"><img  class="you_tup_k" src="/static/images/yic_003.jpg"></a>
                            <a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
                            <span>¥ 2599 .00</span>
                        </div>
                        <div class="you_shangp_lieb cnm">
                            <a href="#"><img  class="you_tup_k" src="/static/images/yic_005.jpg"></a>
                            <a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
                            <span>¥ 2599 .00</span>
                        </div>
                    </div>
                </div>
            </ul>
            <ul>
                <div class="pangb_daoh">
                    <h1><a href="#"><img src="/static/images/de111.jpg"></a></h1>
                    <div class="kuas_daoh_houm kuas_daoh_houm_4">
                        <a href="#">客厅餐厅</a>
                        <a href="#">床衣柜</a>
                        <a href="#">书房儿童</a>
                        <a href="#">五金工具</a>
                        <a href="#">沙发实木</a>
                        <a href="#">床垫</a>
                        <a href="#">电脑桌</a>
                        <a href="#">接线板</a>
                        <a href="#">餐桌餐椅</a>
                        <a href="#">简易衣柜</a>
                        <a href="#">书桌</a>
                        <a href="#">开关插座</a>
                        <a href="#">酒柜餐边</a>
                        <a href="#">乳胶床垫</a>
                        <a href="#">办公桌</a>
                        <a href="#">USB插座</a>
                    </div>
                </div>
                <div class="you_lirb you_lirb_hou you_lirb_4">
                    <div class="shang_buf">
                        <div class="you_shangp_lieb ">
                            <a href="#"><img  class="you_tup_k" src="/static/images/yic_001.jpg"></a>
                            <a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
                            <span>¥ 2599 .00</span>
                        </div>
                        <div class="you_shangp_lieb">
                            <a href="#"><img  class="you_tup_k" src="/static/images/yic_002.jpg"></a>
                            <a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
                            <span>¥ 2599 .00</span>
                        </div>
                        <div class="you_shangp_lieb ">
                            <a href="#"><img  class="you_tup_k" src="/static/images/yic_001.jpg"></a>
                            <a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
                            <span>¥ 2599 .00</span>
                        </div>
                        <div class="you_shangp_lieb cnm">
                            <a href="#"><img  class="you_tup_k" src="/static/images/yic_003.jpg"></a>
                            <a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
                            <span>¥ 2599 .00</span>
                        </div>
                    </div>
                    <div class="xia_buf">
                        <div class="you_shangp_lieb">
                            <a href="#"><img  class="you_tup_k" src="/static/images/yic_004.jpg"></a>
                            <a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
                            <span>¥ 2599 .00</span>
                        </div>
                        <div class="you_shangp_lieb">
                            <a href="#"><img  class="you_tup_k" src="/static/images/yic_003.jpg"></a>
                            <a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
                            <span>¥ 2599 .00</span>
                        </div>
                        <div class="you_shangp_lieb">
                            <a href="#"><img  class="you_tup_k" src="/static/images/yic_004.jpg"></a>
                            <a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
                            <span>¥ 2599 .00</span>
                        </div>
                        <div class="you_shangp_lieb cnm">
                            <a href="#"><img  class="you_tup_k" src="/static/images/yic_005.jpg"></a>
                            <a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
                            <span>¥ 2599 .00</span>
                        </div>
                    </div>
                </div>
            </ul>
            <ul>
                <div class="pangb_daoh">
                    <h1><a href="#"><img src="/static/images/de111.jpg"></a></h1>
                    <div class="kuas_daoh_houm kuas_daoh_houm_4">
                        <a href="#">客厅餐厅</a>
                        <a href="#">床衣柜</a>
                        <a href="#">书房儿童</a>
                        <a href="#">五金工具</a>
                        <a href="#">沙发实木</a>
                        <a href="#">床垫</a>
                        <a href="#">电脑桌</a>
                        <a href="#">接线板</a>
                        <a href="#">餐桌餐椅</a>
                        <a href="#">简易衣柜</a>
                        <a href="#">书桌</a>
                        <a href="#">开关插座</a>
                        <a href="#">酒柜餐边</a>
                        <a href="#">乳胶床垫</a>
                        <a href="#">办公桌</a>
                        <a href="#">USB插座</a>
                    </div>
                </div>
                <div class="you_lirb you_lirb_hou you_lirb_4">
                    <div class="shang_buf">
                        <div class="you_shangp_lieb ">
                            <a href="#"><img  class="you_tup_k" src="/static/images/yic_001.jpg"></a>
                            <a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
                            <span>¥ 2599 .00</span>
                        </div>
                        <div class="you_shangp_lieb">
                            <a href="#"><img  class="you_tup_k" src="/static/images/yic_002.jpg"></a>
                            <a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
                            <span>¥ 2599 .00</span>
                        </div>
                        <div class="you_shangp_lieb ">
                            <a href="#"><img  class="you_tup_k" src="/static/images/yic_001.jpg"></a>
                            <a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
                            <span>¥ 2599 .00</span>
                        </div>
                        <div class="you_shangp_lieb cnm">
                            <a href="#"><img  class="you_tup_k" src="/static/images/yic_003.jpg"></a>
                            <a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
                            <span>¥ 2599 .00</span>
                        </div>
                    </div>
                    <div class="xia_buf">
                        <div class="you_shangp_lieb">
                            <a href="#"><img  class="you_tup_k" src="/static/images/yic_004.jpg"></a>
                            <a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
                            <span>¥ 2599 .00</span>
                        </div>
                        <div class="you_shangp_lieb">
                            <a href="#"><img  class="you_tup_k" src="/static/images/yic_003.jpg"></a>
                            <a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
                            <span>¥ 2599 .00</span>
                        </div>
                        <div class="you_shangp_lieb">
                            <a href="#"><img  class="you_tup_k" src="/static/images/yic_004.jpg"></a>
                            <a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
                            <span>¥ 2599 .00</span>
                        </div>
                        <div class="you_shangp_lieb cnm">
                            <a href="#"><img  class="you_tup_k" src="/static/images/yic_005.jpg"></a>
                            <a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
                            <span>¥ 2599 .00</span>
                        </div>
                    </div>
                </div>
            </ul>
            <ul>
                <div class="pangb_daoh">
                    <h1><a href="#"><img src="/static/images/de111.jpg"></a></h1>
                    <div class="kuas_daoh_houm kuas_daoh_houm_4">
                        <a href="#">客厅餐厅</a>
                        <a href="#">床衣柜</a>
                        <a href="#">书房儿童</a>
                        <a href="#">五金工具</a>
                        <a href="#">沙发实木</a>
                        <a href="#">床垫</a>
                        <a href="#">电脑桌</a>
                        <a href="#">接线板</a>
                        <a href="#">餐桌餐椅</a>
                        <a href="#">简易衣柜</a>
                        <a href="#">书桌</a>
                        <a href="#">开关插座</a>
                        <a href="#">酒柜餐边</a>
                        <a href="#">乳胶床垫</a>
                        <a href="#">办公桌</a>
                        <a href="#">USB插座</a>
                    </div>
                </div>
                <div class="you_lirb you_lirb_hou you_lirb_4">
                    <div class="shang_buf">
                        <div class="you_shangp_lieb ">
                            <a href="#"><img  class="you_tup_k" src="/static/images/yic_001.jpg"></a>
                            <a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
                            <span>¥ 2599 .00</span>
                        </div>
                        <div class="you_shangp_lieb">
                            <a href="#"><img  class="you_tup_k" src="/static/images/yic_002.jpg"></a>
                            <a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
                            <span>¥ 2599 .00</span>
                        </div>
                        <div class="you_shangp_lieb ">
                            <a href="#"><img  class="you_tup_k" src="/static/images/yic_001.jpg"></a>
                            <a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
                            <span>¥ 2599 .00</span>
                        </div>
                        <div class="you_shangp_lieb cnm">
                            <a href="#"><img  class="you_tup_k" src="/static/images/yic_003.jpg"></a>
                            <a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
                            <span>¥ 2599 .00</span>
                        </div>
                    </div>
                    <div class="xia_buf">
                        <div class="you_shangp_lieb">
                            <a href="#"><img  class="you_tup_k" src="/static/images/yic_004.jpg"></a>
                            <a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
                            <span>¥ 2599 .00</span>
                        </div>
                        <div class="you_shangp_lieb">
                            <a href="#"><img  class="you_tup_k" src="/static/images/yic_003.jpg"></a>
                            <a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
                            <span>¥ 2599 .00</span>
                        </div>
                        <div class="you_shangp_lieb">
                            <a href="#"><img  class="you_tup_k" src="/static/images/yic_004.jpg"></a>
                            <a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
                            <span>¥ 2599 .00</span>
                        </div>
                        <div class="you_shangp_lieb cnm">
                            <a href="#"><img  class="you_tup_k" src="/static/images/yic_005.jpg"></a>
                            <a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
                            <span>¥ 2599 .00</span>
                        </div>
                    </div>
                </div>
            </ul>
            <ul>
                <div class="pangb_daoh">
                    <h1><a href="#"><img src="/static/images/de111.jpg"></a></h1>
                    <div class="kuas_daoh_houm kuas_daoh_houm_4">
                        <a href="#">客厅餐厅</a>
                        <a href="#">床衣柜</a>
                        <a href="#">书房儿童</a>
                        <a href="#">五金工具</a>
                        <a href="#">沙发实木</a>
                        <a href="#">床垫</a>
                        <a href="#">电脑桌</a>
                        <a href="#">接线板</a>
                        <a href="#">餐桌餐椅</a>
                        <a href="#">简易衣柜</a>
                        <a href="#">书桌</a>
                        <a href="#">开关插座</a>
                        <a href="#">酒柜餐边</a>
                        <a href="#">乳胶床垫</a>
                        <a href="#">办公桌</a>
                        <a href="#">USB插座</a>
                    </div>
                </div>
                <div class="you_lirb you_lirb_hou you_lirb_4">
                    <div class="shang_buf">
                        <div class="you_shangp_lieb ">
                            <a href="#"><img  class="you_tup_k" src="/static/images/yic_001.jpg"></a>
                            <a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
                            <span>¥ 2599 .00</span>
                        </div>
                        <div class="you_shangp_lieb">
                            <a href="#"><img  class="you_tup_k" src="/static/images/yic_002.jpg"></a>
                            <a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
                            <span>¥ 2599 .00</span>
                        </div>
                        <div class="you_shangp_lieb ">
                            <a href="#"><img  class="you_tup_k" src="/static/images/yic_001.jpg"></a>
                            <a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
                            <span>¥ 2599 .00</span>
                        </div>
                        <div class="you_shangp_lieb cnm">
                            <a href="#"><img  class="you_tup_k" src="/static/images/yic_003.jpg"></a>
                            <a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
                            <span>¥ 2599 .00</span>
                        </div>
                    </div>
                    <div class="xia_buf">
                        <div class="you_shangp_lieb">
                            <a href="#"><img  class="you_tup_k" src="/static/images/yic_004.jpg"></a>
                            <a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
                            <span>¥ 2599 .00</span>
                        </div>
                        <div class="you_shangp_lieb">
                            <a href="#"><img  class="you_tup_k" src="/static/images/yic_003.jpg"></a>
                            <a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
                            <span>¥ 2599 .00</span>
                        </div>
                        <div class="you_shangp_lieb">
                            <a href="#"><img  class="you_tup_k" src="/static/images/yic_004.jpg"></a>
                            <a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
                            <span>¥ 2599 .00</span>
                        </div>
                        <div class="you_shangp_lieb cnm">
                            <a href="#"><img  class="you_tup_k" src="/static/images/yic_005.jpg"></a>
                            <a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
                            <span>¥ 2599 .00</span>
                        </div>
                    </div>
                </div>
            </ul>
            <ul>
                <div class="pangb_daoh">
                    <h1><a href="#"><img src="/static/images/de111.jpg"></a></h1>
                    <div class="kuas_daoh_houm kuas_daoh_houm_4">
                        <a href="#">客厅餐厅</a>
                        <a href="#">床衣柜</a>
                        <a href="#">书房儿童</a>
                        <a href="#">五金工具</a>
                        <a href="#">沙发实木</a>
                        <a href="#">床垫</a>
                        <a href="#">电脑桌</a>
                        <a href="#">接线板</a>
                        <a href="#">餐桌餐椅</a>
                        <a href="#">简易衣柜</a>
                        <a href="#">书桌</a>
                        <a href="#">开关插座</a>
                        <a href="#">酒柜餐边</a>
                        <a href="#">乳胶床垫</a>
                        <a href="#">办公桌</a>
                        <a href="#">USB插座</a>
                    </div>
                </div>
                <div class="you_lirb you_lirb_hou you_lirb_4">
                    <div class="shang_buf">
                        <div class="you_shangp_lieb ">
                            <a href="#"><img  class="you_tup_k" src="/static/images/yic_001.jpg"></a>
                            <a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
                            <span>¥ 2599 .00</span>
                        </div>
                        <div class="you_shangp_lieb">
                            <a href="#"><img  class="you_tup_k" src="/static/images/yic_002.jpg"></a>
                            <a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
                            <span>¥ 2599 .00</span>
                        </div>
                        <div class="you_shangp_lieb ">
                            <a href="#"><img  class="you_tup_k" src="/static/images/yic_001.jpg"></a>
                            <a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
                            <span>¥ 2599 .00</span>
                        </div>
                        <div class="you_shangp_lieb cnm">
                            <a href="#"><img  class="you_tup_k" src="/static/images/yic_003.jpg"></a>
                            <a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
                            <span>¥ 2599 .00</span>
                        </div>
                    </div>
                    <div class="xia_buf">
                        <div class="you_shangp_lieb">
                            <a href="#"><img  class="you_tup_k" src="/static/images/yic_004.jpg"></a>
                            <a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
                            <span>¥ 2599 .00</span>
                        </div>
                        <div class="you_shangp_lieb">
                            <a href="#"><img  class="you_tup_k" src="/static/images/yic_003.jpg"></a>
                            <a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
                            <span>¥ 2599 .00</span>
                        </div>
                        <div class="you_shangp_lieb">
                            <a href="#"><img  class="you_tup_k" src="/static/images/yic_004.jpg"></a>
                            <a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
                            <span>¥ 2599 .00</span>
                        </div>
                        <div class="you_shangp_lieb cnm">
                            <a href="#"><img  class="you_tup_k" src="/static/images/yic_005.jpg"></a>
                            <a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
                            <span>¥ 2599 .00</span>
                        </div>
                    </div>
                </div>
            </ul>
        </div>
    </div>
</div>

<script type="text/javascript">jQuery(".slideTxtBox").slide();</script>
<script type="text/javascript">jQuery(".slideTxtBox2").slide();</script>
<script type="text/javascript">jQuery(".slideTxtBox3").slide();</script>
<script type="text/javascript">jQuery(".slideTxtBox4").slide();</script>

<!--广告图-->
<div class="guangg_tu">
    <a href="#"><img src="/static/images/guang_tu.jpg"></a>
</div>

<!--特色商品/ 热门商品-->
<div class="tes_shnagp_beij">
    <div class="tes_shangp">
        <div class="neir_biaot">
            <p>特色商品</p>
            <p class="yingw">featured</p>
            <a href="#">MORE+</a>
        </div>
        <div class="tes_shangp_neir_k">
            <div class="tes_dat">
                <a href="#">
                    <h1><img class="tes_dat_dongh" src="/static/images/te_se_shangp_da.jpg"></h1>
                    <h2>苹果手机iPhone6(32G)全网</h2>
                    <span>¥ 4999 .00</span>
                </a>
            </div>
            <div class="tes_xiaot_beij">
                <div class="tes_xiaot_shang">
                    <div class="tes_xiaot_neir">
                        <a href="#">
                            <h1><img class="tes_xiaot_dongh" src="/static/images/tes_shangp_xiao.jpg"></h1>
                            <h2>海尔(Haier) BCD452WDPF 452</h2>
                            <span>¥ 506 .00</span>
                        </a>
                    </div>
                    <div class="tes_xiaot_neir tes_xiaot_wubian_kuang">
                        <a href="#">
                            <h1><img class="tes_xiaot_dongh" src="/static/images/tes_shangp_xiao2.jpg"></h1>
                            <h2>海尔(Haier) BCD452WDPF 452</h2>
                            <span>¥ 506 .00</span>
                        </a>
                    </div>
                </div>
                <div class="tes_xiaot_shang tes_xiaot_xia">
                    <div class="tes_xiaot_neir">
                        <a href="#">
                            <h1><img class="tes_xiaot_dongh" src="/static/images/tes_shangp_xiao3.jpg"></h1>
                            <h2>海尔(Haier) BCD452WDPF 452</h2>
                            <span>¥ 506 .00</span>
                        </a>
                    </div>
                    <div class="tes_xiaot_neir tes_xiaot_wubian_kuang">
                        <a href="#">
                            <h1><img class="tes_xiaot_dongh" src="/static/images/tes_shangp_xiao4.jpg"></h1>
                            <h2>海尔(Haier) BCD452WDPF 452</h2>
                            <span>¥ 506 .00</span>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="rem_shangp">
        <div class="neir_biaot">
            <p>热门商品</p>
            <p class="yingw">Hot commodity</p>
            <a href="#">MORE+</a>
        </div>
        <div class="rem_shangp_beij_k">
            <!---->
            <div class="picScroll_left">
                <div class="hd">
                    <ul></ul>
                </div>
                <div class="bd">
                    <ul class="picList">
                        <li>
                            <div class="pic"><a href="#" target="_blank"><img src="/static/images/rem_shangp.jpg" /></a></div>
                            <div class="title"><a href="#" target="_blank">佳能(Canon)EOS80D单反套机</a><span>¥ 506 .00</span></div>
                        </li>
                        <li>
                            <div class="pic"><a href="#" target="_blank"><img src="/static/images/rem_shangp1.jpg" /></a></div>
                            <div class="title"><a href="#" target="_blank">佳能(Canon)EOS80D单反套机</a><span>¥ 7940 .00</span></div>
                        </li>
                        <li>
                            <div class="pic"><a href="#" target="_blank"><img src="/static/images/rem_shangp.jpg" /></a></div>
                            <div class="title"><a href="#" target="_blank">佳能(Canon)EOS80D单反套机</a><span>¥ 506 .00</span></div>
                        </li>
                        <li>
                            <div class="pic"><a href="#" target="_blank"><img src="/static/images/rem_shangp1.jpg" /></a></div>
                            <div class="title"><a href="#" target="_blank">佳能(Canon)EOS80D单反套机</a><span>¥ 7940 .00</span></div>
                        </li>
                        <li>
                            <div class="pic"><a href="#" target="_blank"><img src="/static/images/rem_shangp1.jpg" /></a></div>
                            <div class="title"><a href="#" target="_blank">佳能(Canon)EOS80D单反套机</a><span>¥ 506 .00</span></div>
                        </li>
                        <li>
                            <div class="pic"><a href="#" target="_blank"><img src="/static/images/rem_shangp1.jpg" /></a></div>
                            <div class="title"><a href="#" target="_blank">佳能(Canon)EOS80D单反套机</a><span>¥ 7940 .00</span></div>
                        </li>
                    </ul>
                </div>
            </div>
            <!---->
        </div>
    </div>
</div>

<script type="text/javascript">
    jQuery(".picScroll_left").slide({titCell:".hd ul",mainCell:".bd ul",autoPage:true,effect:"left",autoPlay:true,vis:2 ,trigger:"click"});
</script>

<!--底部-->
<div class="dib_beij">
    <div class="dib_jvz_beij">
        <div class="shangp_baoz">
            <p>本地购物&nbsp;&nbsp;看得见的商品</p>
            <p class="beng1">正品行货&nbsp;&nbsp;购物无忧</p>
            <p class="beng2">低价实惠&nbsp;&nbsp;帮你省钱</p>
            <p class="beng3">本地直发&nbsp;&nbsp;专业配送</p>
        </div>
        <div class="zhongj_youx">
            <div class="lieb_daoh">
                <h4>物流配送</h4>
                <ul>
                    <li><a href="#">配送查询</a></li>
                    <li><a href="#">配送服务</a></li>
                    <li><a href="#">配送费用</a></li>
                    <li><a href="#">配送时效</a></li>
                    <li><a href="#">签收与验货</a></li>
                </ul>
            </div>
            <div class="lieb_daoh">
                <h4>支付与账户</h4>
                <ul>
                    <li><a href="#">货到付款</a></li>
                    <li><a href="#">在线支付</a></li>
                    <li><a href="#">门店支付</a></li>
                    <li><a href="#">账户安全</a></li>
                </ul>
            </div>
            <div class="lieb_daoh">
                <h4>购物帮助</h4>
                <ul>
                    <li><a href="#">购物保障</a></li>
                    <li><a href="#">购物流程</a></li>
                    <li><a href="#">焦点问题</a></li>
                    <li><a href="#">联系我们</a></li>
                </ul>
            </div>
            <div class="lieb_daoh">
                <h4>售后服务</h4>
                <ul>
                    <li><a href="#">退换货服务</a></li>
                    <li><a href="#">退款说明</a></li>
                    <li><a href="#">专业维修</a></li>
                    <li><a href="#">延保服务</a></li>
                    <li><a href="#">家电回收</a></li>
                </ul>
            </div>
            <div class="lieb_daoh">
                <div class="kef_dianh">
                    <p>客服电话</p><span>400-0250-250</span>
                </div>
                <div class="kef_dianh kef_dianh_youx">
                    <p>意见收集邮箱</p><p>topsale@vip.qq.com</p>
                </div>
            </div>
            <div class="lieb_daoh lieb_daoh_you">
                <div class="erw_ma_beij">
                    <div class="erw_m">
                        <h1><img src="/static/images/mb_wangid.png"></h1>
                        <span>扫码下载MyShop客户端</span>
                    </div>
                    <div class="erw_m">
                        <h1><img src="/static/images/mb_wangid.png"></h1>
                        <span>扫码下载MyShop客户端</span>
                    </div>
                </div>
            </div>
        </div>
        <div class="beia_hao">
            <p>京ICP备：123456789号  </p>
            <p class="gonga_bei">京公网安备：123456789号</p>
            <div class="renz_">
                <span></span>
                <span class="span1"></span>
                <span class="span2"></span>
                <span class="span3"></span>
            </div>
        </div>
    </div>
</div>
</body>
</html>