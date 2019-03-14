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
<meta name="sogou_site_verification" content="gI1bINaJcL" />
<meta name="360-site-verification"
	content="37ae9186443cc6e270d8a52943cd3c5a" />
<meta name="baidu_union_verify"
	content="99203948fbfbb64534dbe0f030cbe817">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="apple-touch-fullscreen" content="yes">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-status-bar-style" content="black">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<meta http-equiv="X-UA-Compatible"
	content="IE=9; IE=8; IE=7; IE=EDGE;chrome=1">
<meta name="format-detection" content="telephone=no">
<meta name="author" content="AUI, a-ui.com">
<meta name="baidu-site-verification" content="ZVPGgtpUfW" />
<title>工大校医院管理系统</title>
<link rel="icon" type="image/x-icon'" href="favicon.ico">
<link href="iTunesArtwork@2x.png" sizes="114x114"
	rel="apple-touch-icon-precomposed">
<link type="text/css" rel="stylesheet" href="admin/css/core.css">
<link type="text/css" rel="stylesheet" href="admin/css/icon.css">
<link type="text/css" rel="stylesheet" href="admin/css/home.css">
<link rel="icon" type="image/x-icon" href="admin/images/docico.jpg">

<script type="text/javascript" src="js/jquery-3.2.1.js"></script>
<script type="text/javascript">
		//判端是否是输入了错误密码后跳转过来的
		var tip;
		window.onload=function(){
			<%
				HttpSession session3=request.getSession();
				String alert=(String)session3.getAttribute("alert");
				if(alert != null){
				
					if(alert.equals("fals")){
			%>
				var labphonenumber=document.getElementById("labphonenumber");
				labphonenumber.innerHTML="<font color='red'>密码错误！</font>";
			<%
					}
					session.removeAttribute("alert");
				}
				
			%>
		}
		
		//判端用户手机号是否存在
		function docheck(obj){
			var x;
			var labphonenumber=document.getElementById("labphonenumber");
			var value=obj.value;
			//alert(value);
			$.get("/hospital/docheckdoclogin",{'phonenumber':value},function(data){
				if(data == 1){
					labphonenumber.innerHTML="<font color='green'>手机号可用！</font>";
				}else{
					labphonenumber.innerHTML="<font color='red'>手机号不存在！</font>";
				}
			},'json');
		}
	</script>

</head>
<body>

	<div class="ydc-body-content">
		<div class="ydc-body-bj">
			<div class="ydc-body-logo">
				<a href="login.html"> <img src="admin/images/icon/ydc-logo.png"
					alt="点击返回主页">
				</a>
			</div>
			<div class="ydc-body-login">
				<h2>登录</h2>
				<div class="ydc-body-login-content">
					<form onsubmit="submitform();" action="../dodoclogin" method="post">
						<div class="ydc-body-login-box">
							<div class="ydc-user-img">
								<div class="ydc-user-img-img">
									<img src="admin/images/icon/ph.png" alt="">
								</div>
							</div>
							<div class="ydc-user-border">
								<input type="text" name="phonenumber" id="phonenumber" placeholder="请输入手机号"
									onblur="docheck(this)">
							</div>
						</div>
						<div class="ydc-body-login-box">
							<div class="ydc-user-img">
								<div class="ydc-user-img-img">
									<img src="admin/images/icon/pad.png" alt="">
								</div>
							</div>
							<div class="ydc-user-border">
								<input type="password" name="password" id="password" placeholder="密码">
							</div>
						</div>
						<div class="ydc-bod-aq">
							<p>为了您的账号安全，请勿在公共电脑登录</p>
						</div>
						<div class="clearfix">
							<div class="fl">
								<input type="checkbox" checked="checked"> <label>十天内免登录</label>
							</div>
							<div class="fr">
								<a href="go-forget.jsp">忘记密码</a>
							</div>
						</div>
						<input type="submit" value="登录" class="ydc-body-submit">
					</form>
					<div>
						<label id="labphonenumber"></label>
					</div>
				</div>

			</div>
		</div>
		<div class="ydc-footer-news">
			<div class="ydc-footer">
				<div>
					<p>©2018 一点车版权所有About 公司简介 联系方法 招聘信息 客户服务 隐私政策 广告服务 网站地图 意见反馈
						不良信息举报</p>
				</div>
			</div>
		</div>
	</div>

	<!-- head YDC begin -->
	<!-- head YDC end -->

	<!-- content YDC begin -->
	<!-- content YDC end -->

	<script type="text/javascript" src="admin/js/jquery.min.js"></script>
	<script type="text/javascript">
	    var slideIndex = 0;
	    showSlides();

	    function showSlides() {
	        var i;
	        var slides = document.getElementsByClassName("mySlides");
	        for (i = 0; i < slides.length; i++) {
	            slides[i].style.display = "none";
	        }
	        slideIndex++;
	        if (slideIndex> slides.length) {slideIndex = 1}
	        slides[slideIndex-1].style.display = "block";
	        setTimeout(showSlides, 3000); // 滚动时间
	    }
	</script>

	<script type="text/javascript">
	    $(function(){
	        $('.ydc-tabPanel ul li').click(function(){
	            $(this).addClass('hit').siblings().removeClass('hit');
	            $('.ydc-panes>div:eq('+$(this).index()+')').show().siblings().hide();
	        })
	    })
	</script>

</body>
</html>