<%--
  Created by IntelliJ IDEA.
  User: xwj
  Date: 2018/9/26
  Time: 9:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/WEB-INF/include/taglib.jsp" %>

<!DOCTYPE html>
<html>
<head>
    <!-- CSS -->
    <link rel='stylesheet' href='/static/assets/css/styles.css?201809251651'>
</head>

<body class='lang-zh page-menu' ontouchstart=''>


<div id='app-view-wrapper'>
    <!-- Navigation panel -->


    <nav id='nav'>
        <div class='container'>
            <header class='header'>
                <a class='logo' href='/'>
                    <img src='/static/assets/images/logo.svg' alt='星巴克'/>
                </a>
                <div class='primary'>
                    <ul>
                        <li class='stores'>
                            <a id='stores-primary' href='/stores/'>
                                门店
                            </a>
                        </li>

                        <li class='account'>
                            <a id='account-primary' href='/account/'>
                                我的帐户
                            </a>
                        </li>

                        <li class='menu'>
                            <a id='menu-primary' href='/menu/' class='active'>
                                菜单
                            </a>
                        </li>
                    </ul>
                </div>

                <a class='icon trigger' rel='nav-overlay' id='nav-menu'>
                    <img src='/static/assets/images/icon-hamburger.svg'/>
                    <span>更多</span>
                </a>

            </header>

            <div class='body'>
                <nav class='container middle secondary'>
                    <div class='display-1'>菜单</div>
                    <div class='tabs-wrapper'>
                        <ul class='subcategories'>

                            <li>
                                <a id='side_menu_default' href='/menu/' class='active'>
                                    季度精选
                                </a>
                            </li>
                            <c:forEach items="${itemCats}" var="itemCat">
                                <li>
                                    <a id='side_menu_beverages' href='/menu/list?parentId=${itemCat.id}'>
                                            ${itemCat.name}
                                    </a>
                                </li>
                            </c:forEach>
                        </ul>
                    </div>

                </nav>

            </div>
        </div>


    </nav>


    <!-- Page content -->
    <section id='content'>

        <span class='tag_ad'>广告</span>
        <c:forEach items="${tbContentsPPT}" var="ppt">
            <section class='hero relative'>

                <div class='block relative mobile-hidden'>
                    <img src='/item/img/${ppt.pic}' class='img'/>
                </div>
                <div class='wrapper'>
                    <h2>${ppt.title}</h2>
                    <p class='text description'>
                            ${ppt.subTitle}
                    </p>
                </div>
            </section>
        </c:forEach>
        <section class='featured-items'>

        </section>


        <div class='overlay' id='menu-search-overlay'>
            <header class='header'>
                <button class='icon close'>Close</button>
            </header>
            <div class='body'>
                <div class='field search'>
                    <input type='text' id='menu-search-input' placeholder='搜索菜单'/>
                </div>
                <div id='menu-search-empty'></div>
                <ul class='grid columns-4 padded-2' id='menu-search-results'></ul>
            </div>
        </div>
        <div class='frap'>
            <button id="featured-campaign-search" class='button primary trigger' rel='menu-search-overlay'>搜索菜单</button>
        </div>


        <div id='app-notification'></div>
    </section>

    <div id='app-loading'></div>
    <div id='app-auth'></div>


</div>
</body>
</html>
