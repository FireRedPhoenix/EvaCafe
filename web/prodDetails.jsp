<%--
  Created by IntelliJ IDEA.
  User: Phoenix
  Date: 2016/7/9
  Time: 22:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>${requestScope.product.productName}</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charFFset=utf-8"/>
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
                                href="${pageContext.request.contextPath}/LogInOutServlet?type=logout">退出</a></li>
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
                <h1><a href="index.jsp">咖啡时光<span>品味，随心所欲</span></a></h1>
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
                            <li class="active"><a href="index.jsp" class="act">主页</a></li>
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
                            <%--<li><a href="mail.html">联系我们</a></li>--%>
                        </ul>
                    </div>
                </nav>
            </div>
            <div class="logo-nav-right">
                <div class="search-box">
                    <div id="sb-search" class="sb-search">
                        <form action="${pageContext.request.contextPath}/SearchServlet?searchType=keyword&page=0"
                              METHOD="POST">
                            <input class="sb-search-input" placeholder="输入你想查找的..." type="search"
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
                    <a href="${pageContext.request.contextPath}/CartServlet?type=view">
                        <h3>我的购物车</h3>
                    </a>
                    <a href="${pageContext.request.contextPath}/OrderServlet">
                        <h3>我的订单</h3>
                    </a>
                    <%--<p><a href="javascript:;" class="simpleCart_empty">清空购物车</a></p>--%>
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
            <li class="active">${requestScope.product.productName}</li>
        </ol>
    </div>
