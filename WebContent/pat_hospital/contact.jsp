<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="keywords" content="">
<meta name="author" content="">
<!-- Site Title   -->
<title>反馈意见</title>
<!-- Fav Icons   -->
<link rel="icon" href="images/a0.jpg" type="image/x-icon">
<link rel="icon" href="images/favicon.png" type="image/x-icon">
<!-- Bootstrap -->
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/bootstrap-dropdownhover.min.css" rel="stylesheet">
<!-- Fonts Awesome -->
<link href="css/font-awesome.min.css" rel="stylesheet">
<!-- Google Fonts -->
<link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,800italic,800,600italic,600,400italic,700,700italic' rel='stylesheet' type='text/css'>
<!-- animate Effect -->
<link href="css/animate.css" rel="stylesheet">
<!-- Main CSS -->
<link href="css/style.css" rel="stylesheet">
<!-- Responsive CSS -->
<link href="css/responsive.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="css/iconfont.css"/>
<script src="js/iconfont.js" type="text/javascript" charset="utf-8"></script>
<script type="text/javascript">
	function fankui(){
		var name = document.getElementById("cf-name").value;
		var email = document.getElementById("cf-email").value;
		var zhuti = document.getElementById("cf-subject").value;
		var neirong = document.getElementById("cf-message").value;
		document.getElementById("cf-name").value="";
		document.getElementById("cf-email").value="";
		document.getElementById("cf-subject").value="";
		document.getElementById("cf-message").value="";
		alert("反馈成功");
		
		$.get("../dofankui",{c_name:name,c_email:email,c_subject:zhuti,c_message:neirong},function(date){
		
		})
	}
</script>
</head>
<body>
<header id="header" class="head">
  <div class="top-header">
     <div class="container">
       <div class="row ">
         <ul class="contact-detail2 col-md-6 pull-left">
           <li> <a href="contact.jsp"><i class="fa fa-mobile"></i>Call US + (81) 178 614 4707</a> </li>
           <li> <a href="contact.jsp"><i class="fa fa-envelope-o"></i> 1441043674@qq.com</a> </li>
         </ul>
         <div class="social-links col-md-6 pull-right">
           <ul class="social-icons pull-right">
             <!--<li> <a href="javascript:;" target="_blank"><i class="fa fa-facebook"></i></a> </li>
             <li> <a href="javascript:;" target="_blank"><i class="fa fa-twitter"></i></a> </li>
             <li> <a href="javascript:;" target="_blank"><i class="fa fa-pinterest"></i></a> </li>
             <li> <a href="javascript:;" target="_blank"><i class="fa fa-skype"></i></a> </li>
             <li> <a href="javascript:;" target="_blank"><i class="fa fa-dribbble"></i></a> </li>-->
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
<section id="inner-title" class="inner-title">
  <div class="container">
    <div class="row">
      <div class="col-md-6 col-lg-6">
        <h2>反馈意见</h2>
      </div>
      <div class="col-md-6 col-lg-6">
        <div class="breadcrumbs">
          <ul>
            <li>当前页:</li>
            <li><a href="index.jsp">主页</a></li>
            <li><a href="contact.jsp">反馈意见</a></li>
          </ul>
        </div>
      </div>
    </div>
  </div>
</section>
<section id="section16" class="section16">
  <div class="container">
    <div class="row">
      <div class="col-md-3 col-md-offset-1">
        <div class="single-location">
          <div class="loc-icon">
            <i class="fa fa-phone fa-2x"></i>
          </div>
          <span class="loc-content">+(81)178-614-4707</span>
          <span class="loc-content">+(81)10086</span>
        </div>
      </div>
      <div class="col-md-4">
        <div class="single-location">
          <div class="loc-icon">
            <i class="fa fa-envelope fa-2x"></i>
          </div>
          <span class="loc-content">1441043674@qq.com</span>
          <span class="loc-content">help@example.net</span>
        </div>
      </div>
      <div class="col-md-3">
        <div class="single-location">
          <div class="loc-icon">
            <i class="fa fa-map-marker fa-2x"></i>
          </div>
          <span class="loc-content">山东省济南市长清区</span>
          <span class="loc-content">大学路3501号</span>
        </div>
      </div>
    </div>
    <div class="row">
      <div class="col-md-6 col-lg-6">
        <form id="contact" role="form">
          <!-- successfully -->
          <p class="success alert alert-success"><i class="fa fa-check"></i> Your message has been sent successfully. </p>
          <!-- unsuccessfully -->
          <p class="error alert alert-danger"><i class="fa fa-times"></i>电子邮件必须是有效的，消息必须长于1个字符。 </p>
          <div class="control-group form-group">
            <div class="controls">
              <input  class="form-control" id="cf-name" type="text" name="cf-name" placeholder="姓名">
              <p class="help-block"></p>
            </div>
          </div>
          <div class="control-group form-group">
            <div class="controls">
              <input class="form-control" id="cf-email" type="email" name="cf-email" placeholder="邮箱">
            </div>
          </div>
          <div class="control-group form-group">
            <div class="controls">
             <input class="form-control" id="cf-subject" type="text" name="cf-subject" placeholder="主题">
            </div>
          </div>
          <div class="control-group form-group">
            <div class="controls">
              <textarea class="form-control custom-control" id="cf-message" rows="4" name="cf-message" placeholder="我们怎样可以帮助到您？ " style="resize:none"></textarea>
            </div>
          </div>
          <div id="success"></div>
          <!-- For success/fail messages -->
          <button type="button" id="cf-submit" name="submit" class="btn btn-primary" onclick="fankui()">提交</button>
        </form>
      </div>
      <div class="col-md-6 col-lg-6">
        <iframe src="map.html" width="800" height="370" frameborder="0" style="border:0" allowfullscreen ></iframe>
      </div>
    </div>
  </div>
