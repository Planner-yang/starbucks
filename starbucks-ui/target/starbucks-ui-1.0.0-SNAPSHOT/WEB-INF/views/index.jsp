<%--
  Created by IntelliJ IDEA.
  User: Planner
  Date: 2018/9/25
  Time: 11:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<!-- saved from url=(0029)https://www.starbucks.com.cn/ -->
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <script type="text/javascript" async="" src="/static/assets/js/analytics.js"></script>
    <script src="/static/assets/js/hm.js"></script>
    <script async="" src="/static/assets/js/gtm.js"></script>
    <script>window.dataLayer = [];</script>
    <!-- Google Tag Manager -->
    <script>(function (w, d, s, l, i) {
        w[l] = w[l] || [];
        w[l].push({
            'gtm.start':
                new Date().getTime(), event: 'gtm.js'
        });
        var f = d.getElementsByTagName(s)[0],
            j = d.createElement(s), dl = l != 'dataLayer' ? '&l=' + l : '';
        j.async = true;
        j.src =
            'https://www.googletagmanager.com/gtm.js?id=' + i + dl;
        f.parentNode.insertBefore(j, f);
    })(window, document, 'script', 'dataLayer', 'GTM-MGKBKT5');</script>
    <!-- End Google Tag Manager -->

    <script>
        var _hmt = _hmt || [];
        (function () {
            var hm = document.createElement('script');
            hm.src = 'https://hm.baidu.com/hm.js?8dfa8fb7ffbd0407c8562282198066a6';
            var s = document.getElementsByTagName('script')[0];
            s.parentNode.insertBefore(hm, s);
        })();
    </script>


    <title>星巴克 | 用每一杯咖啡传递星巴克独特的咖啡体验</title>

    <!-- Meta -->


    <meta http-equiv="Content-Language" content="zh">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="keywords" content="">
    <meta name="description" content="欢迎访问星巴克中国官网。">
    <meta name="baidu-site-verification" content="u7Vir8pZFL">
    <link rel="canonical" href="https://www.starbucks.com.cn/">

    <!-- Open graph -->
    <meta property="og:site_name" content="星巴克">
    <meta property="og:type" content="website">
    <meta property="og:title" content="用每一杯咖啡传递星巴克独特的咖啡体验">
    <meta property="og:url" content="/">
    <meta property="og:description" content="欢迎访问星巴克中国官网。">
    <meta property="og:image" content="">

    <!-- Twitter card -->
    <meta name="twitter:card" content="summary_large_image">
    <meta name="twitter:site" content="{&quot;username&quot;=&gt;&quot;@starbucks&quot;}">
    <meta name="twitter:title" content="用每一杯咖啡传递星巴克独特的咖啡体验">
    <meta name="twitter:description" content="欢迎访问星巴克中国官网。">
    <meta name="twitter:image" content="">

    <!-- WeChat sharing -->
    <script>
        var WECHAT_TITLE = '星巴克官网: 用每一杯咖啡传递星巴克独特的咖啡体验';
        var WECHAT_DESC = '欢迎访问星巴克中国官网。';
        var WECHAT_IMAGE = '/assets/images/wechat.png';
        var WCHAT_NO_GA = '';
    </script>


    <!-- Favicons -->
    <link rel="apple-touch-icon" sizes="180x180"
          href="https://www.starbucks.com.cn/assets/favicons/apple-touch-icon.png">
    <link rel="icon" type="image/png" href="https://www.starbucks.com.cn/assets/favicons/favicon-32x32.png"
          sizes="32x32">
    <link rel="icon" type="image/png" href="https://www.starbucks.com.cn/assets/favicons/favicon-16x16.png"
          sizes="16x16">
    <link rel="manifest" href="https://www.starbucks.com.cn/assets/favicons/manifest.json">
    <link rel="mask-icon" href="https://www.starbucks.com.cn/assets/favicons/safari-pinned-tab.svg" color="#ef233c">
    <link rel="shortcut icon" href="https://www.starbucks.com.cn/assets/favicons/favicon.ico">
    <%--<meta name="msapplication-config" content="/assets/favicons/browserconfig.xml">--%>
    <meta name="theme-color" content="#ffffff">


    <!-- CSS -->
    <link rel="stylesheet" href="/static/assets/css/styles.css">
