<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
	<head>

		<title>个人中心</title>
		<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="keywords" content="">
<meta name="author" content="">

<!-- Fav Icons   -->
<link rel="icon" href="images/a0.jpg" type="image/x-icon">
<!-- Bootstrap -->
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/bootstrap-dropdownhover.min.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="css/iconfont.css"/>
<script src="js/iconfont.js" type="text/javascript" charset="utf-8"></script>
<!-- Fonts Awesome -->
<link href="css/font-awesome.min.css" rel="stylesheet">
<!-- Google Fonts -->
<link href='https://fonts.googleapis.com/css?family=Raleway:400,200,300,100,500,600,700,800,900' rel='stylesheet' type='text/css'>
<link href="https://fonts.googleapis.com/css?family=Poppins:300,400" rel="stylesheet">
<!-- animate Effect -->
<link href="css/animate.css" rel="stylesheet">
<!-- Main CSS -->
<link href="css/style.css" rel="stylesheet">
<!-- Responsive CSS -->
<link href="css/responsive.css" rel="stylesheet">
	</head>
	<body>
		<header id="header" class="head">
  <div class="top-header">
     <div class="container">
       <div class="row ">
         <ul class="contact-detail2 col-md-6 pull-left">
           <li> <a href="#" target="_blank"><i class="fa fa-mobile"></i>Call US + (81) 178 614 4707</a> </li>
           <li> <a href="#" target="_blank"><i class="fa fa-envelope-o"></i> 1441043674@qq.com</a> </li>
         </ul>
         <div class="social-links col-md-6 pull-right">
           <ul class="social-icons pull-right">
             <!--<li> <a href="#" target="_blank"><i class="fa fa-facebook"></i></a> </li>
             <li> <a href="#" target="_blank"><i class="fa fa-twitter"></i></a> </li>
             <li> <a href="#" target="_blank"><i class="fa fa-pinterest"></i></a> </li>
             <li> <a href="#" target="_blank"><i class="fa fa-skype"></i></a> </li>
             <li> <a href="#" target="_blank"><i class="fa fa-dribbble"></i></a> </li>-->
           </ul>
         </div>
       </div>
     </div>
    </div>
    <nav class="navbar navbar-default navbar-menu">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse"> 
            <span class="sr-only">Toggle navigation</span> 
            <span class="icon-bar"></span> 
            <span class="icon-bar"></span> 
            <span class="icon-bar"></span> 
          </button>
          <a class="navbar-brand" href="index.jsp">
            <div class="logo-text"><span><samp><i class="iconfont icon-hospital" style="line-height: 40px;font-size: 40px;"></i></samp>工大校医</span></div>
            <!-- <img src="images/logo.png" alt="logo"> ﹠-->
          </a> 
        </div>
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1" data-hover="dropdown" data-animations="fadeIn">
          <ul class="nav navbar-nav navbar-right">
            <li class="active"><a href="index.jsp">主页</a></li>
            <li><a href="aboutus.jsp">关于我们 </a></li>
            <li><a href="contact.jsp">反馈意见 </a></li>
        <c:choose>
            <c:when test="${empty user_pat}">
                <li><a href="parlogin.jsp">注册/登录</a>
                </li>
            </c:when>
            <c:otherwise>
                <li><a href="myself.jsp"><c:out value="${user_pat.patname }"></c:out></a></li>
                <li><a href="../dozhuxiao">退出登录</a>
                </li>
            </c:otherwise>
        </c:choose>
          </ul>
        </div>
        <!--/.nav-collapse --> 
      </div>
    </nav>
</header>








<script src="js/jquery.min.js"></script> 
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.plugin.min.js"></script>
<script src="js/jquery.isotope.min.js"></script> 
<script src="js/jquery.magnific-popup.min.js"></script> 
<script src="js/bootstrap-dropdownhover.min.js"></script>
<script src="js/wow.min.js"></script> 
<script src="js/waypoints.min.js"></script> 
<script src="js/jquery.counterup.min.js"></script> 
<script src="js/main.js"></script>
	</body>
</html>
