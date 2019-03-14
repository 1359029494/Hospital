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
<link rel="icon" type="image/x-icon" href="favicon.ico">
<link href="iTunesArtwork@2x.png" sizes="114x114"
	rel="apple-touch-icon-precomposed">
<link type="text/css" rel="stylesheet" href="admin/css/core.css">
<link type="text/css" rel="stylesheet" href="admin/css/icon.css">
<link type="text/css" rel="stylesheet" href="admin/css/home.css">
<link rel="icon" type="image/x-icon" href="admin/images/docico.jpg">
<script type="text/javascript" src="js/jquery-3.2.1.js"></script>
<script type="text/javascript">
		//上传密码，对比是否相同
		function docheck(obj){
			var newpass=obj.value;
			//alert(newpass);
			var i=document.getElementById("tps");
			if(newpass == ""){
				i.style.color="red";
				i.innerHTML="密码不允许为空！";
			}else{
				i.innerHTML="";
			}
		}
		function docheck2(obj){
			var newpass2=obj.value;
			//alert(newpass2);
			var newpass=document.getElementById("newpass").value;
			//alert(newpass);
			var button=document.getElementById("submitbutton");
			var i2=document.getElementById("tps2");
			if(newpass2 == ""){
				i2.innerHTML="密码不允许为空！";
				i2.style.color="red";
			}else{
				if(newpass == newpass2){
					button.style.background= "#00aef0";
					i2.innerHTML = ""; 
					//document.getelementbyid('forgetform').submit();
					//button.onclick="doclick()";
				}else{
					i2.style.color="red";
					i2.innerHTML = "密码不一致！"; 
				}
			}	
		}
	</script>

</head>
<body>

	<!-- head YDC begin -->
	<header class="ydc-header">
		<div class="ydc-entered">
			<div class="ydc-header-content ydc-flex">
				<div class="ydc-column">
					<a href="doc-index.html" class="ydc-column-ydc-logo"> <img
						src="admin/images/icon/ydc-logo.png" title="" about="" alt="">
					</a>
				</div>
				<div class="ydc-column">
					<div class="ydc-column-user">
						<div class="ydc-user-photo">
							<!--<a href="javascript:;">-->
							<!--<img src="admin/images/icon/photo.png" title="" about="" alt="">-->
							<!--</a>-->
						</div>
						<div class="ydc-user-info">
							<div class="ydc-user-info-name">
								<!--<a href="javascript:;">一点车</a>-->
							</div>
							<div class="ydc-user-info-func ydc-flex">
								<!--<span class="ydc-tag">新手期</span>-->
								<!--<span class="ydc-mal"><i class="ydc-icon ydc-icon-mail fl"></i><em>12</em></span>-->
								<a href="doclogin.jsp">退出</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</header>
	<!-- head YDC end -->

	<!-- content YDC begin -->
	<section>
		<div class="ydc-content-slide ydc-body">
			<div class="ydc-page-content">
				<div class="ydc-reg-title">
					<ul class="clearfix">
						<li class="ydc-reg-step active"><a href="doc-go-forget.html">
								<em></em>
								<h3>手机号账号验证</h3>
						</a></li>
						<li class="ydc-reg-step active"><em></em>
							<h3>设置新密码</h3></li>
						<li class="ydc-reg-step"><em></em>
							<h3>完成密码修改</h3></li>
					</ul>
				</div>
				<div class="ydc-reg-form clearfix">
					<form action="../dodocforget" method="post" name="passform">
						<div class="ydc-reg-form-group clearfix">
							<label>新密码:</label>
							<div class="ydc-reg-form-input">
								<input type="text" id="newpass" name="newpass"
									class="ydc-form-control" onblur="docheck(this)"
									autocomplete="off" placeholder=""> <i id="tps"></i>
							</div>
						</div>
						<div class="ydc-reg-form-group clearfix">
							<label>确认密码</label>
							<div class="ydc-reg-form-input">
								<input type="password" id="newpass2" name="newpass2"
									class="ydc-form-control" onblur="docheck2(this)"
									autocomplete="off" placeholder=""> <i id="tps2"></i>
							</div>
						</div>
				</div>
				<div class="ydc-reg-form-group">
					<div class="ydc-reg-form-button">
						<a class="btn" type="button" id="submitbutton"
							href="javascript:void(0);"
							onclick="javascript:document.forms['passform'].submit();"
							style="background: gray; margin-left: 40px;">提交</a>
					</div>
				</div>
			</div>
			</form>
		</div>
		</div>
		</div>
		<div class="ydc-footer">
			<div>
				<p>©2018 一点车版权所有About 公司简介 联系方法 招聘信息 客户服务 隐私政策 广告服务 网站地图 意见反馈
					不良信息举报</p>
			</div>
		</div>
	</section>
	<!-- content YDC end -->

	<script type="text/javascript" src="admin/js/jquery.min.js"></script>
	<script type="text/javascript" src="admin/js/choice.min.js"></script>

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

        $(document).ready(function() {

            //参数{input类名，选择类型(单选or多选)}

            $(".rdolist").labelauty("rdolist", "rdo");

            $(".chklist").labelauty("chklist", "check");

        });
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