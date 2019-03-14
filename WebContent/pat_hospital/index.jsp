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
<title>Home</title>
<link rel="icon" href="images/a0.jpg" type="image/x-icon">
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/bootstrap-dropdownhover.min.css" rel="stylesheet">
<script src="js/iconfont.js" type="text/javascript" charset="utf-8"></script>
<link href="css/font-awesome.min.css" rel="stylesheet">
<!-- Google Fonts -->
<link href='https://fonts.googleapis.com/css?family=Raleway:400,200,300,100,500,600,700,800,900' rel='stylesheet' type='text/css'>
<link href="https://fonts.googleapis.com/css?family=Poppins:300,400" rel="stylesheet">
<link href="css/animate.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet">
<link href="css/responsive.css" rel="stylesheet">
<link href="css/iconfont.css" rel="stylesheet">
	<script type="text/javascript">
		function chat(){
			window.open ("http://api.pop800.com/web800/c.do?l=cn&type=0&n=443603&w=0", "客服", "height=500, width=850, top=0, left=0, toolbar=no, menubar=no, scrollbars=no, resizable=no,location=no, status=no");		
		}
	</script>
</head>
<body>
<header id="header" class="head">
  <div class="top-header">
     <div class="container">
       <div class="row ">
         <ul class="contact-detail2 col-md-6 pull-left">
           <li> <a href="contact.jsp" target="_blank"><i class="fa fa-mobile"></i>Call US + (81) 178 614 4707</a> </li>
           <li> <a href="contact.jsp" target="_blank"><i class="fa fa-envelope-o"></i> 1441043674@qq.com</a> </li>
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
<section id="slider" class="">
  <!-- Carousel -->
  <div id="main-slide" class="carousel slide" data-ride="carousel">

    <!-- Indicators -->
    <ol class="carousel-indicators visible-lg visible-md">
        <li data-target="#main-slide" data-slide-to="0" class="active"></li>
       <li data-target="#main-slide" data-slide-to="1"></li>
       <li data-target="#main-slide" data-slide-to="2"></li>
    </ol><!--/ Indicators end-->

    <!-- Carousel inner -->
    <div class="carousel-inner">

      <div class="item active" style="background-image:url(images/slide/1.jpg)">
            <div class="slider-content text-left">
               <div class="col-md-12">
                   <h2 class="slide-title effect2">情系健康，缔造完美生活</h2>
                   <h3 class="slide-sub-title effect3">为了您的健康，我们一直在努力！</h3>
                   <p class="slider-description lead effect3">您的认可，是对我们最好的嘉奖！</p>
                   <p class="effect3">
                    <a href="#dingwei" class="slider btn btn-primary">Our Service</a>
                    <a href="aboutus.jsp" class="slider btn btn-secondary">关于我们</a>
                   </p>      
               </div>
            </div>
       </div><!--/ Carousel item 1 end -->


      <div class="item" style="background-image:url(images/slide/2.jpg)">
            <div class="slider-content">
               <div class="col-md-12 text-center">
                   <h2 class="slide-title effect4"> 医训</h2>
                   <h3 class="slide-sub-title effect5">厚德行医 医德共济</h3>
                   <p>
                    <a href="#dingwei" class="slider btn btn-primary">我们的服务</a>
                   </p>      
               </div>
            </div>
       </div><!--/ Carousel item 2 end -->


       <div class="item" style="background-image:url(images/slide/3.jpg)">
            <div class="slider-content text-right">
               <div class="col-md-12">
                   <h2 class="slide-title effect6">更好的医疗水平</h2>
                   <h3 class="slide-sub-title effect7">树岗位新风 展天使风采</h3>
                   <p class="slider-description lead effect7">给我一分信任，还您十分健康</p>
                   <p>
                   <c:choose>
                   	<c:when test="${empty user_pat}">
                   	<a href="parlogin.jsp" class="slider btn btn-primary">&nbsp;&nbsp;&nbsp;&nbsp;咨询我们&nbsp;&nbsp;&nbsp;&nbsp;</a>
                   	</c:when>
                   	<c:otherwise>
                   	<a href="javascript:;" onclick="chat()" class="slider btn btn-primary">&nbsp;&nbsp;&nbsp;&nbsp;咨询我们&nbsp;&nbsp;&nbsp;&nbsp;</a>
                   </c:otherwise>
                   </c:choose>
                    <a href="javascript:;" class="slider btn btn-primary border">&nbsp;了解更多&nbsp;</a>
                   </p>      
               </div>
            </div>
        </div><!--/ Carousel item 3 end -->
        
    </div><!-- Carousel inner end-->

    <!-- Controllers -->
    <a class="left carousel-control" href="#main-slide" data-slide="prev">
        <span><i class="fa fa-angle-left"></i></span>
    </a>
    <a class="right carousel-control" href="#main-slide" data-slide="next">
        <span><i class="fa fa-angle-right"></i></span>
    </a>
  </div><!--/ Carousel end -->