</head>

<body class="lang-zh page-front chrome non-logged-in" ontouchstart="">
<!-- Google Tag Manager (noscript) -->
<noscript>
    <iframe src='https://www.googletagmanager.com/ns.html?id=GTM-MGKBKT5'
            height='0' width='0' style='display:none;visibility:hidden'></iframe>
</noscript>
<!-- End Google Tag Manager (noscript) -->

<script>
    var isChrome = ((navigator.userAgent.toLowerCase().indexOf('chrome') > -1) && (navigator.vendor.toLowerCase().indexOf('google') > -1) || navigator.userAgent.match('CriOS'));
    if (isChrome) document.body.classList.add('chrome');
</script>

<div id="app-view-wrapper">
    <!-- Navigation panel -->


    <nav id="nav">
        <div class="container">
            <header class="header">
                <a class="logo" href="#">
                    <img src="/static/assets/images/logo.svg" alt="星巴克">
                </a>
                <div class="primary">
                    <ul>

                        <li class="stores">
                            <a id="stores-primary" href="#">
                                门店
                            </a>
                        </li>

                        <li class="account">
                            <a id="account-primary" href="/login"><span data-reactroot="" class="">我的帐户</span></a>
                        </li>

                        <li class="menu">
                            <a id="menu-primary" href="/menu">
                                菜单
                            </a>
                        </li>

                    </ul>
                </div>

                <a class="icon trigger" rel="nav-overlay" id="nav-menu">
                    <img src="/static/assets/images/icon-hamburger.svg">
                    <span>更多</span>
                </a>

            </header>

            <div class="body">
                <div class="container middle secondary">
                    <div data-reactroot=""><span><div class="display-1"><span>心情惬意，来杯咖啡吧&nbsp;☕</span></div><footer
                            class="account margin2 mobile-hidden"><a class="sign-in"
                                                                     href="/login"><img
                            src="/static/assets/images/icon-account.svg"><span><span>登录</span></span></a><a
                            class="button small register"
                            href="/register"><span><span>注册</span></span></a></footer></span>
                    </div>
                </div>
            </div>
        </div>


        <div class="overlay " id="nav-overlay">
            <div class="container">
                <header class="header">
                    <a class="logo" href="/main">
                        <img src="/static/assets/images/logo.svg" alt="星巴克">
                    </a>
                    <button class="icon close">Close</button>
                </header>
                <section class="body">
                    <div class="container middle">
                        <ul>

                            <li>
                                <a id="stores-overlay" href="#">
                                    门店
                                </a>
                            </li>


                            <li>
                                <a id="account-overlay" href="#"><span data-reactroot="" class="">星享俱乐部</span></a>
                            </li>


                            <li>
                                <a id="menu-overlay" href="#">
                                    菜单
                                </a>
                            </li>
                            <li>
                                <hr>
                            </li>

                            <li>
                                <a id="apps-overlay" href="#">
                                    星巴克移动应用
                                </a>
                            </li>


                            <li>
                                <a id="svc-overlay" href="#">
                                    星礼卡
                                </a>
                            </li>


                            <li>
                                <a id="starbucks_reserve-overlay" href="#">
                                    星巴克臻选™
                                </a>
                            </li>


                            <li>
                                <a id="starbucks_delivery-overlay" href="#">
                                    专星送™
                                </a>
                            </li>


                            <li>
                                <a id="coffeehouse-overlay" href="#" target="_blank">
                                    咖啡星讲堂
                                </a>
                            </li>


                            <li>
                                <a id="roastery-overlay" href="#" target="_blank">
                                    上海烘焙工坊
                                </a>
                            </li>


                            <li>
                                <a id="about-overlay" href="#">
                                    关于星巴克
                                </a>
                            </li>


                            <li>
                                <a id="help-overlay" href="#">
                                    帮助中心
                                </a>
                            </li>


                            <li>
                                <hr>
                            </li>
                        </ul>
                        <footer class="account">
                            <div><span data-reactroot=""><a id="menu-login" class="sign-in"
                                                                                href="/login"><img
                                    src="/static/assets/images/icon-account.svg"><span><span>登录</span></span></a><a
                                    id="menu-join" class="button small register"
                                    href="/register"><span><span>注册</span></span></a></span>
                            </div>
                        </footer>
                    </div>
                </section>
                <footer class="footer">
                    <div class="container">


                        <a id="en-collapse" class="lang"
                           href="javascript:void(window.location.pathname = &quot;/en/&quot;)">
                            English
                        </a>


                        |
                        <a id="privacy-collapse" href="#">
                            隐私政策
                        </a>
                        |
                        <a id="terms-collapse" href="#">
                            使用条款
                        </a>
                        <div class="legal">
                            <div class="license">
  <span>
    <a href="http://www.beian.gov.cn/portal/registerSystemInfo?recordcode=31010402000318" target="_blank">
      <img width="10" height="10" src="/static/assets/images/icpicon.png">&nbsp;沪公网安备 31010402000318号
    </a>
  </span> |
                                <a href="http://www.miibeian.gov.cn/" target="_blank">沪ICP备17003747号</a>
                            </div>
                            <!-- <div class='copyright'>© 2017 Starbucks Corporation.</div> -->

                        </div>
                    </div>
                </footer>
            </div>
        </div>

    </nav>


    <!-- Page content -->
    <section id="content">
        <div class="tag_ad">广告</div>
        <section class="hero">
            <div class="carousel-home slick-initialized slick-slider">
                <button type="button" data-role="none" class="slick-prev slick-arrow" aria-label="Previous"
                        role="button" style="display: inline-block;">Previous
                </button>
                <div aria-live="polite" class="slick-list draggable">
                    <div class="slick-track" role="listbox"
                         style="opacity: 1; width: 5315px; transform: translate3d(-2126px, 0px, 0px); transition: transform 500ms linear 0s;">
                        <div class="slick-slide slick-cloned" data-slick-index="-1" aria-hidden="true" tabindex="-1"
                             style="width: 1063px;"><span id="" class="block relative"><span></span><img
                                src="/static/assets/images/fp-cold-foam.jpg" class="tablet-block mobile-hidden"><img
                                src="/static/assets/images/fp-cold-mobile.jpg" class="show-mobile tablet-hidden"></span>
                        </div>
                        <div class="slick-slide" data-slick-index="0" aria-hidden="true" tabindex="-1" role="option"
                             aria-describedby="slick-slide00" style="width: 1063px;"><a id="home-campaign-1"
                                                                                        href="https://www.starbucks.com.cn/menu/"
                                                                                        class="block relative"
                                                                                        tabindex="0"><span
                                class="animated"></span><img src="/static/assets/images/kv-bever.jpg"
                                                             class="tablet-block mobile-hidden"><img
                                src="/static/assets/images/kv-bever-mobile.jpg" class="show-mobile tablet-hidden"></a>
                        </div>
                        <div class="slick-slide slick-current slick-active" data-slick-index="1" aria-hidden="false"
                             tabindex="-1" role="option" aria-describedby="slick-slide01" style="width: 1063px;"><a
                                id="home-campaign-2" href="https://www.starbucks.com.cn/menu/food/2018-moon-cake/"
                                class="block relative" tabindex="-1"><span></span><img
                                src="/static/assets/images/kv-mooncake.jpg" class="tablet-block mobile-hidden"><img
                                src="/static/assets/images/kv-mooncake-mobile.jpg"
                                class="show-mobile tablet-hidden"></a></div>
                        <div class="slick-slide" data-slick-index="2" aria-hidden="true" tabindex="-1" role="option"
                             aria-describedby="slick-slide02" style="width: 1063px;"><span id="home-campaign-3"
                                                                                           class="block relative"><span></span><img
                                src="/static/assets/images/fp-cold-foam.jpg" class="tablet-block mobile-hidden"><img
                                src="/static/assets/images/fp-cold-mobile.jpg" class="show-mobile tablet-hidden"></span>
                        </div>
                        <div class="slick-slide slick-cloned" data-slick-index="3" aria-hidden="true" tabindex="-1"
                             style="width: 1063px;"><a id="" href="https://www.starbucks.com.cn/menu/"
                                                       class="block relative" tabindex="-1"><span></span><img
                                src="/static/assets/images/kv-bever.jpg" class="tablet-block mobile-hidden"><img
                                src="/static/assets/images/kv-bever-mobile.jpg" class="show-mobile tablet-hidden"></a>
                        </div>
                    </div>
                </div>


                <button type="button" data-role="none" class="slick-next slick-arrow" aria-label="Next" role="button"
                        style="display: block;">Next
                </button>
            </div>
        </section>

        <section class="promotion">
            <div class="wrapper fluid">
                <div class="grid columns-3 padded-2">
                    <a id="home-left-campaign" href="http://tb.cn/yoaztMw"
                       onclick="if (window.innerWidth &gt;= 800) this.href=&quot;http://starbucks.tmall.com/p/rd462644.htm&quot;;"
                       target="_blank"><img src="/static/assets/images/starbucks-tmall-0910-cn.jpg"></a>
                    <a id="home-middle-campaign" href="#" target="_blank"><img
                            src="/static/assets/images/starbucks-design-studio-web-china.jpg"></a>
                    <a id="home-right-campaign" href="#" target="_blank"><img
                            src="/static/assets/images/homepage-career-cn.jpg"></a>
                </div>
            </div>
        </section>

        <script type="text/javascript">
            window._promotion_url = '';
            window._promotion_content = '';
        </script>

        <section class="program-msr bg-white">
            <div class="wrapper">
                <div class="grid columns-2 padded-2">
                    <div>
                        <h2 class="wrapper-mobile">星享俱乐部</h2>
                        <p class="light wrapper-mobile">开启您的星享之旅，星星越多、会员等级越高、好礼越丰富。<a id="home-msr-learn-more"
                                                                                      class="button link" href="#">了解更多
                            ›</a></p>
                        <p class="flex flex-wrap justify-center tablet-justify-start items-center wrapper-mobile margin-b0">
                            <a id="home-msr-signup" href="#" class="button unlogged-in-element">注册</a><a
                                id="home-msr-login" href="#" class="button secondary unlogged-in-element">登录</a>
                        </p>
                    </div>
                    <div class="image">
                        <img src="/static/assets/images/logo-msr.svg">
                    </div>
                </div>
            </div>
        </section>

        <section class="tmall center">
            <div class="wrapper">
                <h2 class="wrapper-mobile">星巴克精选</h2>
                <p class="light wrapper-mobile">在星巴克天猫旗舰店发现更多咖啡心意</p>
                <ul class="grid columns-4 padded-2">
                    <li>
                        <a id="home-tmall-msr"
                           href="https://starbucks.m.tmall.com/shop/shop_auction_search.htm?spm=a320p.7692363.0.0.6ba91f1bBOpOVL&amp;sort=default&amp;shop_cn=%E5%AE%9E%E4%BD%93%E6%98%9F%E4%BA%AB%E5%8D%A1&amp;ascid=1275566404&amp;scid=1275566404"
                           onclick="if (window.innerWidth &gt;= 800) this.href= &quot;https://starbucks.tmall.com/p/rd515396.htm?spm=a1z10.1-b-s.w5001-14489348230.7.MtuIoi&quot;;"
                           target="_blank">
                            <img src="/static/assets/images/tmall-card-01.png">
                            <p class="title-1"><strong>星享卡</strong></p>
                            <p class="margin2">开始您的<br>星巴克专属之旅</p>
                            <p class="caption">了解更多 ›</p>
                        </a>
                    </li>
                    <li>
                        <a id="home-tmall-svc"
                           href="https://starbucks.m.tmall.com/shop/shop_auction_search.htm?spm=a1z60.7754813.0.0.55b01f1b3ATuTF&amp;sort=default&amp;shop_cn=%E8%99%9A%E6%8B%9F%E6%98%9F%E7%A4%BC%E5%8D%A1&amp;ascid=1275566403&amp;scid=1275566403"
                           onclick="if (window.innerWidth &gt;= 800) this.href= &quot;https://starbucks.tmall.com/p/rd993825.htm?spm=a1z10.1-b-s.w5001-14489348230.6.MtuIoi&quot;;"
                           target="_blank">
                            <img src="/static/assets/images/tmall-card-02.png">
                            <p class="title-1"><strong>星礼卡</strong></p>
                            <p class="margin2">用一份心礼<br>让心意相随</p>
                            <p class="caption">了解更多 ›</p>
                        </a>
                    </li>
                    <li>
                        <a id="home-tmall-drink"
                           href="https://starbucks.m.tmall.com/shop/shop_auction_search.htm?spm=a1z60.7754813.0.0.387c1f1bxr89O6&amp;sort=default&amp;shop_cn=%E7%94%B5%E5%AD%90%E9%A5%AE%E5%93%81%E5%88%B8&amp;ascid=1275566407&amp;scid=1275566407"
                           onclick="if (window.innerWidth &gt;= 800) this.href= &quot;https://starbucks.tmall.com/p/rd103766.htm?spm=a1z10.1-b-s.w5001-14489348230.8.MtuIoi&quot;;"
                           target="_blank">
                            <img src="/static/assets/images/tmall-eticket.png">
                            <p class="title-1"><strong>电子产品券</strong></p>
                            <p class="margin2">心意<br>从这一杯开始</p>
                            <p class="caption">了解更多 ›</p>
                        </a>
                    </li>
                    <li>
                        <a id="home-tmall-coffee"
                           href="https://starbucks.m.tmall.com/shop/shop_auction_search.htm?spm=a320p.7692363.0.0.7159451a5M4FwA&amp;sort=default&amp;shop_cn=%E5%92%96%E5%95%A1&amp;ascid=1356509430&amp;scid=1356509430"
                           onclick="if (window.innerWidth &gt;= 800) this.href= &quot;https://starbucks.tmall.com/category-1141443816.htm?spm=a1z10.1-b-s.w4006-14489348233.10.MtuIoi&quot;;"
                           target="_blank">
                            <img src="/static/assets/images/tmall-reserve.png">
                            <p class="title-1"><strong>咖啡生活</strong></p>
                            <p class="margin2">星巴克<br>用心制作</p>
                            <p class="caption">了解更多 ›</p>
                        </a>
                    </li>
                </ul>
            </div>
        </section>
        <section class="coffeehouse">
            <div class="wrapper center">
                <h2 class="wrapper-mobile">1912 派克街 | 咖啡星讲堂</h2>
                <p class="light wrapper-mobile">了解更多星巴克咖啡文化</p>
            </div>
            <div class="scroll-wrapper">
                <div class="scroll-arrow scroll-arrow-left hidden">
                    <img src="/static/assets/images/icon-scroll-left.svg">
                </div>
                <div class="scroll">
                    <div class="wrapper">
                        <div class="scroll-items">
                            <a id="home-blog-origin" target="_blank" href="#" class="thumbnail rect card">
                                <div class="preview"
                                     style="background-image: url(/static/assets/images/coffeehouse-coffee-cultivation-kv.jpg)"></div>
                                <span class="tag">咖啡知识</span>
                                <!-- <time>08/07/2017</time> -->
                                <strong>咖啡的起源与培植</strong>
                            </a>
                            <a id="home-blog-fundamentals" target="_blank" href="#" class="thumbnail rect card">
                                <div class="preview"
                                     style="background-image: url(/assets/images/homepage/coffeehouse-4-fundamentals-kv.jpg)"></div>
                                <span class="tag">咖啡品鉴</span>
                                <!-- <time>08/07/2017</time> -->
                                <strong>咖啡调制</strong>
                            </a>
                            <a id="home-blog-roast" target="_blank" href="#" class="thumbnail rect card">
                                <div class="preview"
                                     style="background-image: url(/assets/images/homepage/coffeehouse-roast-story-kv.jpg)"></div>
                                <span class="tag">咖啡知识</span>
                                <!-- <time>08/07/2017</time> -->
                                <strong>咖啡烘焙</strong>
                            </a>
                            <a id="home-blog-pour" target="_blank" href="#" class="thumbnail rect card">
                                <div class="preview"
                                     style="background-image: url(/assets/images/homepage/coffeehouse-pour-over-kv.jpg)"></div>
                                <span class="tag">咖啡品鉴</span>
                                <!-- <time>08/07/2017</time> -->
                                <strong>手冲咖啡</strong>
                            </a>
                        </div>
                    </div>
                </div>
                <div class="scroll-arrow scroll-arrow-right">
                    <img src="/static/assets/images/icon-scroll-right.svg">
                </div>
            </div>
        </section>
    </section>
