<%@ page import="cn.phoenix.evacafe.service.UserService" %>
<%@ page import="cn.phoenix.evacafe.domain.Product" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Home</title>
    <!-- for-mobile-apps -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="keywords" content="Best Store Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template,
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design"/>
    <script type="application/x-javascript"> addEventListener("load", function () {
        setTimeout(hideURLbar, 0);
    }, false);
    function hideURLbar() {
        window.scrollTo(0, 1);
    } </script>
    <!-- //for-mobile-apps -->
    <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all"/>
    <link href="css/style.css" rel="stylesheet" type="text/css" media="all"/>
    <!-- js -->
    <script src="js/jquery.min.js"></script>
    <!-- //js -->
    <!-- cart -->
    <script src="js/simpleCart.min.js"></script>
    <!-- cart -->
    <!-- for bootstrap working -->
    <script type="text/javascript" src="js/bootstrap-3.1.1.min.js"></script>
    <!-- //for bootstrap working -->
    <link href='http://fonts.useso.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic'
          rel='stylesheet' type='text/css'>
    <link href='http://fonts.useso.com/css?family=Lato:400,100,100italic,300,300italic,400italic,700,700italic,900,900italic'
          rel='stylesheet' type='text/css'>
    <!-- timer -->
    <link rel="stylesheet" href="css/jquery.countdown.css"/>
    <!-- //timer -->
    <!-- animation-effect -->
    <link href="css/animate.min.css" rel="stylesheet">
    <script src="js/wow.min.js"></script>
    <script>
        new WOW().init();
    </script>
    <!-- //animation-effect -->
</head>

<body>
<!-- header -->
<%
    if (request.getSession(false) == null || request.getSession().getAttribute("hotProds") == null) {
        UserService userService = new UserService();
        List<Product> favoriteProd = userService.findFavoriteProd(7);
        request.getSession().setAttribute("hotProds", favoriteProd);
    }