</section>
<div id="dingwei"></div>
<section id="section1" class="section-margine">
  <div class="container">
    <div class="row">
      <div class="col-md-3 col-sm-6">
      
        <div class="section-1-box wow bounceIn">
        	<c:choose>
        		<c:when test="${empty user_pat}">
        			<a href="parlogin.jsp">
          				<div class="section-1-box-icon-background"><i class="iconfont icon-jinriguahao"></i></div>
          				<h4 class="text-center" >挂号</h4>
            		</a>
        		</c:when>
        		<c:otherwise>
					<a href="guahao.jsp">
	          			<div class="section-1-box-icon-background"><i class="iconfont icon-jinriguahao"></i></div>
	          			<h4 class="text-center" >挂号</h4>
	            	</a>        		
        		</c:otherwise>
        	</c:choose>
        </div>
       
      </div>
      <div class="col-md-3  col-sm-6">
        <div class="section-1-box wow bounceIn" data-wow-delay=".1s">
          <c:choose>
          	<c:when test="${empty user_pat}">
	          <a href="parlogin.jsp">
			      <div class="section-1-box-icon-background"><i class="iconfont icon-yaoxiang"></i></div>
			      <h4 class="text-center">自助拿药</h4>
	          </a>
          	</c:when>
          	<c:otherwise>
	          <a href="../domedicine">
		          <div class="section-1-box-icon-background"><i class="iconfont icon-yaoxiang"></i></div>
		          <h4 class="text-center">自助拿药</h4>
	          </a>
          	</c:otherwise>
          </c:choose>
        </div>
      </div>
      	<c:choose>
           <c:when test="${empty user_pat}">
               <div class="col-md-3  col-sm-6">
       			<div class="section-1-box wow bounceIn" data-wow-delay=".2s">
         				<a href="parlogin.jsp">
			          <div class="section-1-box-icon-background"><i class="iconfont icon-gerenzhongxin"></i></div>
			          <h4 class="text-center">个人中心</h4>
         				</a>
       			</div>
     			</div>
           </c:when>
           <c:otherwise>
			<div class="col-md-3  col-sm-6">	
				<div class="section-1-box wow bounceIn" data-wow-delay=".2s">
					 <a href="myself.jsp">
						<div class="section-1-box-icon-background"><i class="iconfont icon-gerenzhongxin"></i></div>
						<h4 class="text-center">个人中心</h4>
					</a>
				</div>
			</div>
		</c:otherwise>
	</c:choose>
     
      <div class="col-md-3  col-sm-6">
        <div class="section-1-box wow bounceIn" data-wow-delay=".3s">
        	<c:choose>
        		<c:when test="${empty user_pat}">
        			<a href="parlogin.jsp">
			    		<div class="section-1-box-icon-background"><i class="iconfont icon-kefu"></i></div>
			    		<h4 class="text-center">咨询我们</h4>
        			</a>
        		</c:when>
        		<c:otherwise>
        			<a href="javascript:;"  onclick="chat()">
			    		<div class="section-1-box-icon-background"><i class="iconfont icon-kefu"></i></div>
			    		<h4 class="text-center">咨询我们</h4>
        			</a>
        		</c:otherwise>
        	</c:choose>
        </div>
        
      </div>
    </div>
  </div>
