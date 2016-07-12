<%--
  Created by IntelliJ IDEA.
  User: Phoenix
  Date: 2016/7/9
  Time: 8:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>注册</title>
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
                            href="mailto:info@example.com">347861304@qq.com</a></li>
                    <li><i class="glyphicon glyphicon-earphone" aria-hidden="true"></i>+159 <span>2711</span> 4610</li>
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
                <h1><a href="index.html">咖啡时光<span>Shop anywhere</span></a></h1>
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
                            <li><a href="index.jsp">Home</a></li>
                            <!-- Mega Menu -->
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">咖啡 <b
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
                        <form action="${pageContext.request.contextPath}/SearchServlet?searchType=keyword&page=0"
                              METHOD="POST">
                            <input class="sb-search-input" placeholder="输入你想查找的..." type="search"
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
            <li class="active">注册页面</li>
        </ol>
    </div>
</div>
<!-- //breadcrumbs -->
<!-- register -->
<div class="register">
    <div class="container">
        <h3 class="animated wow zoomIn" data-wow-delay=".5s">注册</h3>

        <p class="est animated wow zoomIn" data-wow-delay=".5s">最好的咖啡，最好的时光</p>

        <div class="login-form-grids">
            <h6 class="animated wow slideInUp" data-wow-delay=".5s">注册信息</h6>
            ${msg}
            <form class="animated wow slideInUp" data-wow-delay=".5s"
                  action="${pageContext.request.contextPath}/RegisterServlet" method="POST">
                <input style="margin-bottom: 13px;" type="text" placeholder="用户名" name="username">
                <input type="email" placeholder="邮箱地址" name="email">
                <input type="password" placeholder="输入密码" name="password">
                <input type="password" placeholder="确认密码" name="password2">
                <input style="margin-top: 13px;" type="text" placeholder="手机号码" name="phoneNumber">

                <input type="submit" value="注册">
            </form>
        </div>
        <div class="register-home animated wow slideInUp" data-wow-delay=".5s">
            <a href="index.jsp">主页</a>
        </div>
    </div>
</div>
<!-- //register -->
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