</div>


<div id="app-notification">
    <div data-reactroot=""></div>
</div>


<div id="app-loading">
    <div data-reactroot="" class="loading"></div>
</div>
<div id="app-auth"><span data-reactroot=""></span></div>


<!-- Navigation bottom mobile -->
<div class="primary-mobile">
    <ul class="flex justify-around logging-in-element">

        <li class="home" id="home-mobile">
            <a href="/main">
        <span class="icons">
          <img src="/static/assets/images/icon-home.svg">
          <img src="/static/assets/images/icon-home-active.svg" class="active">
        </span>
                <div id="home-mobile">主页</div>
            </a>
        </li>

        <li class="stores" id="stores-mobile">
            <a href="#">
        <span class="icons">
          <img src="/static/assets/images/icon-stores.svg">
          <img src="/static/assets/images/icon-stores-active.svg" class="active">
        </span>
                <div id="stores-mobile">门店</div>
            </a>
        </li>

        <li class="account">
            <a href="/login" class="active">
        <span class="icons">
          <img src="/static/assets/images/icon-account.svg">
          <img src="/static/assets/images/icon-account-active.svg" class="active">
        </span>
                <div id="account-mobile"><span data-reactroot="" class="">我的帐户</span></div>
            </a>
        </li>

        <li class="menu" id="menu-mobile">
            <a href="/menu">
        <span class="icons">
          <img src="/static/assets/images/icon-menu.svg">
          <img src="/static/assets/images/icon-menu-active.svg" class="active">
        </span>
                <div>菜单</div>
            </a>
        </li>

        <li class="more" id="more-mobile">
            <a class="icon trigger" rel="nav-overlay">
        <span class="icons">
          <img src="/static/assets/images/icon-more.svg">
          <img src="/static/assets/images/icon-more-active.svg" class="active">
        </span>
                <div>更多</div>
            </a>
        </li>
    </ul>
