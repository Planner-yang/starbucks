<%--
  Created by IntelliJ IDEA.
  User: xwj
  Date: 2018/9/26
  Time: 9:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/WEB-INF/include/taglib.jsp" %>
<!doctype html>
<html>
<head>
    <!-- CSS -->
    <link rel='stylesheet' href='/static/assets/css/styles.css?201809251651'>
</head>

<body class='lang-zh page-menu-beverages' ontouchstart=''>


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
                            <a id='menu-primary' href='/menu/'>
                                菜单
                            </a>
                        </li>

                    </ul>
                </div>


            </header>

            <div class='body'>
                <nav class='container middle secondary'>


                    <a href='/menu/' class='back'>
                        <img src='/static/assets/icon/icon-chevron-left.svg'/>
                        菜单
                    </a>

                    <div class='display-1'>${tbItemCat.name}</div>
                    <div class='tabs-wrapper'>
                        <ul class='subcategories'>

                            <li>
                                <a id='side_menu_all' href='/menu/list?parentId=${tbItemCat.parentId < 2?2:tbItemCat.parentId}' class='active'>
                                    全部
                                </a>
                            </li>

                            <c:forEach items="${itemCats}" var="itemCat">
                                <li>
                                    <a id='side_menu_beverages' href='/menu/tbItem/list?cid=${itemCat.id}'>
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
        <div class='tag_ad'>广告</div>
        <div class='wrapper fluid margin page-menu-list'>
            <h3 class='caption'>${tbItemCat.name}</h3>

            <ul class='grid padded-3 product'>
                <c:forEach items="${items}" var="item">
                    <li>


                        <a id='menu-product-related-affogato' href='/item?id=${item.id}'
                           class='thumbnail'>

                            <div class='preview circle'
                                 style='background-image: url("/items/img/${item.image}")'></div>
                            <strong>${item.title}</strong>

                        </a>


                    </li>
                </c:forEach>



            </ul>
        </div>

        <div class='overlay' id='menu-search-overlay'>
            <header class='header'>
                <button class='icon close'>Close</button>
            </header>
            <div class='body'>
                <div class='field search'>
                    <img src='/assets/icons/icon-search.svg' class='icon'/>
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