</section>
<section id="section2" class="section-margine">
  <div class="container">
    <div class="row">
      <div class="col-md-8 nopadding">
          <div class="col-md-6 col-sm-6">
            <div class="section-2-box-left wow fadeInLeft">
              <figure><img src="images/m1.jpg" class="img-responsive"></figure>
              <h4>医疗诊断</h4>
              <br /><br />
              <p>采用最先进的医疗设备，做出最精确的诊断。<br /></p>
              <a href="javascript:;" class="btn btn-primary">&nbsp;了解更多&nbsp;</a>
            </div>
          </div>
          <div class="col-md-6 col-sm-6">
            <div class="section-2-box-left wow fadeInLeft">
              <figure><img src="images/m2.jpg" class="img-responsive"></figure>
              <h4>医护力量</h4><br />
              <p><br />我们会投入更多的精力来照顾你们。<br /></p>
              <a href="javascript:;" class="btn btn-primary">&nbsp;了解更多&nbsp;</a>
            </div>
          </div>
      </div>
      <div class="col-md-4  col-sm-12">
        <div class="section-2-box-right wow fadeInRight">
          <h3>就诊时间</h3>
          <p>为方便广大教职工、学生及社区居民的就医，现将<br />校医院就诊时间安排如下</p><br />
          <ul> 
            <li>上午8：00时—11：30时</li><br />
            <li> 下午14：00时—17：00时</li> <br />
          </ul>
          <a data-toggle="modal" href="#appointment" class="btn btn-default">意见反馈</a>
        </div>
      </div>
    </div>
  </div>
</section>
<section id="section3" class="section-margine section3-background">
  <div class="container">
    <div class="row">
      <div class="col-md-3 col-sm-6">
        <div class="section-3-box">
          <figure><i class="fa fa-desktop fa-2x"></i></figure>
          <h3><span class="counter">100</span>+</h3>
          <h4>医生 & 护士</h4>
        </div>
      </div>
      <div class="col-md-3 col-sm-6">
        <div class="section-3-box">
          <figure><i class="fa fa-group fa-2x"></i></figure>
          <h3><span class="counter">5000</span>+</h3>
          <h4>接诊患者数量</h4>
        </div>
      </div>
      <div class="col-md-3 col-sm-6">
        <div class="section-3-box">
          <figure><i class="fa fa-coffee fa-2x"></i></figure>
          <h3><span class="counter">50</span>+</h3>
          <h4>医院连锁</h4>
        </div>
      </div>
      <div class="col-md-3 col-sm-6">
        <div class="section-3-box">
          <figure><i class="fa fa-glass fa-2x"></i></figure>
          <h3><span class="counter">400</span>+</h3>
          <h4>获奖数量</h4>
        </div>
      </div>
    </div>
  </div>
</section>