</div>



<!-- Javascript -->
<!--[if lt IE 9]>
<script src='https://html5shim.googlecode.com/svn/trunk/html5.js'></script><![endif]-->
<script>
    var PAGE_LANG = 'zh';
    var PAGE_TITLE = '用每一杯咖啡传递星巴克独特的咖啡体验';
    var PAGE_URL = '/';
    var SEARCH_EMPTY = '未找到结果，猜你喜欢';
    var SEARCH_POPULAR = '大家都在搜';
    var SURVEY_URL = 'https://api.splashform.com/api';
</script>
<script type="text/javascript" src="/static/assets/js/jquery.min.js"></script>
<script type="text/javascript" src="/static/assets/js/polyfill.min.js"></script>
<script type="text/javascript" src="/static/assets/js/fastclick.js"></script>
<script type="text/javascript" src="/static/assets/js/scripts.js"></script>
<script type="text/javascript" src="/static/assets/js/tracker.js"></script>
<script type="text/javascript" src="/static/assets/js/common.bundle.js"></script>
<script type="text/javascript" src="/static/assets/js/vendor.bundle.js"></script>
<script type="text/javascript" src="/static/assets/js/pages.bundle.js"></script>


<script type="text/javascript" src="/static/assets/js/slick.min.js"></script>
<script type="text/javascript" src="/static/assets/js/home.js"></script>


<script type="text/javascript" src="/static/assets/js/jweixin-1.2.0.js"></script>
<script type="text/javascript" src="/static/assets/js/wechat.v201803141700.js"></script>


</body>
</html>