</section>
<section id="footer-top" class="footer-top">
  <div class="container">
    <div class="row">
      <div class="col-md-3 col-lg-3">
        <div class="footer-top-box">
         <h4>关于我们</h4>
          <p> 医院宗旨：以促进和发展健康产业为己任，让生命因我们的存在更璀璨。</p></br>
          <p> 医院精神：无限忠诚的主人翁精神；紧密协作的团队精神；超前持续的创新精神；主动优质的服务精神；百折不挠的拼搏精神：追求卓越的管理精神。</p></br>
          <p> 医院价值观：生命健康是对企业价值最大的认可；服务满意是对我们工作的最高奖赏</p></br>
        </div>
        <div class="footer-top-box">
          <h4>办公时间</h4>
          <b>上午 :</b> 8：00时—11：30时<br/>
          <b>下午 :</b>14：00时—17：00时
        </div>
      </div>
      <div class="col-md-3 col-lg-3">
        <div class="footer-top-box">
          <h4>咨讯焦点</h4>
          <ul>
            <li>
              <div class="recent-post-widget">
                <a href="javascript:;" class="widget-img-thumb">
                  <img src="images/post-1.jpg" class="img-responsive">
                </a>
                <div class="widget-content">
                  <h5><a href="javascript:;" class="sidebar-item-title">最新药物研究</a></h5>
                  <a href="javascript:;">
                    <p class="widget-date">发帖：3天前</p>
                  </a>
                </div>
                <div class="clearfix"></div>
              </div>
            </li>
            <li>
              <div class="recent-post-widget">
                <a href="javascript:;" class="widget-img-thumb">
                  <img src="images/post-2.jpg" class="img-responsive">
                </a>
                <div class="widget-content">
                  <h5><a href="javascript:;" class="sidebar-item-title">医疗器械</a></h5>
                  <a href="javascript:;">
                    <p class="widget-date">发帖: 6个月前</p>
                  </a>
                </div>
                <div class="clearfix"></div>
              </div>
            </li>
          </ul>
        </div>
      </div>
      <div class="col-md-3 col-lg-3">
        <div class="footer-top-box">
          <h4>医疗特色</h4>
          <div class="tag"><a href="javascript:;">针灸</a></div>
          <div class="tag"><a href="javascript:;">x光检查</a></div>
          <div class="tag"><a href="javascript:;">健康保健学</a></div>
          <div class="tag"><a href="javascript:;">艾滋病教育</a></div>
          <div class="tag"><a href="javascript:;">心理辅导</a></div>
        </div>
      </div>
      <div class="col-md-3 col-lg-3">
        <div class="footer-top-box">
          <h4>联系我们</h4>
          <p><b>地址 : 山东省济南市长清区</b>齐鲁工业大学<br/>
            <b>电话: </b> +178 614 4707<br/>
            <b>邮箱: </b> 1441043674@qq.com </p>
        </div>
        <div class="footer-top-box">
          <h4>订阅</h4>
          <div class="cs-form">
            <form action="#" method="post">
              <div class="input-holder">
                <input type="email" placeholder="输入有效电子邮件地址">
                <label> <i class="fa fa-location-arrow fa-2x"></i>
                  <input class="submit-bgcolor" type="submit" value="submit">
                </label>
              </div>
            </form>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
<section id="footer-bottom" class="footer-bottom">
  <div class="container">
    <div class="row">
      
      <div class="col-lg-3">
        <ul class="list-inline social-buttons">
          <li><a href="javascript:;"><i class="fa fa-twitter"></i></a></li>
          <li><a href="javascript:;"><i class="fa fa-facebook"></i></a></li>
          <li><a href="javascript:;"><i class="fa fa-linkedin"></i></a></li>
        </ul>
      </div>
    </div>
  </div>
</section>
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