<section  id="section5" class="section-5 section-margine">
  <div class="container">
    <div class="row my-team">
      <div class="col-md-12">
        <header class="title-head">
          <h2>建设新时代国内一流强院</h2>
          <div class="line-heading">
            <span class="line-left"></span>
            <span class="line-middle">+</span>
            <span class="line-right"></span>
          </div>
        </header>
      </div>
      <div class="col-md-3 col-sm-6 my-team-member wow fadeInUp">
        <div class="my-member-img">
          <img src="images/team/1.jpg" class="img-responsive" alt="team01">
        </div>
        <div class="my-team-detail text-center">
          <h4 class="my-member-name">黄成兴</h4>
          <p class="my-member-post">院长</p>  
          <div class="my-member-social">
            <ul>
              <li><a href="javascript:;" ><i class="fa fa-envelope"></i></a></li>
              <li><a href="javascript:;" ><i class="fa fa-facebook"></i></a></li>
              <li><a href="javascript:;" ><i class="fa fa-twitter"></i></a></li>
              <li><a href="javascript:;" ><i class="fa fa-linkedin"></i></a></li>
            </ul>
          </div>        
        </div>        
      </div>
      <div class="col-md-3 col-sm-6 my-team-member wow fadeInUp" data-wow-delay=".2s">
        <div class="my-member-img">
          <img src="images/team/2.jpg" class="img-responsive" alt="team02">
        </div>
        <div class="my-team-detail text-center">
          <h4 class="my-member-name">刘文浩</h4>
          <p class="my-member-post">副院长</p>
          <div class="my-member-social">
            <ul>
              <li><a href="javascript:;" ><i class="fa fa-envelope"></i></a></li>
              <li><a href="javascript:;" ><i class="fa fa-facebook"></i></a></li>
              <li><a href="javascript:;" ><i class="fa fa-twitter"></i></a></li>
              <li><a href="javascript:;" ><i class="fa fa-linkedin"></i></a></li>
            </ul>
          </div>
        </div>        
      </div>
      <div class="col-md-3 col-sm-6 my-team-member wow fadeInUp" data-wow-delay=".3s">
        <div class="my-member-img">
          <img src="images/team/3.jpg" class="img-responsive" alt="team03">
        </div>
        <div class="my-team-detail text-center">
          <h4 class="my-member-name">马云</h4>
          <p class="my-member-post">车间主任</p>
          <div class="my-member-social">
            <ul>
              <li><a href="javascript:;" ><i class="fa fa-envelope"></i></a></li>
              <li><a href="javascript:;"><i class="fa fa-facebook"></i></a></li>
              <li><a href="javascript:;" ><i class="fa fa-twitter"></i></a></li>
              <li><a href="javascript:;" ><i class="fa fa-linkedin"></i></a></li>
            </ul>
          </div>
        </div>          
      </div>
      <div class="col-md-3 col-sm-6 my-team-member wow fadeInUp" data-wow-delay=".2s">
        <div class="my-member-img">
          <img src="images/team/4.jpg" class="img-responsive" alt="team04">
        </div>
        <div class="my-team-detail text-center">
          <h4 class="my-member-name">刘铠熔</h4>
          <p class="my-member-post">财务大臣</p>         
          <div class="my-member-social">
            <ul>
              <li><a href="javascript:;" ><i class="fa fa-envelope"></i></a></li>
              <li><a href="javascript:;" ><i class="fa fa-facebook"></i></a></li>
              <li><a href="javascript:;" ><i class="fa fa-twitter"></i></a></li>
              <li><a href="javascript:;" ><i class="fa fa-linkedin"></i></a></li>
            </ul>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
<section id="section10" class="section-10-background">
  <div class="container">
    <div class="row">
      <div class="col-md-9 col-lg-9">
        <div class="section-10-box-text-cont">
          <h3>我们会给予你最好的服务<span class="color-yellow">  Call : +81 178 614 4707</span></h3>
        </div>
      </div>
      <div class="col-md-3 col-lg-3">
        <div class="section-10-btn-cont"><a href="javascript:;" class="btn btn-secondary wow fadeInUp">资讯</a></div>
      </div>
    </div>
  </div>
</section>
<section id="section14" class="section-margine">
  <div class="container">
    <div class="row">
      <div class="col-md-12 col-lg-12">
        <header class="title-head">
          <h2>医院风采</h2>
          <div class="line-heading">
            <span class="line-left"></span>
            <span class="line-middle">+</span>
            <span class="line-right"></span>
          </div>
        </header>
      </div>
    </div>
    <div class="row">
      <div class="col-md-4 col-lg-4">
        <div class="section-14-box wow fadeInUp">
          <img src="images/blog/blog-1.jpg" class="img-responsive" alt="Blog image 1">
          <h3><a href="javascript:;">药物研究</a></h3>
          <div class="row">
            <div class="col-md-12 col-lg-12">
              <div class="comments">
                <a class="btn btn-primary btn-sm">7月 30日</a>
                <a  class="btn btn-primary btn-sm">更多</a>
              </div>
            </div>
          </div>
          <p>集中力量投入抗“超级细菌”药物研究联合攻关，重点开展“超级细菌靶标确证及感染机制研究”“抗超级细菌药物筛选模型的建立”“抗超级细菌化合物的设计与筛选”和“大规模化合物样品的合成”的研究。</p>
        </div>
      </div>
      <div class="col-md-4 col-lg-4">
        <div class="section-14-box wow fadeInUp" data-wow-delay=".2s">
          <h3><a href="javascript:;" onclick="chat()">健康咨询</a></h3>
          <div class="row">
            <div class="col-lg-12">
              <div class="comments">
                <a class="btn btn-primary btn-sm">1月 8日</a>
                <a  class="btn btn-primary btn-sm">更多</a>
              </div>
            </div>
          </div>
          <p>优质生活从这里开始，传递最新最热的健康资讯，打造全国第一保健养生平台，提供最全面的健康营品，让我们成为你身边的私人健康顾问。<br /><br /></p>
          <img src="images/blog/blog-2.jpg" class="img-responsive" alt="Blog image 1">
        </div>
      </div>
      <div class="col-md-4 col-lg-4">
        <div class="section-14-box wow fadeInUp" data-wow-delay=".3s">
          <img src="images/blog/blog-3.jpg" class="img-responsive" alt="Blog image 1">
          <h3><a href="javascript:;">我们的合作</a></h3>
          <div class="row">
            <div class="col-md-12 col-lg-12">
              <div class="comments">
                <a class="btn btn-primary btn-sm">1月 1日</a>
                <a class="btn btn-primary btn-sm">更多</a>
              </div>
            </div>
          </div>
          <p><br /><br />阿里云合作伙伴生态提供全方位的合作与支持，致力于帮助合作伙伴构建基于阿里云的业务实践和解决方案。</p>
        </div>
      </div>
    </div>
  </div>