</div>
<!-- //breadcrumbs -->
<!-- single -->
<div class="single">
    <div class="container">
        <div class="col-md-4 products-left">
            <div class="filter-price animated wow slideInUp" data-wow-delay=".5s">
                <h3>价格区间</h3>
                <ul class="dropdown-menu1">
                    <li><a href="#">
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
                        values: [${requestScope.product.price}, ${requestScope.product.price}],
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
        </div>
        <div class="col-md-8 single-right">
            <div class="col-md-5 single-right-left animated wow slideInUp" data-wow-delay=".5s">
                <div class="flexslider">
                    <ul class="slides">
                        <c:forEach items="${requestScope.product.paths}" var="path">
                            <li data-thumb="images/products/${path}">
                                <div class="thumb-image"><img style="" src="images/products/${path}"
                                                              data-imagezoom="true"
                                                              class="img-responsive"></div>
                            </li>
                        </c:forEach>
                    </ul>
                </div>
                <!-- flixslider -->
                <script defer src="js/jquery.flexslider.js"></script>
                <link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen"/>
                <script>
                    // Can also be used with $(document).ready()
                    $(window).load(function () {
                        $('.flexslider').flexslider({
                            animation: "slide",
                            controlNav: "thumbnails"
                        });
                    });
                </script>
                <!-- flixslider -->
            </div>
            <div class="col-md-7 single-right-left simpleCart_shelfItem animated wow slideInRight" data-wow-delay=".5s">
                <h3>${requestScope.product.productName}</h3>
                <h4><span class="item_price">￥${requestScope.product.price}</span></h4>

                <div class="rating1">
						<span class="starRating">
							<input id="rating5" type="radio" name="rating" value="5">
							<label for="rating5">5</label>
							<input id="rating4" type="radio" name="rating" value="4">
							<label for="rating4">4</label>
							<input id="rating3" type="radio" name="rating" value="3" checked>
							<label for="rating3">3</label>
							<input id="rating2" type="radio" name="rating" value="2">
							<label for="rating2">2</label>
							<input id="rating1" type="radio" name="rating" value="1">
							<label for="rating1">1</label>
						</span>
                </div>
                <div class="description">
                    <h5><i>品质</i></h5>

                    <p>${requestScope.product.level}级</p>
                </div>
                <div class="description">
                    <h5><i>描述</i></h5>

                    <p>${requestScope.product.introduction}</p>
                </div>
                <div class="description">
                    <h5><i>品牌</i></h5>

                    <p>${requestScope.product.brand}</p>
                </div>
                <div class="description">
                    <h5><i>产地</i></h5>

                    <p>${requestScope.product.producingArea}</p>
                </div>
                <div class="color-quality">
                    <form method="POST"
                          action="${pageContext.request.contextPath}/BuyServlet?type=buy&prodId=${requestScope.product.productId}">
                        <div>
                            <input style="margin-top: 10px;padding-left: 10px; width:200px;height:35px;margin-left: 0px;border:1px solid #cccccc;"
                                   type="text" placeholder="请输入配送地址" value="" name="address"/><font color="red">${addressMsg}</font>
                        </div>
                        <div>
                            <input style="padding-left:10px; width:80px;height:35px;margin-left: 0px;margin-top:25px;border:1px solid #cccccc;float:left;"
                                   type="number" placeholder="数量" value="1" name="nums"/><font color="red">${numMsg}</font>
                        </div>
                        <div class="clearfix"></div>
                        <div style="margin-top:30px;margin-left: 0px" class="occasion-cart">
                            <input style="font-size: 13px;background: #ffffff;padding-left: 15px;padding-top: 7px;padding-bottom: 7px;padding-right:15px;color: #D8703F;border: 1px solid #D8703F;"
                                   type="submit"
                                   value="一键购买"/>
                        </div>
                    </form>
                </div>
                <br>

                <div style="margin-bottom: 20px;margin-left: 0px;float:left;margin-bottom: 30px;"
                     class="occasion-cart">
                    <a class="item_add"
                       href="${pageContext.request.contextPath}/CartServlet?type=add&prodId=${requestScope.product.productId}">加入购物车 </a>
                </div>

                <div style="margin-top: 50px;" class="social">
                    <div class="social-left">
                        <p>Share On :</p>
                    </div>
                    <div class="social-right">
                        <ul class="social-icons">
                            <li><a href="#" class="facebook"></a></li>
                            <li><a href="#" class="twitter"></a></li>
                            <li><a href="#" class="g"></a></li>
                            <li><a href="#" class="instagram"></a></li>
                        </ul>
                    </div>
                    <div class="clearfix"></div>
                </div>
            </div>
            <div class="clearfix"></div>
            <div class="bootstrap-tab animated wow slideInUp" data-wow-delay=".5s">
                <div class="bs-example bs-example-tabs" role="tabpanel" data-example-id="togglable-tabs">
                    <ul id="myTab" class="nav nav-tabs" role="tablist">
                        <li role="presentation" class="active"><a href="#home" id="home-tab" role="tab"
                                                                  data-toggle="tab" aria-controls="home"
                                                                  aria-expanded="true">简介</a></li>
                        <li role="presentation"><a href="#profile" role="tab" id="profile-tab" data-toggle="tab"
                                                   aria-controls="profile">评论(${requestScope.reviews.size()})</a>
                        </li>
                    </ul>
                    <div id="myTabContent" class="tab-content">
                        <div role="tabpanel" class="tab-pane fade in active bootstrap-tab-text" id="home"
                             aria-labelledby="home-tab">
                            <h5>简介</h5>

                            <p>${requestScope.product.introduction}</p>
                        </div>

                        <div role="tabpanel" class="tab-pane fade bootstrap-tab-text" id="profile"
                             aria-labelledby="profile-tab">
                            <div class="bootstrap-tab-text-grids">

                                <c:forEach items="${requestScope.reviews}" var="review">
                                    <div style="margin-bottom: 20px;" class="bootstrap-tab-text-grid-left">
                                        <img src="images/5.png" alt=" " class="img-responsive"/>
                                    </div>
                                    <div style="margin-bottom: 20px;" class="bootstrap-tab-text-grid-right">
                                        <ul>
                                            <li><a href="#">${review.username}</a></li>
                                            <li><a href="#"><span class="glyphicon glyphicon-share"
                                                                  aria-hidden="true"></span>Reply</a></li>
                                        </ul>
                                        <p>${review.rview}</p>
                                    </div>
                                    <div class="clearfix"></div>
                                </c:forEach>

                                <div class="add-review">
                                    <h4>添加评论</h4>
                                    <font color="red">${requestScope.reviewMsg}</font>

                                    <form method="POST"
                                          action="${pageContext.request.contextPath}/ReviewServlet?prodId=${requestScope.product.productId}">
                                        <%--<input type="text" value="Name" onfocus="this.value = '';"--%>
                                        <%--onblur="if (this.value == '') {this.value = 'Name';}" required="">--%>
                                        <%--<input type="email" value="Email" onfocus="this.value = '';"--%>
                                        <%--onblur="if (this.value == '') {this.value = 'Email';}" required="">--%>
                                        <%--<input type="text" value="Subject" onfocus="this.value = '';"--%>
                                        <%--onblur="if (this.value == '') {this.value = 'Subject';}" required="">--%>
                                        <textarea type="text" onfocus="this.value = '';"
                                        <%--onblur="if (this.value == '') {this.value = 'Message...';}"--%>
                                                  name="reviewMsg"></textarea>
                                        <input type="submit" value="发送">
                                    </form>
                                </div>
                            </div>
                        </div>


                        <div role="tabpanel" class="tab-pane fade bootstrap-tab-text" id="dropdown1"
                             aria-labelledby="dropdown1-tab">
                            <p>Etsy mixtape wayfarers, ethical wes anderson tofu before they sold out mcsweeney's
                                organic lomo retro fanny pack lo-fi farm-to-table readymade. Messenger bag gentrify
                                pitchfork tattooed craft beer, iphone skateboard locavore carles etsy salvia banksy
                                hoodie helvetica. DIY synth PBR banksy irony. Leggings gentrify squid 8-bit cred
                                pitchfork. Williamsburg banh mi whatever gluten-free, carles pitchfork biodiesel fixie
                                etsy retro mlkshk vice blog. Scenester cred you probably haven't heard of them, vinyl
                                craft beer blog stumptown. Pitchfork sustainable tofu synth chambray yr.</p>
                        </div>
                        <div role="tabpanel" class="tab-pane fade bootstrap-tab-text" id="dropdown2"
                             aria-labelledby="dropdown2-tab">
                            <p>Trust fund seitan letterpress, keytar raw denim keffiyeh etsy art party before they sold
                                out master cleanse gluten-free squid scenester freegan cosby sweater. Fanny pack
                                portland seitan DIY, art party locavore wolf cliche high life echo park Austin. Cred
                                vinyl keffiyeh DIY salvia PBR, banh mi before they sold out farm-to-table VHS viral
                                locavore cosby sweater. Lomo wolf viral, mustache readymade thundercats keffiyeh craft
                                beer marfa ethical. Wolf salvia freegan, sartorial keffiyeh echo park vegan.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="clearfix"></div>
    </div>
</div>
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
                        <a href="http://www.csdn.net/"><img src="images/9.jpg" alt=" " class="img-responsive"/></a>
                    </div>
                    <div class="footer-grid-sub-grid-right">
                        <h4><a href="http://www.csdn.net/">我们的CSDN博客</a></h4>

                        <p>发表于 12/7/2016</p>
                    </div>
                    <div class="clearfix"></div>
                </div>
                <div class="footer-grid-sub-grids">
                    <div class="footer-grid-sub-grid-left">
                        <a href="http://www.cnblogs.com/"><img src="images/10.jpg" alt=" " class="img-responsive"/></a>
                    </div>
                    <div class="footer-grid-sub-grid-right">
                        <h4><a href="http://www.cnblogs.com/">我们的博客园博客</a></h4>

                        <p>发表于 12/7/2016</p>
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
<!-- zooming-effect -->
<script src="js/imagezoom.js"></script>
<!-- //zooming-effect -->
</body>
</html>
