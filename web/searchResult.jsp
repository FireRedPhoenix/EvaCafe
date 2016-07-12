<%@ page import="cn.phoenix.evacafe.domain.Product" %>
<%@ page import="java.util.List" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>咖啡时光</title>
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
    <link rel="stylesheet" type="text/css" href="css/jquery-ui.css">
    <!-- for bootstrap working -->
    <script type="text/javascript" src="js/bootstrap-3.1.1.min.js"></script>
    <!-- //for bootstrap working -->
    <link href='http://fonts.useso.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic'
          rel='stylesheet' type='text/css'>
    <link href='http://fonts.useso.com/css?family=Lato:400,100,100italic,300,300italic,400italic,700,700italic,900,900italic'
          rel='stylesheet' type='text/css'>
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
<div class="header">
    <div class="container">
        <div class="header-grid">
            <div class="header-grid-left animated wow slideInLeft" data-wow-delay=".5s">
                <ul>
                    <li><i class="glyphicon glyphicon-envelope" aria-hidden="true"></i><a
                            href="mailto:347861304@qq.com">347861304@qq.com</a></li>
                    <li><i class="glyphicon glyphicon-earphone" aria-hidden="true"></i>+159 2711 4610</li>
                    <c:if test="${sessionScope.user != null}">
                        <li><i class="glyphicon glyphicon-log-in" aria-hidden="true"></i>${sessionScope.user.username}
                        </li>
                        <li><i class="glyphicon glyphicon-book" aria-hidden="true"></i><a
                                href="${pageContext.request.contextPath}/LogInOutServlet?type=logout">exit</a></li>
                    </c:if>
                    <c:if test="${sessionScope.user == null}">
                        <li><i class="glyphicon glyphicon-log-in" aria-hidden="true"></i><a
                                href="${pageContext.request.contextPath}/LogInOutServlet?type=enterLogin">登录</a></li>
                        <li><i class="glyphicon glyphicon-book" aria-hidden="true"></i><a
                                href="${pageContext.request.contextPath}/LogInOutServlet?type=register">注册</a>
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
                <h1><a href="index.html">咖啡时光<span>品味，随心所欲</span></a></h1>
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
                            <li><a href="${pageContext.request.contextPath}/index.jsp">主页</a></li>
                            <!-- Mega Menu -->
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">咖啡<b
                                        class="caret"></b></a>
                                <ul class="dropdown-menu multi-column columns-3">
                                    <div class="row">
                                        <div class="col-sm-4">
                                            <ul class="multi-column-dropdown">
                                                <h6>品牌</h6>
                                                <li>
                                                    <a href="${pageContext.request.contextPath}/SearchServlet?searchType=keyword&search=雀巢&page=0">雀巢</a>
                                                </li>
                                                <li>
                                                    <a href="${pageContext.request.contextPath}/SearchServlet?searchType=keyword&search=麦斯威尔&page=0">麦斯威尔</a>
                                                </li>
                                                <li>
                                                    <a href="${pageContext.request.contextPath}/SearchServlet?searchType=keyword&search=中原&page=0">中原</a>
                                                </li>
                                                <li>
                                                    <a href="${pageContext.request.contextPath}/SearchServlet?searchType=keyword&search=意利&page=0">意利</a>
                                                </li>
                                                <li>
                                                    <a href="${pageContext.request.contextPath}/SearchServlet?searchType=keyword&search=吉意欧&page=0">吉意欧</a>
                                                </li>
                                                <li>
                                                    <a href="${pageContext.request.contextPath}/SearchServlet?searchType=keyword&search=星巴克&page=0">星巴克</a>
                                                </li>
                                            </ul>
                                        </div>
                                        <div class="col-sm-4">
                                            <ul class="multi-column-dropdown">
                                                <h6>口味</h6>
                                                <li>
                                                    <a href="${pageContext.request.contextPath}/SearchServlet?searchType=keyword&search=狂野&page=0">狂野</a>
                                                </li>
                                                <li>
                                                    <a href="${pageContext.request.contextPath}/SearchServlet?searchType=keyword&search=清香&page=0">清香</a>
                                                </li>
                                                <li>
                                                    <a href="${pageContext.request.contextPath}/SearchServlet?searchType=keyword&search=浓烈&page=0">浓烈</a>
                                                </li>
                                                <li>
                                                    <a href="${pageContext.request.contextPath}/SearchServlet?searchType=keyword&search=芳香&page=0">芳香</a>
                                                </li>
                                                <li>
                                                    <a href="${pageContext.request.contextPath}/SearchServlet?searchType=keyword&search=香甜&page=0">香甜</a>
                                                </li>
                                            </ul>
                                        </div>
                                        <div class="col-sm-4">
                                            <ul class="multi-column-dropdown">
                                                <h6>品质</h6>
                                                <li>
                                                    <a href="${pageContext.request.contextPath}/SearchServlet?searchType=keyword&search=AA&page=0">AA级</a>
                                                </li>
                                                <li>
                                                    <a href="${pageContext.request.contextPath}/SearchServlet?searchType=keyword&search=A&page=0">A级</a>
                                                </li>
                                                <li>
                                                    <a href="${pageContext.request.contextPath}/SearchServlet?searchType=keyword&search=B&page=0">B级</a>
                                                </li>
                                                <li>
                                                    <a href="${pageContext.request.contextPath}/SearchServlet?searchType=keyword&search=C&page=0">C级</a>
                                                </li>
                                            </ul>
                                        </div>
                                        <div class="clearfix"></div>
                                    </div>
                                </ul>
                            </li>
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">周边 <b
                                        class="caret"></b></a>
                                <ul class="dropdown-menu multi-column columns-3">
                                    <div class="row">
                                        <div class="col-sm-4">
                                            <ul class="multi-column-dropdown">
                                                <h6>咖啡机</h6>
                                                <li>
                                                    <a href="${pageContext.request.contextPath}/SearchServlet?searchType=keyword&search=德龙&page=0">德龙</a>
                                                </li>
                                                <li>
                                                    <a href="${pageContext.request.contextPath}/SearchServlet?searchType=keyword&search=东菱&page=0">东菱</a>
                                                </li>
                                                <li>
                                                    <a href="${pageContext.request.contextPath}/SearchServlet?searchType=keyword&search=九阳&page=0">九阳</a>
                                                </li>
                                                <li>
                                                    <a href="${pageContext.request.contextPath}/SearchServlet?searchType=keyword&search=美乐家&page=0">美乐家</a>
                                                </li>
                                                <li>
                                                    <a href="${pageContext.request.contextPath}/SearchServlet?searchType=keyword&search=飞利浦&page=0">飞利浦</a>
                                                </li>
                                            </ul>
                                        </div>
                                        <div class="col-sm-4">
                                            <ul class="multi-column-dropdown">
                                                <h6>咖啡杯</h6>
                                                <li>
                                                    <a href="${pageContext.request.contextPath}/SearchServlet?searchType=keyword&search=陶瓷/马克杯&page=0">陶瓷/马克杯</a>
                                                </li>
                                                <li>
                                                    <a href="${pageContext.request.contextPath}/SearchServlet?searchType=keyword&search=玻璃杯&page=0">玻璃杯</a>
                                                </li>
                                                <li>
                                                    <a href="${pageContext.request.contextPath}/SearchServlet?searchType=keyword&search=保温杯&page=0">保温杯</a>
                                                </li>
                                                <li>
                                                    <a href="${pageContext.request.contextPath}/SearchServlet?searchType=keyword&search=塑料杯&page=0">塑料杯</a>
                                                </li>
                                            </ul>
                                        </div>
                                        <%--<div class="col-sm-4">--%>
                                        <%--<ul class="multi-column-dropdown">--%>
                                        <%--<h6>Decorations</h6>--%>
                                        <%--<li><a href="furniture.html">Toys</a></li>--%>
                                        <%--<li><a href="furniture.html">Wall Clock</a></li>--%>
                                        <%--<li><a href="furniture.html">Lighting</a></li>--%>
                                        <%--<li><a href="furniture.html">Top Brands</a></li>--%>
                                        <%--</ul>--%>
                                        <%--</div>--%>
                                        <div class="clearfix"></div>
                                    </div>
                                </ul>
                            </li>
                            <li><a href="mail.html">联系我们</a></li>
                        </ul>
                    </div>
                </nav>
            </div>
            <div class="logo-nav-right">
                <div class="search-box">
                    <div id="sb-search" class="sb-search">
                        <form>
                            <input class="sb-search-input" placeholder="Enter your search term..." type="search"
                                   id="search">
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
                    <a href="${pageContext.request.contextPath}/CartServlet?type=view">
                        <h3>我的购物车</h3>
                    </a>
                    <a href="${pageContext.request.contextPath}/OrderServlet">
                        <h3>我的订单</h3>
                    </a>

                    <div class="clearfix"></div>
                </div>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>
