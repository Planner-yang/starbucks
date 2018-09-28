<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <%--<meta name="viewport" content="initial-scale=1.0, user-scalable=no" />--%>
    <script type="text/javascript" async="" src="/static/assets/js/analytics.js"></script>
    <script src="/static/assets/js/hm.js"></script>
    <script src="/static/assets/js/jquery.min.js"></script>
    <script async="" src="/static/assets/js/gtm.js"></script>
    <script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=TDPf8tx9GNF8O0bTwlaa3P0dpUkry0kX"></script>
    <link rel="stylesheet" href="../../static/assets/css/map.css">
    <link rel="stylesheet" href="../../static/assets/css/bootstrap.css">
    <link rel="stylesheet" href="../../static/assets/css/ionicons.css">
    <link rel="stylesheet" href="../../static/assets/css/styles.css">
    <title>星巴克 | 用每一杯咖啡传递星巴克独特的咖啡体验</title>

    <!-- Meta -->


    <meta http-equiv="Content-Language" content="zh">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="keywords" content="">
    <meta name="description" content="欢迎访问星巴克中国官网。">
    <meta name="baidu-site-verification" content="u7Vir8pZFL">
    <link rel="canonical" href="https://www.starbucks.com.cn/">



   <%-- <!-- WeChat sharing -->
    <script>
        var WECHAT_TITLE = '星巴克官网: 用每一杯咖啡传递星巴克独特的咖啡体验';
        var WECHAT_DESC = '欢迎访问星巴克中国官网。';
        var WECHAT_IMAGE = '/assets/images/wechat.png';
        var WCHAT_NO_GA = '';
    </script>--%>


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
    <meta name="msapplication-config" content="/assets/favicons/browserconfig.xml">
    <meta name="theme-color" content="#ffffff">
    <!-- CSS -->
    <link rel="stylesheet" href="/static/assets/css/styles.css">
</head>
<%--<body class="lang-zh page-account-my-starbucks-rewards chrome non-logged-in" ontouchstart="">--%>
<body class="lang-zh page-front chrome non-logged-in" ontouchstart="">
<!-- Google Tag Manager (noscript) -->
<noscript>
    <iframe src='https://www.googletagmanager.com/ns.html?id=GTM-MGKBKT5'
            height='0' width='0' style='display:none;visibility:hidden'></iframe>
</noscript>

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
                            <a id="stores-primary" href="stores">
                                门店
                            </a>
                        </li>

                        <li class="account">
                            <a id="account-primary" href="vipHelp"><span  class="">我的帐户</span></a>
                        </li>

                        <li class="menu">
                            <a id="menu-primary" href="menu">
                                菜单
                            </a>
                        </li>
                    </ul>
                </div>
            </header>
            <div class="body">
                    <div class="navbar">
                        <div class="field search">
                            <div class="StoreLocatorSearchInput">
                                <div class="LocationFilter">
                                        <div class="row">
                                            <div class="col-md-8">
                                                <input type="text" class="form-control" id="location" readonly placeholder="当前位置">
                                            </div>
                                        </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-8">
                                        <input type="text" class="form-control" id="selectInfo" placeholder="搜索周边">
                                    </div>
                                    <div class="col-md-4">
                                        <button type="button" class="btn btn-info btn-flat"  onclick="search()">搜索</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
            </div>
            </div>
    </nav>

</div>
<!-- Page content -->
    <div id="allmap" ></div>
<!--百度地图-->
<script type="text/javascript" src="../../static/assets/js/map.js"></script>
</body>
</html>