%>
<div class="header">
    <div class="container">
        <div class="header-grid">
            <div class="header-grid-left animated wow slideInLeft" data-wow-delay=".5s">
                <ul>
                    <li><i class="glyphicon glyphicon-envelope" aria-hidden="true"></i><a
                            href="mailto:info@example.com">347861304@qq.com</a></li>
                    <li><i class="glyphicon glyphicon-earphone" aria-hidden="true"></i>+159 2711 4610</li>
                    <c:if test="${sessionScope.user != null}">
                        <li><i class="glyphicon glyphicon-log-in" aria-hidden="true"></i>${sessionScope.user.username}
                        </li>
                        <li><i class="glyphicon glyphicon-book" aria-hidden="true"></i><a
                                href="${pageContext.request.contextPath}/LogInOutServlet?type=logout">exit</a></li>
                    </c:if>
                    <c:if test="${sessionScope.user == null}">
                        <li><i class="glyphicon glyphicon-log-in" aria-hidden="true"></i><a
                                href="${pageContext.request.contextPath}/LogInOutServlet?type=enterLogin">Login</a></li>
                        <li><i class="glyphicon glyphicon-book" aria-hidden="true"></i><a
                                href="${pageContext.request.contextPath}/LogInOutServlet?type=register">Register</a>
                        </li>
                    </c:if>
                </ul>
            </div>
            <div class="header-grid-right animated wow slideInRight" data-wow-delay=".5s">
                <ul class="social-icons">
                    <li><a href="#" class="facebook"></a></li>
                    <li><a href="#" class="twitter"></a></li>
                    <li><a href="#" class="g"></a></li>
                    <li><a href="#" class="instagram"></a></li>
                </ul>
            </div>
            <div class="clearfix"></div>
        </div>
        <div class="logo-nav">
            <div class="logo-nav-left animated wow zoomIn" data-wow-delay=".5s">
                <h1><a href="index.jsp">最好的咖啡屋<span><br><br>欣赏 随心所欲</span></a></h1>
            </div>
            <div class="logo-nav-left1">
                <nav class="navbar navbar-default">
                    <!-- Brand and toggle get grouped for better mobile display -->
                    <div class="navbar-header nav_2">
                        <button type="button" class="navbar-toggle collapsed navbar-toggle1" data-toggle="collapse"
                                data-target="#bs-megadropdown-tabs">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                    </div>
                    <div class="collapse navbar-collapse" id="bs-megadropdown-tabs">
                        <ul class="nav navbar-nav">
                            <li class="active"><a href="#" class="act">主页</a></li>
                            <!-- Mega Menu -->
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">咖啡<b
                                        class="caret"></b></a>
                                <ul class="dropdown-menu multi-column columns-3">
                                    <div class="row">
                                        <div class="col-sm-4">
                                            <ul class="multi-column-dropdown">
                                                <h6>Men's Wear</h6>
                                                <li><a href="products.html">Clothing</a></li>
                                                <li><a href="products.html">Wallets</a></li>
                                                <li><a href="products.html">Shoes</a></li>
                                                <li><a href="products.html">Watches</a></li>
                                                <li><a href="products.html">Accessories</a></li>
                                            </ul>
                                        </div>
                                        <div class="col-sm-4">
                                            <ul class="multi-column-dropdown">
                                                <h6>Women's Wear</h6>
                                                <li><a href="products.html">Clothing</a></li>
                                                <li><a href="products.html">Wallets,Bags</a></li>
                                                <li><a href="products.html">Footwear</a></li>
                                                <li><a href="products.html">Watches</a></li>
                                                <li><a href="products.html">Accessories</a></li>
                                                <li><a href="products.html">Jewellery</a></li>
                                                <li><a href="products.html">Beauty & Grooming</a></li>
                                            </ul>
                                        </div>
                                        <div class="col-sm-4">
                                            <ul class="multi-column-dropdown">
                                                <h6>Kid's Wear</h6>
                                                <li><a href="products.html">Kids Home Fashion</a></li>
                                                <li><a href="products.html">Boy's Clothing</a></li>
                                                <li><a href="products.html">Girl's Clothing</a></li>
                                                <li><a href="products.html">Shoes</a></li>
                                                <li><a href="products.html">Brand Stores</a></li>
                                            </ul>
                                        </div>
                                        <div class="clearfix"></div>
                                    </div>
                                </ul>
                            </li>
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">Furniture <b
                                        class="caret"></b></a>
                                <ul class="dropdown-menu multi-column columns-3">
                                    <div class="row">
                                        <div class="col-sm-4">
                                            <ul class="multi-column-dropdown">
                                                <h6>Home Collection</h6>
                                                <li><a href="furniture.html">Cookware</a></li>
                                                <li><a href="furniture.html">Sofas</a></li>
                                                <li><a href="furniture.html">Dining Tables</a></li>
                                                <li><a href="furniture.html">Shoe Racks</a></li>
                                                <li><a href="furniture.html">Home Decor</a></li>
                                            </ul>
                                        </div>
                                        <div class="col-sm-4">
                                            <ul class="multi-column-dropdown">
                                                <h6>Office Collection</h6>
                                                <li><a href="furniture.html">Carpets</a></li>
                                                <li><a href="furniture.html">Tables</a></li>
                                                <li><a href="furniture.html">Sofas</a></li>
                                                <li><a href="furniture.html">Shoe Racks</a></li>
                                                <li><a href="furniture.html">Sockets</a></li>
                                                <li><a href="furniture.html">Electrical Machines</a></li>
                                            </ul>
                                        </div>
                                        <div class="col-sm-4">
                                            <ul class="multi-column-dropdown">
                                                <h6>Decorations</h6>
                                                <li><a href="furniture.html">Toys</a></li>
                                                <li><a href="furniture.html">Wall Clock</a></li>
                                                <li><a href="furniture.html">Lighting</a></li>
                                                <li><a href="furniture.html">Top Brands</a></li>
                                            </ul>
                                        </div>
                                        <div class="clearfix"></div>
                                    </div>
                                </ul>
                            </li>
                            <li><a href="short-codes.html">Short Codes</a></li>
                            <li><a href="mail.html">联系我们</a></li>
                        </ul>
                    </div>
                </nav>
            </div>
            <div class="logo-nav-right">
                <div class="search-box">
                    <div id="sb-search" class="sb-search">
                        <form action="${pageContext.request.contextPath}/SearchServlet?searchType=keyword&page=0"
                              METHOD="POST">
                            <input class="sb-search-input" placeholder="Enter your search term..." type="search"
                                   id="search" name="search">
                            <input class="sb-search-submit" type="submit" value="">
                            <span class="sb-icon-search"> </span>
                        </form>
                    </div>
                </div>
                <!-- search-scripts -->
                <script src="js/classie.js"></script>
                <script src="js/uisearch.js"></script>
                <script>
                    new UISearch(document.getElementById('sb-search'));
                </script>
                <!-- //search-scripts -->
            </div>
            <div class="header-right">
                <div class="cart box_1">
                    <a href="checkout.html">
                        <h3>
                            <div class="total">
                                <span class="simpleCart_total"></span> (<span id="simpleCart_quantity"
                                                                              class="simpleCart_quantity"></span> items)
                            </div>
                            <img src="images/bag.png" alt=""/>
                        </h3>
                    </a>

                    <p><a href="javascript:;" class="simpleCart_empty">Empty Cart</a></p>

                    <div class="clearfix"></div>
                </div>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>