</section>

<section id="section8" class="mytestimonial">
  <div class="container">
    <div class="row">
      <div data-ride="carousel" class="carousel slide" id="testimonial">
        <ol class="carousel-indicators">
          <li data-target="#testimonial" data-slide-to="0" class="active"><img alt="Testimonial" class="img-responsive" src="images/people/1.jpg">
          </li>
          <li data-target="#testimonial" data-slide-to="1"><img alt="Testimonial" class="img-responsive" src="images/people/2.jpg">
          </li>
        </ol>
        <div class="carousel-inner">
          <div class="item text-center quotes-detail active left">
            <p class="client-quote"><i class="fa fa-quote-left"></i>这家医院也太棒了吧<i class="fa fa-quote-right "></i></p>
            <h5 class="client-name">黄老板</h5>             
          </div>
          <div class="item text-center quotes-detail next left">
            <p class="client-quote"><i class="fa fa-quote-left "></i>这家医院真他娘的好<i class="fa fa-quote-right "></i></p><br />
            <h5 class="client-name">刘老板</h5>
          </div>
        </div> <!-- end carosel-inner --> 
      </div> <!-- end Quotes -->
    </div>
  </div>
</section>

<section id="section23" class="appointment">
  <div class="modal fade" id="appointment" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog style-one" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
          <h4 class="modal-title" id="myModalLabel">Make an Appoinment</h4>
        </div>
        <div class="modal-body">
          <div class="appoinment-form-outer">
            <form action="" method="post">
              <h4>提交您的意见.</h4>
                <div class="form-group">
                  <label>姓名 <span class="required">*</span></label>
                  <input type="text" class="form-control" required="" placeholder="First Name" value="" name="name">
                </div>
                <div class="form-group">
                  <label>Email <span class="required">*</span></label>
                  <input type="email" class="form-control" required="" placeholder="Email" value="" name="name">
                </div>
                <div class="form-group">
                  <label>电话 <span class="required">*</span></label>
                  <input type="text" class="form-control" required="" placeholder="Phone" value="" name="name">
                </div>
                <div class="form-group">
                  <label>年龄 <span class="required">*</span></label>
                  <input type="text" class="form-control" required="" placeholder="age" value="" name="name">
                </div>
                <div class="form-group">
                  <label>日期 <span class="required">*</span></label>
                  <input class="datepicker form-control" type="text" required="" placeholder="MM/DD/Year" value="" name="name">
                </div>
                <div class="form-group">
                  <label>时间<span class="required">*</span></label>
                  <input type="text"  class="timepicker form-control" required="" placeholder="Time" value="" name="name">
                </div>
                <div class="form-group">
                  <label>地址 <span class="required">*</span></label>
                  <input type="text" class="form-control" required="" placeholder="Address" value="" name="name">
                </div>
                <div class="text-left">
                  <button type="button" data-dismiss="modal" class="btn btn-primary" >提交信息</button>
                </div>
            </form>
          </div>
        </div>
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
          <h4>资讯焦点</h4>
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
            <b>电话: </b> + 178 614 4707<br/>
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