</div>
<!-- //header -->
<!-- breadcrumbs -->
<div class="breadcrumbs">
    <div class="container">
        <ol class="breadcrumb breadcrumb1 animated wow slideInLeft" data-wow-delay=".5s">
            <li><a href="index.jsp"><span class="glyphicon glyphicon-home" aria-hidden="true"></span>主页</a></li>
            <li class="active">商品</li>
        </ol>
    </div>
</div>
<div class="products">
    <div class="container">
        <div class="col-md-4 products-left">
            <div class="filter-price animated wow slideInUp" data-wow-delay=".5s">
                <h3>价格区间</h3>
                <ul class="dropdown-menu1">
                    <li><a href="">
                        <div id="slider-range"></div>
                        <input type="text" id="amount" style="border: 0"/>
                    </a></li>
                </ul>
                <script type='text/javascript'>//<![CDATA[
                $(window).load(function () {
                    $("#slider-range").slider({
                        range: true,
                        min: 0,
                        max: 10000,
                        values: [200, 800],
                        slide: function (event, ui) {
                            $("#amount").val("$" + ui.values[0] + " - $" + ui.values[1]);
                        }
                    });
                    $("#amount").val("$" + $("#slider-range").slider("values", 0) + " - $" + $("#slider-range").slider("values", 1));


                });//]]>
                </script>
                <script type="text/javascript" src="js/jquery-ui.min.js"></script>
                <!---->
            </div>
            <div class="categories animated wow slideInUp" data-wow-delay=".5s">
                <h3>商品分类</h3>
                <ul class="cate">
                    <li><a href="${pageContext.request.contextPath}/SearchServlet?searchType=popular&page=0">最受欢迎</a>
                    </li>
                    <li>品牌</li>
                    <ul>
                        <li>
                            <a href="${pageContext.request.contextPath}/SearchServlet?searchType=keyword&search=雀巢&page=0">雀巢</a>
                        </li>
                        <li>
                            <a href="${pageContext.request.contextPath}/SearchServlet?searchType=keyword&search=麦斯威尔&page=0">麦斯威尔</a>
                        </li>
                        <li>
                            <a href="${pageContext.request.contextPath}/SearchServlet?searchType=keyword&search=中原&page=0">中原</a>
                        </li>
                        <li>
                            <a href="${pageContext.request.contextPath}/SearchServlet?searchType=keyword&search=意利&page=0">意利</a>
                        </li>
                        <li>
                            <a href="${pageContext.request.contextPath}/SearchServlet?searchType=keyword&search=吉意欧&page=0">吉意欧</a>
                        </li>
                        <li>
                            <a href="${pageContext.request.contextPath}/SearchServlet?searchType=keyword&search=星巴克&page=0">星巴克</a>
                        </li>
                    </ul>
                    <li>品质</li>
                    <ul>
                        <li>
                            <a href="${pageContext.request.contextPath}/SearchServlet?searchType=keyword&search=AA&page=0">AA</a>
                        </li>
                        <li>
                            <a href="${pageContext.request.contextPath}/SearchServlet?searchType=keyword&search=Apage=0">A</a>
                        </li>
                        <li>
                            <a href="${pageContext.request.contextPath}/SearchServlet?searchType=keyword&search=B&page=0">B</a>
                        </li>
                        <li>
                            <a href="${pageContext.request.contextPath}/SearchServlet?searchType=keyword&search=C&page=0">C</a>
                        </li>
                    </ul>
                    <li>口味</li>
                    <ul>
                        <li>
                            <a href="${pageContext.request.contextPath}/SearchServlet?searchType=keyword&search=狂野&page=0">狂野</a>
                        </li>
                        <li>
                            <a href="${pageContext.request.contextPath}/SearchServlet?searchType=keyword&search=清香&page=0">清香</a>
                        </li>
                        <li>
                            <a href="${pageContext.request.contextPath}/SearchServlet?searchType=keyword&search=浓烈&page=0">浓烈</a>
                        </li>
                        <li>
                            <a href="${pageContext.request.contextPath}/SearchServlet?searchType=keyword&search=芳香&page=0">芳香</a>
                        </li>
                        <li>
                            <a href="${pageContext.request.contextPath}/SearchServlet?searchType=keyword&search=香甜&page=0">香甜</a><!-- <span>(4)</span>-->
                        </li>
                    </ul>
                </ul>
            </div>
            <div class="new-products animated wow slideInUp" data-wow-delay=".5s">
                <h3>新品</h3>

                <div class="new-products-grids">
                    <c:forEach items="${requestScope.newProds}" var="newProd">
                        <div class="new-products-grid">
                            <div class="new-products-grid-left">
                                <a href="${pageContext.request.contextPath}/ProdDetailsServlet?prodId=${newProd.productId}"><img
                                        src="images/products/${newProd.paths[0]}" alt=" " class="img-responsive"/></a>
                            </div>
                            <div class="new-products-grid-right">
                                <h4>${newProd.productName}</h4>

                                <div class="rating">
                                    <div class="rating-left">
                                        <img src="images/2.png" alt=" " class="img-responsive">
                                    </div>
                                    <div class="rating-left">
                                        <img src="images/2.png" alt=" " class="img-responsive">
                                    </div>
                                    <div class="rating-left">
                                        <img src="images/2.png" alt=" " class="img-responsive">
                                    </div>
                                    <div class="rating-left">
                                        <img src="images/1.png" alt=" " class="img-responsive">
                                    </div>
                                    <div class="rating-left">
                                        <img src="images/1.png" alt=" " class="img-responsive">
                                    </div>
                                    <div class="clearfix"></div>
                                </div>
                                <div class="simpleCart_shelfItem new-products-grid-right-add-cart">
                                    <p><span class="item_price">￥${newProd.price}</span><a class="item_add"
                                                                                           href="${pageContext.request.contextPath}/CartServlet?type=add&prodId=${newProd.productId}">加入购物车</a>
                                    </p>
                                </div>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                    </c:forEach>
                </div>
            </div>
        </div>
        <div class="col-md-8 products-right">
            <div class="products-right-grid">
                <div class="products-right-grids animated wow slideInRight" data-wow-delay=".5s">
                    <%--<div class="sorting">--%>
                    <%--<select id="country" onchange="change_country(this.value)" class="frm-field required sect">--%>
                    <%--<option value="null">Default sorting</option>--%>
                    <%--<option value="null">Sort by popularity</option>--%>
                    <%--<option value="null">Sort by average rating</option>--%>
                    <%--<option value="null">Sort by price</option>--%>
                    <%--</select>--%>
                    <%--</div>--%>
                    <%--<div class="sorting-left">--%>
                    <%--<select id="country1" onchange="change_country(this.value)" class="frm-field required sect">--%>
                    <%--<option value="null">Item on page 9</option>--%>
                    <%--<option value="null">Item on page 18</option>--%>
                    <%--<option value="null">Item on page 32</option>--%>
                    <%--<option value="null">All</option>--%>
                    <%--</select>--%>
                    <%--</div>--%>
                    <div class="clearfix"></div>
                </div>
                <div class="products-right-grids-position animated wow slideInRight" data-wow-delay=".5s">
                    <img src="images/18.jpg" alt=" " class="img-responsive"/>

                    <div class="products-right-grids-position1">
                        <h4>2016 新品上市</h4>

                        <p>浪漫与激情的双重体验，当咖啡遇到白色，如浪漫遇到激情，创意无限伸展，快乐如影随行。皇家白咖啡，完美演绎非常的味蕾享受！</p>
                    </div>
                </div>
            </div>
            <div class="products-right-grids-bottom">
                <c:forEach items="${requestScope.searchResult}" var="prod" varStatus="status">
                <c:choose>
                <c:when test="${status.index == 0}">
                    <%System.out.print("<div2>\n    <div3></div3>\n");%>
                    <div class="col-md-4 products-right-grids-bottom-grid">
                    <div class="new-collections-grid1 products-right-grid1 animated wow slideInUp"
                         data-wow-delay=".5s">
                        <div class="new-collections-grid1-image">
                            <a href="${pageContext.request.contextPath}/ProdDetailsServlet?prodId=${prod.productId}"
                               class="product-image"><img src="images/products/${prod.paths[0]}" alt=" "
                                                          class="img-responsive"></a>

                            <div class="new-collections-grid1-image-pos products-right-grids-pos">
                                <a href="${pageContext.request.contextPath}/ProdDetailsServlet?prodId=${prod.productId}">快速查看</a>
                            </div>
                            <div class="new-collections-grid1-right products-right-grids-pos-right">
                                <div class="rating">
                                    <div class="rating-left">
                                        <img src="images/2.png" alt=" " class="img-responsive">
                                    </div>
                                    <div class="rating-left">
                                        <img src="images/2.png" alt=" " class="img-responsive">
                                    </div>
                                    <div class="rating-left">
                                        <img src="images/2.png" alt=" " class="img-responsive">
                                    </div>
                                    <div class="rating-left">
                                        <img src="images/1.png" alt=" " class="img-responsive">
                                    </div>
                                    <div class="rating-left">
                                        <img src="images/1.png" alt=" " class="img-responsive">
                                    </div>
                                    <div class="clearfix"></div>
                                </div>
                            </div>
                        </div>
                        <h4>
                            <a href="${pageContext.request.contextPath}/ProdDetailsServlet?prodId=${prod.productId}">${prod.productName}</a>
                        </h4>

                        <p>${prod.introduction}</p>

                        <div class="simpleCart_shelfItem products-right-grid1-add-cart">
                            <p><i>$325</i> <span class="item_price">￥${prod.price}</span><a class="item_add"
                                                                                            href="${pageContext.request.contextPath}/CartServlet?type=add&prodId=${prod.productId}">加入购物车</a>
                            </p>
                        </div>
                    </div>
                    <c:if test="${status.last}">
                        <%System.out.println("</div2>");%>
                        </div>
                    </c:if>
                </c:when>
                <c:when test="${status.last}">
                <%System.out.print("    <div3></div3>\n</div2>\n");%>
                <div class="new-collections-grid1 products-right-grid1 animated wow slideInUp"
                     data-wow-delay=".5s">
                    <div class="new-collections-grid1-image">
                        <a href="${pageContext.request.contextPath}/ProdDetailsServlet?prodId=${prod.productId}"
                           class="product-image"><img src="images/products/${prod.paths[0]}" alt=" "
                                                      class="img-responsive"></a>

                        <div class="new-collections-grid1-image-pos products-right-grids-pos">
                            <a href="${pageContext.request.contextPath}/ProdDetailsServlet?prodId=${prod.productId}">快速查看</a>
                        </div>
                        <div class="new-collections-grid1-right products-right-grids-pos-right">
                            <div class="rating">
                                <div class="rating-left">
                                    <img src="images/2.png" alt=" " class="img-responsive">
                                </div>
                                <div class="rating-left">
                                    <img src="images/2.png" alt=" " class="img-responsive">
                                </div>
                                <div class="rating-left">
                                    <img src="images/2.png" alt=" " class="img-responsive">
                                </div>
                                <div class="rating-left">
                                    <img src="images/1.png" alt=" " class="img-responsive">
                                </div>
                                <div class="rating-left">
                                    <img src="images/1.png" alt=" " class="img-responsive">
                                </div>
                                <div class="clearfix"></div>
                            </div>
                        </div>
                    </div>
                    <h4>
                        <a href="${pageContext.request.contextPath}/ProdDetailsServlet?prodId=${prod.productId}">${prod.productName}</a>
                    </h4>

                    <p>${prod.introduction}</p>

                    <div class="simpleCart_shelfItem products-right-grid1-add-cart">
                        <p><i>$325</i> <span class="item_price">￥${prod.price}</span><a class="item_add"
                                                                                        href="${pageContext.request.contextPath}/CartServlet?type=add&prodId=${prod.productId}">加入购物车</a>
                        </p>
                    </div>
                </div>
            </div>
            </c:when>
            <c:when test="${status.index % 3 == 2}">
            <%System.out.print("    <div3></div3>\n</div2>\n<div2>\n");%>
            <div class="new-collections-grid1 products-right-grid1 animated wow slideInUp"
                 data-wow-delay=".5s">
                <div class="new-collections-grid1-image">
                    <a href="${pageContext.request.contextPath}/ProdDetailsServlet?prodId=${prod.productId}"
                       class="product-image"><img src="images/products/${prod.paths[0]}" alt=" "
                                                  class="img-responsive"></a>

                    <div class="new-collections-grid1-image-pos products-right-grids-pos">
                        <a href="${pageContext.request.contextPath}/ProdDetailsServlet?prodId=${prod.productId}">快速查看</a>
                    </div>
                    <div class="new-collections-grid1-right products-right-grids-pos-right">
                        <div class="rating">
                            <div class="rating-left">
                                <img src="images/2.png" alt=" " class="img-responsive">
                            </div>
                            <div class="rating-left">
                                <img src="images/2.png" alt=" " class="img-responsive">
                            </div>
                            <div class="rating-left">
                                <img src="images/2.png" alt=" " class="img-responsive">
                            </div>
                            <div class="rating-left">
                                <img src="images/1.png" alt=" " class="img-responsive">
                            </div>
                            <div class="rating-left">
                                <img src="images/1.png" alt=" " class="img-responsive">
                            </div>
                            <div class="clearfix"></div>
                        </div>
                    </div>
                </div>
                <h4>
                    <a href="${pageContext.request.contextPath}/ProdDetailsServlet?prodId=${prod.productId}">${prod.productName}</a>
                </h4>

                <p>${prod.introduction}</p>

                <div class="simpleCart_shelfItem products-right-grid1-add-cart">
                    <p><i>$325</i> <span class="item_price">￥${prod.price}</span><a class="item_add"
                                                                                    href="${pageContext.request.contextPath}/CartServlet?type=add&prodId=${prod.productId}">加入购物车</a>
                    </p>
                </div>
            </div>
        </div>
        <div class="col-md-4 products-right-grids-bottom-grid">
            </c:when>
            <c:otherwise>
                <% System.out.print("    <div3></div3>\n");%>
                <div class="new-collections-grid1 products-right-grid1 animated wow slideInUp"
                     data-wow-delay=".5s">
                    <div class="new-collections-grid1-image">
                        <a href="${pageContext.request.contextPath}/ProdDetailsServlet?prodId=${prod.productId}"
                           class="product-image"><img src="images/products/${prod.paths[0]}" alt=" "
                                                      class="img-responsive"></a>

                        <div class="new-collections-grid1-image-pos products-right-grids-pos">
                            <a href="${pageContext.request.contextPath}/ProdDetailsServlet?prodId=${prod.productId}">快速查看</a>
                        </div>
                        <div class="new-collections-grid1-right products-right-grids-pos-right">
                            <div class="rating">
                                <div class="rating-left">
                                    <img src="images/2.png" alt=" " class="img-responsive">
                                </div>
                                <div class="rating-left">
                                    <img src="images/2.png" alt=" " class="img-responsive">
                                </div>
                                <div class="rating-left">
                                    <img src="images/2.png" alt=" " class="img-responsive">
                                </div>
                                <div class="rating-left">
                                    <img src="images/1.png" alt=" " class="img-responsive">
                                </div>
                                <div class="rating-left">
                                    <img src="images/1.png" alt=" " class="img-responsive">
                                </div>
                                <div class="clearfix"></div>
                            </div>
                        </div>
                    </div>
                    <h4>
                        <a href="${pageContext.request.contextPath}/ProdDetailsServlet?prodId=${prod.productId}">${prod.productName}</a>
                    </h4>

                    <p>${prod.introduction}</p>

                    <div class="simpleCart_shelfItem products-right-grid1-add-cart">
                        <p><i>$325</i> <span class="item_price">￥${prod.price}</span><a class="item_add"
                                                                                        href="${pageContext.request.contextPath}/CartServlet?type=add&prodId=${prod.productId}">加入购物车</a>
                        </p>
                    </div>
                </div>
            </c:otherwise>
            </c:choose>
            </c:forEach>

            <div class="clearfix"></div>
        </div>
        <nav class="numbering animated wow slideInRight" data-wow-delay=".5s">
            <%
                Integer totalPages = (Integer) request.getAttribute("totalPages");
                Integer currentPage = (Integer) request.getAttribute("currentPage");
            %>
            <ul class="pagination paging">
                <li>
                    <%
                        if (currentPage == 0) {
                            //恰好是第一页
                    %>
                    <a href="#" aria-label="Previous">
                        <span aria-hidden="true">&laquo;</span>
                    </a>
                    <%
                    } else {
                    %>
                    <a href="${pageContext.request.contextPath}/SearchServlet?searchType=keyword&search=${requestScope.search}&page=<%=currentPage - 1%>"
                       aria-label="Previous">
                        <span aria-hidden="true">&laquo;</span>
                    </a>
                    <%
                        }
                    %>
                </li>
                <%
                    int i = 1;
                    for (i = 1; i <= totalPages; i++) {
                        if (currentPage == i - 1) {
                %>
                <li class="active">
                    <a href="${pageContext.request.contextPath}/SearchServlet?searchType=keyword&search=${requestScope.search}&page=<%=i-1%>"><%=i%><span
                            class="sr-only">(current)</span>
                    </a></li>
                <%
                } else {
                %>
                <li>
                    <a href="${pageContext.request.contextPath}/SearchServlet?searchType=keyword&search=${requestScope.search}&page=<%=i-1%>"><%=i%>
                    </a></li>
                <%
                        }
                    }
                %>
                <li>
                    <%
                        if (currentPage == totalPages - 1) {
                            //恰好是最后一页
                    %>
                    <a href="#" aria-label="Next">
                        <span aria-hidden="true">&raquo;</span>
                    </a>
                    <%
                    } else {
                    %>
                    <a href="${pageContext.request.contextPath}/SearchServlet?searchType=keyword&search=${requestScope.search}&page=<%=currentPage + 1%>"
                       aria-label="Next">
                        <span aria-hidden="true">&raquo;</span>
                    </a>
                    <%
                        }
                    %>
                </li>
            </ul>
        </nav>
    </div>
    <div class="clearfix"></div>