</div>
<!-- //header -->
<!-- banner -->
<div class="banner">
    <div class="container">
        <div class="banner-info animated wow zoomIn" data-wow-delay=".5s">
            <h3>自由的在线购物商店</h3>
            <h4>高达 <span>40% <i>减价/-</i></span></h4>

            <div class="wmuSlider example1">
                <div class="wmuSliderWrapper">
                    <article style="position: absolute; width: 100%; opacity: 0;">
                        <div class="banner-wrap">
                            <div class="banner-info1">
                                <p>咖啡豆 + 咖啡粉 + 咖啡条 + 挂耳咖啡</p>
                            </div>
                        </div>
                    </article>
                    <article style="position: absolute; width: 100%; opacity: 0;">
                        <div class="banner-wrap">
                            <div class="banner-info1">
                                <p>咖啡机 + 咖啡杯 + 咖啡壶 + 咖啡桌</p>
                            </div>
                        </div>
                    </article>
                    <article style="position: absolute; width: 100%; opacity: 0;">
                        <div class="banner-wrap">
                            <div class="banner-info1">
                                <p>雀巢 + 麦斯威尔 & 中原 + 吉意欧</p>
                            </div>
                        </div>
                    </article>
                </div>
            </div>
            <script src="js/jquery.wmuSlider.js"></script>
            <script>
                $('.example1').wmuSlider();
            </script>
        </div>
    </div>
</div>
<!-- //banner -->
<!-- banner-bottom -->
<div class="banner-bottom">
    <div class="container">
        <div class="banner-bottom-grids">
            <div class="banner-bottom-grid-left animated wow slideInLeft" data-wow-delay=".5s">
                <div class="grid">
                    <figure class="effect-julia">
                        <img src="images/4.jpg" style="width:388px;height:426px;" alt=" " class="img-responsive"/>
                        <figcaption>
                            <h3>咖啡<span>豆</span><i> 在线购</i></h3>

                            <div>
                                <p>美味</p>

                                <p>清香</p>

                                <p>提神</p>
                            </div>
                        </figcaption>
                    </figure>
                </div>
            </div>
            <div class="banner-bottom-grid-left1 animated wow slideInUp" data-wow-delay=".5s">
                <div class="banner-bottom-grid-left-grid left1-grid grid-left-grid1">
                    <div class="banner-bottom-grid-left-grid1">
                        <img src="images/1.jpg" style="width:640px;height:200px;" alt=" " class="img-responsive"/>
                    </div>
                    <div class="banner-bottom-grid-left1-pos">
                        <p>折扣 45%</p>
                    </div>
                </div>
                <div class="banner-bottom-grid-left-grid left1-grid grid-left-grid1">
                    <div class="banner-bottom-grid-left-grid1">
                        <img src="images/2.jpg" style="width:640px;height:200px;" alt=" " class="img-responsive"/>
                    </div>
                    <div class="banner-bottom-grid-left1-position">
                        <div class="banner-bottom-grid-left1-pos1">
                            <p>最近新品</p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="banner-bottom-grid-right animated wow slideInRight" data-wow-delay=".5s">
                <div class="banner-bottom-grid-left-grid grid-left-grid1">
                    <div class="banner-bottom-grid-left-grid1">
                        <img src="images/3.jpg" style="width:388px;height:426px;" alt=" " class="img-responsive"/>
                    </div>
                    <div class="grid-left-grid1-pos">
                        <p>经典口味 <span>2016 年度</span></p>
                    </div>
                </div>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>
