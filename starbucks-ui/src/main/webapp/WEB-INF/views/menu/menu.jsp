<%--
  Created by IntelliJ IDEA.
  User: xwj
  Date: 2018/9/26
  Time: 9:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/WEB-INF/include/taglib.jsp"%>

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
                            <a id='stores-primary'  href='/stores/'>
                                门店
                            </a>
                        </li>

                        <li class='account'>
                            <a id='account-primary'  href='/account/'>
                                我的帐户
                            </a>
                        </li>

                        <li class='menu'>
                            <a id='menu-primary'  href='/menu/' class='active'>
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
        <section class='hero relative'>

            <div class='block relative mobile-hidden'>
                    <img src='/static/assets/images/kv-bever.jpg' class='img' />
            </div>
            <div class='block relative show-mobile tablet-hidden'>
                    <img src='/static/assets/images/kv-bever-mobile.jpg' class='img' />
            </div>

            <div class='wrapper'>
                <h2>在一起的 好时光</h2>
                <p class='text description'>
                    在秋天里，暂别夏日的酷暑，遇见金色的收获和无尽的思念。秋日暖心的开心果拿铁，馥郁坚果香中透着咖啡香，听起来就很快乐；饱含相思之味的红豆芝士拿铁，温润的红豆香甜与浓缩咖啡的醇正馥郁相得益彰，快与爱的人一起分享；秋日特献的冰摇桃桃拧香茶，桃桃果香馥郁，茶味芬芳沁心，每一口都清新宜人。
                </p>
            </div>
        </section>
        <section class='featured-items'>



            <div class='item'>
                <div class='mobile-hidden'>
                        <img src='/static/assets/images/au-food.jpg' class='img' />
                    <div class='description text wrapper'>
                        <h2>加“星”早餐，开启新一天</h2>
                        <p>星巴克全新星级烘焙，经典遇上创新的焕新美味。奶香酥脆的扁桃仁流心丹麦酥，一口咬下香甜四溢；造型独特的大蘑菇头麦芬，给你更大满足。搭配醇香咖啡，相得益彰的早餐组合，美味又满足。</p>
                    </div>
                </div>
                <div class='show-mobile tablet-hidden'>
                        <img src='/static/assets/images/au-food-mobile.jpg' class='img' />
                    <div class='description text wrapper featured-collapsible collapsed'>
                        <h2>加“星”早餐，开启新一天</h2>
                        <div class='body'>
                            <p>星巴克全新星级烘焙，经典遇上创新的焕新美味。奶香酥脆的扁桃仁流心丹麦酥，一口咬下香甜四溢；造型独特的大蘑菇头麦芬，给你更大满足。搭配醇香咖啡，相得益彰的早餐组合，美味又满足。</p>
                        </div>
                        <span class='icon'></span>
                    </div>
                </div>
            </div>



            <div class='item'>
                <div class='mobile-hidden'>
                        <img src='/static/assets/images/au-food1.jpg' class='img' />
                    <div class='description text wrapper'>
                        <h2>聚开心 玩出味</h2>
                        <p>一口一个有颜又美味的星享小点，能让你一次品尝多种口味，每一口都带给你不一样的惊喜。搭配你喜欢的咖啡，邀上三两好友，快来开启一段美妙下午茶时光。</p>
                    </div>
                </div>
                <div class='show-mobile tablet-hidden'>
                        <img src='/static/assets/images/au-food1-mobile.jpg' class='img' />
                    <div class='description text wrapper featured-collapsible collapsed'>
                        <h2>聚开心 玩出味</h2>
                        <div class='body'>
                            <p>一口一个有颜又美味的星享小点，能让你一次品尝多种口味，每一口都带给你不一样的惊喜。搭配你喜欢的咖啡，邀上三两好友，快来开启一段美妙下午茶时光。</p>
                        </div>
                        <span class='icon'></span>
                    </div>
                </div>
            </div>



            <div class='item'>
                <div class='mobile-hidden'>
                        <img src='/static/assets/images/au-msr.jpg' class='img' />
                    <div class='description text wrapper'>
                        <h2>秋叶映像</h2>
                        <p>迷你秋叶映像星享卡套装，以咖啡枝蔓为灵感，并采用摩登艺术画风，代表着咖啡本身经历多种过程最终与我们系在一起的情缘。每款搭配一个结构为包中包的零钱包，外表透明，可拆开也可合并使用。  </p>
                    </div>
                </div>
                <div class='show-mobile tablet-hidden'>
                        <img src='/static/assets/images/au-msr-mobile.jpg' class='img' />
                    <div class='description text wrapper featured-collapsible collapsed'>
                        <h2>秋叶映像</h2>
                        <div class='body'>
                            <p>迷你秋叶映像星享卡套装，以咖啡枝蔓为灵感，并采用摩登艺术画风，代表着咖啡本身经历多种过程最终与我们系在一起的情缘。每款搭配一个结构为包中包的零钱包，外表透明，可拆开也可合并使用。  </p>
                        </div>
                        <span class='icon'></span>
                    </div>
                </div>
            </div>



            <div class='item'>
                <div class='mobile-hidden'>
                        <img src='/static/assets/images/au-merch1.jpg' class='img' />
                    <div class='description text wrapper'>
                        <h2>宇宙满满咖啡香</h2>
                        <p>这个中秋，星巴克小熊穿着宇航服，打扮成月兔行走在太空：带有音乐的杯盖让你喝水都动听、可以变脸的萌兔杯盖随时转换好心情、宇航员月兔给你满满元气。</p>
                    </div>
                </div>
                <div class='show-mobile tablet-hidden'>
                        <img src='/static/assets/images/au-merch1-mobile.jpg' class='img' />
                    <div class='description text wrapper featured-collapsible collapsed'>
                        <h2>宇宙满满咖啡香</h2>
                        <div class='body'>
                            <p>这个中秋，星巴克小熊穿着宇航服，打扮成月兔行走在太空：带有音乐的杯盖让你喝水都动听、可以变脸的萌兔杯盖随时转换好心情、宇航员月兔给你满满元气。</p>
                        </div>
                        <span class='icon'></span>
                    </div>
                </div>
            </div>



            <div class='item'>
                <div class='mobile-hidden'>
                        <img src='/static/assets/images/au-merch2.jpg' class='img' />
                    <div class='description text wrapper'>
                        <h2>相聚在一起，总有美好发生</h2>
                        <p>我们致力于建立社区与顾客之间的情感联系，从心出发。快邀请你的家人和朋友，相聚在一起分享快乐，一起喝杯咖啡共享美好的发生。</p>
                    </div>
                </div>
                <div class='show-mobile tablet-hidden'>
                        <img src='/static/assets/images/au-merch2-mobile.jpg' class='img' />
                    <div class='description text wrapper featured-collapsible collapsed'>
                        <h2>相聚在一起，总有美好发生</h2>
                        <div class='body'>
                            <p>我们致力于建立社区与顾客之间的情感联系，从心出发。快邀请你的家人和朋友，相聚在一起分享快乐，一起喝杯咖啡共享美好的发生。</p>
                        </div>
                        <span class='icon'></span>
                    </div>
                </div>
            </div>



            <div class='item'>
                <div class='mobile-hidden'>
                        <img src='/static/assets/images/au-merch3.jpg' class='img' />
                    <div class='description text wrapper'>
                        <h2>享丰收 赏月圆</h2>
                        <p>浪漫紫色的深邃秋夜，金黄色的麦穗，向秋日致以节日的礼赞。第一次为杯子穿上萌兔帆布杯套，还有经典水球杯的回归，快快带它们一起回家赏月吧。  </p>
                    </div>
                </div>
                <div class='show-mobile tablet-hidden'>
                        <img src='/static/assets/images/au-merch3-mobile.jpg' class='img' />
                    <div class='description text wrapper featured-collapsible collapsed'>
                        <h2>享丰收 赏月圆</h2>
                        <div class='body'>
                            <p>浪漫紫色的深邃秋夜，金黄色的麦穗，向秋日致以节日的礼赞。第一次为杯子穿上萌兔帆布杯套，还有经典水球杯的回归，快快带它们一起回家赏月吧。  </p>
                        </div>
                        <span class='icon'></span>
                    </div>
                </div>
            </div>



            <div class='item'>
                <div class='mobile-hidden'>
                        <img src='/static/assets/images/au-coffee.jpg' class='img' />
                    <div class='description text wrapper'>
                        <h2>秋日般醇厚馥郁</h2>
                        <p>陪伴了我们岁岁年年的秋日综合咖啡，犹如盛宴一般浓醇馥郁，温暖着我们。来自于危地马拉安提瓜的咖啡豆优雅微妙的香料味，融合了苏门答腊咖啡柔和的草本风味，特别适合与亲朋好友一同沉醉在它美妙的风味中。</p>
                    </div>
                </div>
                <div class='show-mobile tablet-hidden'>
                        <img src='/static/assets/images/au-coffee-mobile.jpg' class='img' />
                    <div class='description text wrapper featured-collapsible collapsed'>
                        <h2>秋日般醇厚馥郁</h2>
                        <div class='body'>
                            <p>陪伴了我们岁岁年年的秋日综合咖啡，犹如盛宴一般浓醇馥郁，温暖着我们。来自于危地马拉安提瓜的咖啡豆优雅微妙的香料味，融合了苏门答腊咖啡柔和的草本风味，特别适合与亲朋好友一同沉醉在它美妙的风味中。</p>
                        </div>
                        <span class='icon'></span>
                    </div>
                </div>
            </div>



            <div class='item'>
                <div class='mobile-hidden'>
                        <img src='/static/assets/images/au-reserve.jpg' class='img' />
                    <div class='description text wrapper'>
                        <h2>秋季臻选新体验</h2>
                        <p>优越的地理位置、悉心的种植和加工造就咖啡豆的非凡品质和风味；有趣的卡片设计体现咖啡豆产地地质风貌及当地咖啡业引领者的变革故事，引发对于优质产地和精彩故事的无限遐想。</p>
                    </div>
                </div>
                <div class='show-mobile tablet-hidden'>
                        <img src='/static/assets/images/au-reserve-mobile.jpg' class='img' />
                    <div class='description text wrapper featured-collapsible collapsed'>
                        <h2>秋季臻选新体验</h2>
                        <div class='body'>
                            <p>优越的地理位置、悉心的种植和加工造就咖啡豆的非凡品质和风味；有趣的卡片设计体现咖啡豆产地地质风貌及当地咖啡业引领者的变革故事，引发对于优质产地和精彩故事的无限遐想。</p>
                        </div>
                        <span class='icon'></span>
                    </div>
                </div>
            </div>

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
