<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name='TTUNION_verify' content='b846c3c2b85efabc496d2a2b8399cd62'>
	<meta name="sogou_site_verification" content="gI1bINaJcL"/>
	<meta name="360-site-verification" content="37ae9186443cc6e270d8a52943cd3c5a"/>
	<meta name="baidu_union_verify" content="99203948fbfbb64534dbe0f030cbe817">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="apple-touch-fullscreen" content="yes">
	<meta name="apple-mobile-web-app-capable" content="yes">
	<meta name="apple-mobile-web-app-status-bar-style" content="black">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
	<meta http-equiv="X-UA-Compatible" content="IE=9; IE=8; IE=7; IE=EDGE;chrome=1">
	<meta name="format-detection" content="telephone=no">
	<meta name="baidu-site-verification" content="ZVPGgtpUfW"/>
	<title>个人中心</title>
	<link rel="icon" type="image/x-icon" href="images/a0.jpg">
	<link href="iTunesArtwork@2x.png" sizes="114x114" rel="apple-touch-icon-precomposed">
	<link type="text/css" rel="stylesheet" href="css/core.css">
	<link type="text/css" rel="stylesheet" href="css/icon.css">
	<link type="text/css" rel="stylesheet" href="css/home.css">

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
<script type="text/javascript" src="js/jquery-1.10.2.js"></script>
	<script type="text/javascript">
		function chat(){
			window.open ("http://api.pop800.com/web800/c.do?l=cn&type=0&n=443603&w=0", "客服", "height=500, width=850, top=0, left=0, toolbar=no, menubar=no, scrollbars=no, resizable=no,location=no, status=no");		
		}
	</script>

<style type="text/css">
	.tablinks{
		display: block;
	    background-color: inherit;
	    color: black;
	    padding: 22px 16px;
	    width: 100%;
	    border: none;
	    outline: none;
	    text-align: left;
	    cursor: pointer;
	    transition: 0.3s;
	    font-size: 17px;
	}
	a{
		text-decoration: none;
	}
</style>
<script type="text/javascript">
			function openCity(evt) {
			    var i, tablinks;
			   
			    tablinks = document.getElementsByClassName("tablinks");
			    for (i = 0; i < tablinks.length; i++) {
			        tablinks[i].className = tablinks[i].className.replace(" active", "");
			    }
			    evt.currentTarget.className += " active";
			}
			// 触发 id="defaultOpen" click 事件
			function abc(){
				document.getElementById("dingdanzhifu").click();
				var guahao = document.getElementById("guhao");
				var guahaoa = document.getElementById("guahaoa");
				$.get("../dochazhaoguahao",{},function(data){
					if(data == 1){
						guahao.className = "guahao";
						guahaoa.style.color = "#ffffff"
						guahaoa.href="../zhuxiaoguahao";
					}else{
						guahao.className = "noguahao";
						guahaoa.style.color = "#000000"
					}
				},"json");
			}
			
</script>
</head>
<body onload="abc()">
	
<!-- head YDC begin -->
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
                <li><a href="myself.jsp">${user_pat.patname }</a></li>
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
<!-- head YDC end -->

<!-- content YDC begin -->
<section>
		<div class="ydc-content-slide ydc-body">
			<div class="ydc-flex">
				<!-- left begin -->
				<div class="ydc-column ydc-column-2">
					<div class="ydc-menu">
						<ul>
							<li class="ydc-menu-item">
								<a href="test.jsp" target="one" class="tablinks"  id="defaultOpen1" onclick="openCity(event)"><i class="ydc-icon ydc-icon-home fl"></i>首页</a>
							</li>
							
							<li class="ydc-menu-item">
								<span class="ydc-menu-sub-title">
									<i class="ydc-icon ydc-icon-file fl"></i>管理
								</span>
								<ul>
									<li>
										<a href="../findpersionalmessage" class="tablinks"target="one" onclick="openCity(event)">个人信息</a>
									</li>
									
								</ul>
							</li>
							<li class="ydc-menu-item">
								<span class="ydc-menu-sub-title">
									<i class="ydc-icon ydc-icon-record fl"></i>病例
								</span>
								<ul>
									<li>
										<a href="../findpat_oldrecord?user_p=${user_pat }" target="one" class="tablinks" onclick="openCity(event)">过往病例</a>
									</li>
									<li>
										<a href="../preshowunpayorder?user_p=${user_pat }" id="dingdanzhifu" target="one" class="tablinks" onclick="openCity(event)">未支付订单</a>
									</li>
									<li>
										<a href="../preshowpatoldorder?user_p=${user_pat }" target="one" class="tablinks" onclick="openCity(event)">以往订单</a>
									</li>
								</ul>
							</li>
							<li class="ydc-menu-item">
								<span class="ydc-menu-sub-title">
									<i class="ydc-icon ydc-icon-set fl"></i>设置
								</span>
								<ul>
									<li>
										<a href="../preshowupdatemessage" target="one" class="tablinks" onclick="openCity(event)">修改信息</a>
									</li>
									
								</ul>
							</li>
							<li class="ydc-menu-item">
								<span class="ydc-menu-sub-title">
									<i class="ydc-icon ydc-icon-customer fl"></i>
								</span>
								<ul>
									<li>
										<a href="#" onclick="chat()" target="one" class="tablinks">联系我们</a>
									</li>
								</ul>
							</li>
						</ul>
					</div>
				</div>
				<div class="ydc-column ydc-column-8" name="one"  style="heigth:1000px; ">
							
							<iframe src="NoDingDan.jsp" name="one" style="scrolling : no;  margin-left: 10px; border: transparent;  height: 100%; width: 100%;"></iframe>
							
				<!-- right end -->
				</div>
				<div id="guhao" style="margin-top: -900px;float:right; margin-left: 100%;padding:13px 20px;height:140px; z-index: 100;">
					<a href="#" id="guahaoa" style="font-size: 20px;">取消挂号</a>
				</div>
			</div>
		</div>



		<div class="ydc-footer" >
			<div>
				<p>©2018 周树人组 版权归我们所有 打击不良信息 从我做起
				</p>
			</div>
		</div>
		<br /><br /><br />
	</section>
	<script type="text/javascript">
	    $(function(){
	        $('.ydc-tabPanel ul li').click(function(){
	            $(this).addClass('hit').siblings().removeClass('hit');
	            $('.ydc-panes>div:eq('+$(this).index()+')').show().siblings().hide();
	        })
	    })
	</script>
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