</div>
</div>
<!-- //breadcrumbs -->
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
                    <li><i class="glyphicon glyphicon-map-marker" aria-hidden="true"></i>武汉<span>湖北省</span>
                    </li>
                    <li><i class="glyphicon glyphicon-envelope" aria-hidden="true"></i><a
                            href="mailto:info@example.com">347861304@qq.com</a></li>
                    <li><i class="glyphicon glyphicon-earphone" aria-hidden="true"></i>+159 2711 4610</li>
                </ul>
            </div>
            <div class="col-md-3 footer-grid animated wow slideInLeft" data-wow-delay=".7s">
                <h3>合作商家</h3>

                <div class="footer-grid-left">
                    <img src="images/13.jpg" alt=" " class="img-responsive"/>
                </div>
                <div class="footer-grid-left">
                    <img src="images/14.jpg" alt=" " class="img-responsive"/>
                </div>
                <div class="footer-grid-left">
                    <img src="images/15.jpg" alt=" " class="img-responsive"/>
                </div>
                <div class="footer-grid-left">
                    <img src="images/16.jpg" alt=" " class="img-responsive"/>
                </div>
                <div class="footer-grid-left">
                    <img src="images/13.jpg" alt=" " class="img-responsive"/>
                </div>
                <div class="footer-grid-left">
                    <img src="images/14.jpg" alt=" " class="img-responsive"/>
                </div>
                <div class="footer-grid-left">
                    <img src="images/15.jpg" alt=" " class="img-responsive"/>
                </div>
                <div class="footer-grid-left">
                    <img src="images/16.jpg" alt=" " class="img-responsive"/>
                </div>
                <div class="footer-grid-left">
                    <img src="images/13.jpg" alt=" " class="img-responsive"/>
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
            <h2><a href="index.jsp">咖啡时光<span>品味，随心所欲</span></a></h2>
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