</div>
<!-- //banner-bottom -->
<!-- collections -->
<div class="new-collections">
    <div class="container">
        <h3 class="animated wow zoomIn" data-wow-delay=".5s">热品推荐</h3>

        <p class="est animated wow zoomIn" data-wow-delay=".5s">风靡50年的天赋醇香，媲美研磨咖啡的细腻口感</p>

        <div class="new-collections-grids">
            <div class="col-md-3 new-collections-grid">
                <div class="new-collections-grid1 animated wow slideInUp" data-wow-delay=".5s">
                    <div class="new-collections-grid1-image">
                        <a href="single.html" class="product-image"><img
                                src="images/products/${sessionScope.hotProds[0].paths[0]}" alt=" "
                                class="img-responsive"/></a>

                        <div class="new-collections-grid1-image-pos">
                            <a href="${pageContext.request.contextPath}/ProdDetailsServlet?prodId=${sessionScope.hotProds[0].productId}">快速查看</a>
                        </div>
                        <div class="new-collections-grid1-right">
                            <div class="rating">
                                <div class="rating-left">
                                    <img src="images/2.png" alt=" " class="img-responsive"/>
                                </div>
                                <div class="rating-left">
                                    <img src="images/2.png" alt=" " class="img-responsive"/>
                                </div>
                                <div class="rating-left">
                                    <img src="images/2.png" alt=" " class="img-responsive"/>
                                </div>
                                <div class="rating-left">
                                    <img src="images/1.png" alt=" " class="img-responsive"/>
                                </div>
                                <div class="rating-left">
                                    <img src="images/1.png" alt=" " class="img-responsive"/>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                        </div>
                    </div>
                    <h4><a href="single.html">${sessionScope.hotProds[0].productName}</a></h4>

                    <p>${sessionScope.hotProds[0].introduction}</p>

                    <div class="new-collections-grid1-left simpleCart_shelfItem">
                        <p><i>$325</i> <span class="item_price">￥${sessionScope.hotProds[0].price}</span><br><a
                                class="item_add" href="${pageContext.request.contextPath}/CartServlet?type=add&prodId=${sessionScope.hotProds[0].productId}">加入购物车 </a>
                        </p>
                    </div>
                </div>
                <div class="new-collections-grid1 animated wow slideInUp" data-wow-delay=".5s">
                    <div class="new-collections-grid1-image">
                        <a href="single.html" class="product-image"><img
                                src="images/products/${sessionScope.hotProds[1].paths[0]}" alt=" "
                                class="img-responsive"/></a>

                        <div class="new-collections-grid1-image-pos">
                            <a href="${pageContext.request.contextPath}/ProdDetailsServlet?prodId=${sessionScope.hotProds[1].productId}">快速查看</a>
                        </div>
                        <div class="new-collections-grid1-right">
                            <div class="rating">
                                <div class="rating-left">
                                    <img src="images/2.png" alt=" " class="img-responsive"/>
                                </div>
                                <div class="rating-left">
                                    <img src="images/2.png" alt=" " class="img-responsive"/>
                                </div>
                                <div class="rating-left">
                                    <img src="images/1.png" alt=" " class="img-responsive"/>
                                </div>
                                <div class="rating-left">
                                    <img src="images/1.png" alt=" " class="img-responsive"/>
                                </div>
                                <div class="rating-left">
                                    <img src="images/1.png" alt=" " class="img-responsive"/>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                        </div>
                    </div>
                    <h4><a href="single.html">${sessionScope.hotProds[1].productName}</a></h4>

                    <p>${sessionScope.hotProds[1].introduction}</p>

                    <div class="new-collections-grid1-left simpleCart_shelfItem">
                        <p><i>$280</i> <span class="item_price">￥${sessionScope.hotProds[1].price}</span><br><a
                                class="item_add" href="${pageContext.request.contextPath}/CartServlet?type=add&prodId=${sessionScope.hotProds[1].productId}">加入购物车 </a>
                        </p>
                    </div>
                </div>
            </div>
            <div class="col-md-6 new-collections-grid">
                <div class="new-collections-grid1 new-collections-grid1-image-width animated wow slideInUp"
                     data-wow-delay=".5s">
                    <div class="new-collections-grid1-image">
                        <a href="single.html" class="product-image"><img
                                src="images/products/${sessionScope.hotProds[2].paths[0]}"
                                style="width: 600px;height: 500px" alt=" "
                                class="img-responsive"/></a>

                        <div class="new-collections-grid1-image-pos new-collections-grid1-image-pos1">
                            <a href="${pageContext.request.contextPath}/ProdDetailsServlet?prodId=${sessionScope.hotProds[2].productId}">快速查看</a>
                        </div>
                        <div class="new-collections-grid1-right new-collections-grid1-right-rate">
                            <div class="rating">
                                <div class="rating-left">
                                    <img src="images/2.png" alt=" " class="img-responsive"/>
                                </div>
                                <div class="rating-left">
                                    <img src="images/2.png" alt=" " class="img-responsive"/>
                                </div>
                                <div class="rating-left">
                                    <img src="images/2.png" alt=" " class="img-responsive"/>
                                </div>
                                <div class="rating-left">
                                    <img src="images/2.png" alt=" " class="img-responsive"/>
                                </div>
                                <div class="rating-left">
                                    <img src="images/1.png" alt=" " class="img-responsive"/>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                        </div>
                        <div class="new-one">
                            <p>New</p>
                        </div>
                    </div>
                    <h4><a href="single.html">${sessionScope.hotProds[2].productName}</a></h4>

                    <p>${sessionScope.hotProds[2].introduction}</p>

                    <div class="new-collections-grid1-left simpleCart_shelfItem">
                        <p><i>$580</i> <span class="item_price">${sessionScope.hotProds[2].price}</span><br><a
                                class="item_add" href="${pageContext.request.contextPath}/CartServlet?type=add&prodId=${sessionScope.hotProds[2].productId}">加入购物车 </a>
                        </p>
                    </div>
                </div>
                <div class="new-collections-grid-sub-grids">
                    <div class="new-collections-grid1-sub">
                        <div class="new-collections-grid1 animated wow slideInUp" data-wow-delay=".5s">
                            <div class="new-collections-grid1-image">
                                <a href="single.html" class="product-image"><img
                                        src="images/products/${sessionScope.hotProds[3].paths[0]}" alt=" "
                                        class="img-responsive"/></a>

                                <div class="new-collections-grid1-image-pos">
                                    <a href="${pageContext.request.contextPath}/ProdDetailsServlet?prodId=${sessionScope.hotProds[3].productId}">快速查看</a>
                                </div>
                                <div class="new-collections-grid1-right">
                                    <div class="rating">
                                        <div class="rating-left">
                                            <img src="images/2.png" alt=" " class="img-responsive"/>
                                        </div>
                                        <div class="rating-left">
                                            <img src="images/2.png" alt=" " class="img-responsive"/>
                                        </div>
                                        <div class="rating-left">
                                            <img src="images/2.png" alt=" " class="img-responsive"/>
                                        </div>
                                        <div class="rating-left">
                                            <img src="images/2.png" alt=" " class="img-responsive"/>
                                        </div>
                                        <div class="rating-left">
                                            <img src="images/2.png" alt=" " class="img-responsive"/>
                                        </div>
                                        <div class="clearfix"></div>
                                    </div>
                                </div>
                            </div>
                            <h4><a href="single.html">${sessionScope.hotProds[3].productName}</a></h4>

                            <p>${sessionScope.hotProds[3].introduction}</p>

                            <div class="new-collections-grid1-left simpleCart_shelfItem">
                                <p><i>$480</i> <span class="item_price">￥${sessionScope.hotProds[3].price}</span><br><a
                                        class="item_add" href="${pageContext.request.contextPath}/CartServlet?type=add&prodId=${sessionScope.hotProds[3].productId}">加入购物车 </a></p>
                            </div>
                        </div>
                    </div>
                    <div class="new-collections-grid1-sub">
                        <div class="new-collections-grid1 animated wow slideInUp" data-wow-delay=".5s">
                            <div class="new-collections-grid1-image">
                                <a href="single.html" class="product-image"><img
                                        src="images/products/${sessionScope.hotProds[4].paths[0]}" alt=" "
                                        class="img-responsive"/></a>

                                <div class="new-collections-grid1-image-pos">
                                    <a href="${pageContext.request.contextPath}/ProdDetailsServlet?prodId=${sessionScope.hotProds[4].productId}">快速查看</a>
                                </div>
                                <div class="new-collections-grid1-right">
                                    <div class="rating">
                                        <div class="rating-left">
                                            <img src="images/2.png" alt=" " class="img-responsive"/>
                                        </div>
                                        <div class="rating-left">
                                            <img src="images/1.png" alt=" " class="img-responsive"/>
                                        </div>
                                        <div class="rating-left">
                                            <img src="images/1.png" alt=" " class="img-responsive"/>
                                        </div>
                                        <div class="rating-left">
                                            <img src="images/1.png" alt=" " class="img-responsive"/>
                                        </div>
                                        <div class="rating-left">
                                            <img src="images/1.png" alt=" " class="img-responsive"/>
                                        </div>
                                        <div class="clearfix"></div>
                                    </div>
                                </div>
                            </div>
                            <h4><a href="single.html">products/${sessionScope.hotProds[4].productName}</a></h4>

                            <p>${sessionScope.hotProds[4].introduction}</p>

                            <div class="new-collections-grid1-left simpleCart_shelfItem">
                                <p><i>$280</i> <span class="item_price">￥${sessionScope.hotProds[4].price}</span><br><a
                                        class="item_add" href="${pageContext.request.contextPath}/CartServlet?type=add&prodId=${sessionScope.hotProds[4].productId}">加入购物车 </a></p>
                            </div>
                        </div>
                    </div>
                    <div class="clearfix"></div>
                </div>
            </div>
            <div class="col-md-3 new-collections-grid">
                <div class="new-collections-grid1 animated wow slideInUp" data-wow-delay=".5s">
                    <div class="new-collections-grid1-image">
                        <a href="single.html" class="product-image"><img
                                src="images/products/${sessionScope.hotProds[5].paths[0]}" alt=" "
                                class="img-responsive"/></a>

                        <div class="new-collections-grid1-image-pos">
                            <a href="${pageContext.request.contextPath}/ProdDetailsServlet?prodId=${sessionScope.hotProds[5].productId}">快速查看</a>
                        </div>
                        <div class="new-collections-grid1-right">
                            <div class="rating">
                                <div class="rating-left">
                                    <img src="images/2.png" alt=" " class="img-responsive"/>
                                </div>
                                <div class="rating-left">
                                    <img src="images/2.png" alt=" " class="img-responsive"/>
                                </div>
                                <div class="rating-left">
                                    <img src="images/2.png" alt=" " class="img-responsive"/>
                                </div>
                                <div class="rating-left">
                                    <img src="images/1.png" alt=" " class="img-responsive"/>
                                </div>
                                <div class="rating-left">
                                    <img src="images/1.png" alt=" " class="img-responsive"/>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                        </div>
                    </div>
                    <h4><a href="single.html">${sessionScope.hotProds[5].productName}</a></h4>

                    <p>${sessionScope.hotProds[5].introduction}</p>

                    <div class="new-collections-grid1-left simpleCart_shelfItem">
                        <p><i>$180</i> <span class="item_price">￥${sessionScope.hotProds[5].price}</span><br><a
                                class="item_add" href="${pageContext.request.contextPath}/CartServlet?type=add&prodId=${sessionScope.hotProds[5].productId}">加入购物车 </a>
                        </p>
                    </div>
                </div>
                <div class="new-collections-grid1 animated wow slideInUp" data-wow-delay=".5s">
                    <div class="new-collections-grid1-image">
                        <a href="single.html" class="product-image"><img
                                src="images/products/${sessionScope.hotProds[6].paths[0]}" alt=" "
                                class="img-responsive"/></a>

                        <div class="new-collections-grid1-image-pos">
                            <a href="${pageContext.request.contextPath}/ProdDetailsServlet?prodId=${sessionScope.hotProds[6].productId}">快速查看</a>
                        </div>
                        <div class="new-collections-grid1-right">
                            <div class="rating">
                                <div class="rating-left">
                                    <img src="images/2.png" alt=" " class="img-responsive"/>
                                </div>
                                <div class="rating-left">
                                    <img src="images/2.png" alt=" " class="img-responsive"/>
                                </div>
                                <div class="rating-left">
                                    <img src="images/2.png" alt=" " class="img-responsive"/>
                                </div>
                                <div class="rating-left">
                                    <img src="images/2.png" alt=" " class="img-responsive"/>
                                </div>
                                <div class="rating-left">
                                    <img src="images/1.png" alt=" " class="img-responsive"/>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                        </div>
                    </div>
                    <h4><a href="single.html">${sessionScope.hotProds[6].productName}</a></h4>

                    <p>${sessionScope.hotProds[6].introduction}</p>

                    <div class="new-collections-grid1-left simpleCart_shelfItem">
                        <p><i>$340</i> <span class="item_price">￥${sessionScope.hotProds[6].price}</span><br><a
                                class="item_add" href="${pageContext.request.contextPath}/CartServlet?type=add&prodId=${sessionScope.hotProds[6].productId}">加入购物车 </a>
                        </p>
                    </div>
                </div>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>
</div>
<!-- //collections -->
<!-- collections-bottom -->
<!--
<div class="collections-bottom">
    <div class="container">
        <div class="collections-bottom-grids">
            <div class="collections-bottom-grid animated wow slideInLeft" data-wow-delay=".5s">
                <h3>45% Offer For <span>Women & Children's</span></h3>
            </div>
        </div>
        <div class="newsletter animated wow slideInUp" data-wow-delay=".5s">
            <h3>Newsletter</h3>

            <p>Join us now to get all news and special offers.</p>

            <form>
                <span class="glyphicon glyphicon-envelope" aria-hidden="true"></span>
                <input type="email" value="Enter your email address" onfocus="this.value = '';"
                       onblur="if (this.value == '') {this.value = 'Enter your email address';}" required="">
                <input type="submit" value="Join Us">
            </form>
        </div>
    </div>
</div>
-->
<!-- //collections-bottom -->
<!-- footer -->
<div class="footer">
    <div class="container">
        <div class="footer-grids">
            <div class="col-md-3 footer-grid animated wow slideInLeft" data-wow-delay=".5s">
                <h3>关于我们</h3>

                <p>最好的咖啡屋成立于2016年7月12日，是目前全球领先的咖啡综合服务提供商之一。<span> 成立以来，我们一直秉承“一切以用户价值为依归”的经营理念，
                为亿级海量用户提供稳定优质的各类服务，始终处于稳健发展的状态。</span></p>
            </div>
            <div class="col-md-3 footer-grid animated wow slideInLeft" data-wow-delay=".6s">
                <h3>联系方式</h3>
                <ul>
                    <li><i class="glyphicon glyphicon-map-marker" aria-hidden="true"></i>信息学院103实验室<span>华中农业大学</span>
                    </li>
                    <li><i class="glyphicon glyphicon-envelope" aria-hidden="true"></i><a
                            href="mailto:info@example.com">347861304@qq.com</a></li>
                    <li><i class="glyphicon glyphicon-earphone" aria-hidden="true"></i>+159 2711 4610</li>
                </ul>
            </div>
            <div class="col-md-3 footer-grid animated wow slideInLeft" data-wow-delay=".7s">
                <h3>合作商家</h3>

                <div class="footer-grid-left">
                    <a href="single.html"><img src="images/13.jpg" alt=" " class="img-responsive"/></a>
                </div>
                <div class="footer-grid-left">
                    <a href="single.html"><img src="images/14.jpg" alt=" " class="img-responsive"/></a>
                </div>
                <div class="footer-grid-left">
                    <a href="single.html"><img src="images/15.jpg" alt=" " class="img-responsive"/></a>
                </div>
                <div class="footer-grid-left">
                    <a href="single.html"><img src="images/16.jpg" alt=" " class="img-responsive"/></a>
                </div>
                <div class="footer-grid-left">
                    <a href="single.html"><img src="images/13.jpg" alt=" " class="img-responsive"/></a>
                </div>
                <div class="footer-grid-left">
                    <a href="single.html"><img src="images/14.jpg" alt=" " class="img-responsive"/></a>
                </div>
                <div class="footer-grid-left">
                    <a href="single.html"><img src="images/15.jpg" alt=" " class="img-responsive"/></a>
                </div>
                <div class="footer-grid-left">
                    <a href="single.html"><img src="images/16.jpg" alt=" " class="img-responsive"/></a>
                </div>
                <div class="footer-grid-left">
                    <a href="single.html"><img src="images/13.jpg" alt=" " class="img-responsive"/></a>
                </div>
                <div class="clearfix"></div>
            </div>
            <div class="col-md-3 footer-grid animated wow slideInLeft" data-wow-delay=".8s">
                <h3>我们的博客</h3>

                <div class="footer-grid-sub-grids">
                    <div class="footer-grid-sub-grid-left">
                        <a href="single.html"><img src="images/9.jpg" alt=" " class="img-responsive"/></a>
                    </div>
                    <div class="footer-grid-sub-grid-right">
                        <h4><a href="single.html">http://www.yunweipai.com/archives/8354.html?ref=myread</a></h4>

                        <p>发表于 On 12/7/2016</p>
                    </div>
                    <div class="clearfix"></div>
                </div>
                <div class="footer-grid-sub-grids">
                    <div class="footer-grid-sub-grid-left">
                        <a href="single.html"><img src="images/10.jpg" alt=" " class="img-responsive"/></a>
                    </div>
                    <div class="footer-grid-sub-grid-right">
                        <h4><a href="single.html">http://my.csdn.net/my/mycsdn</a></h4>

                        <p>发表于 On 12/7/2016</p>
                    </div>
                    <div class="clearfix"></div>
                </div>
            </div>
            <div class="clearfix"></div>
        </div>
        <div class="footer-logo animated wow slideInUp" data-wow-delay=".5s">
            <h2><a href="index.html">最好的咖啡屋<span>shop anywhere</span></a></h2>
        </div>
        <div class="copy-right animated wow slideInUp" data-wow-delay=".5s">
            <p>Copyright &copy; 2016.Best Store All rights reserved.
            </p>
        </div>
    </div>
</div>
<!-- //footer -->
</body>
</html>