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
		var bool=0;//未验证手机号，bool为0
		function checkphone(obj){
			var button = document.getElementById("getyanz");
			var tps = document.getElementById("phonetps");
			//alert(obj.value);
			$.post("../docyanzheng",{'phone':obj.value,'bool':bool},function(data){
				if(data == 1){
					//alert("不存在！！！");
					tps.innerHTML = "未注册的手机号！";
					tps.style.color="red";
				}else{
					//alert("存在");
					button.style.background="#00aef0";
					tps.innerHTML = "注册了的手机号！";
					tps.style.color="green";
					bool=1;//检验手机号通过了，bool为1
				}
			},"json");
		}	
	
		var code = getIdCode(6);

		
		function settime(obj) { 
		    if (countdown == 0) { 
		        obj.removeAttribute("disabled");    
		        obj.value="获取验证码"; 
		        countdown = 10; 
		        return;
		    } else { 
		        obj.setAttribute("disabled", true); 
		        obj.value="重新发送(" + countdown + ")"; 
		        countdown--; 
		    } 
		
		}
		
		var countdown=60;//设置发送验证码间隔时间
		function getyzma(obj){
			if(bool == 1){//检验过手机号了，可以发验证码了
				var number = document.getElementById("patphonenumber").value;
				//把bool为1的值传到后台
				$.post("../docyanzheng",{'phone':obj.value,'bool':bool},function(data){
					
				},"json");
				//alert(number);
				$.post("../docyanzheng",{'phone':number,'code':code,'bool':bool},function(data){
					
				},"json");
				bool=0;//发送验证码后bool归零，避免重复发送
			}
			 if (countdown == 0) { 
				 	bool=1;//60秒后可再次发送，让bool再等一1
			        obj.removeAttribute("disabled");    
			        obj.value="获取验证码";
			        countdown = 60; 
			        return;
			    } else {
			    	obj.setAttribute("disabled", true); 
			        obj.value="重新发送(" + countdown + ")";
			        countdown--;
			    }
			//设置自动计时器
			setTimeout(function() { 
				getyzma(obj) }
			    ,1000) 
		};
	 function getIdCode(length) {//获得验证码
	      if(length == undefined) {
	          length = 4;
	      }
	      var pow = Math.pow(10, length);
	      var code = Math.floor(Math.random() * pow + pow / 10).toString();
	      return code.substr(0, length);
	  };
	  function chekyzma(){//比较验证码和输入的验证码
		 var yzma = document.getElementById("msgyz").value;
		 var td = document.getElementById("yz");
		 var i = document.getElementById("tsp");
		 var button = document.getElementById("submitbutton");
		 if(yzma!=code){
			 i.innerHTML = "验证码错误"; 
			 i.style.color="red";
			 return;
		 }else{
			 button.style.background= "#00aef0";
			 button.href="go-forget2.jsp";
			 i.innerHTML = "验证码正确！"; 
			 i.style.color="green";
		 }
	 };
	</script>

<style type="text/css">
.ydc-reg-yzm input {
	background: #00aef0;
	border: none;
	font-size: 13px;
	padding: 11px 16px;
	color: #fff;
	border-radius: 3px;
}
</style>

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
			<div class="ydc-page-content" style="overflow: hidden">
				<div class="ydc-reg-title">
					<ul class="clearfix">
						<li class="ydc-reg-step active"><em></em>
							<h3>邮箱账号验证</h3></li>
						<li class="ydc-reg-step"><em></em>
							<h3>设置新密码</h3></li>
						<li class="ydc-reg-step"><em></em>
							<h3>完成密码修改</h3></li>
					</ul>
				</div>
				<div class="ydc-reg-form clearfix">
					<form action="dodocforget" method="post">
						<div class="ydc-reg-form-group clearfix">
							<label>联系手机:</label>
							<div class="ydc-reg-form-input">
								<input name="patphonenumber" id="patphonenumber"
									class="ydc-form-control" onblur="checkphone(this)" type="text"
									class="text_T" />
								<div class="ydc-reg-form-text">
									<i id="phonetps" name="phonetps"></i>
								</div>
							</div>
							<div class="ydc-reg-yzm">
								<input name="getyanz" id="getyanz" type="button" value="获取验证码"
									onclick="getyzma(this)" ; style="background: gray;">
							</div>

						</div>
						<div class="ydc-reg-form-group clearfix">
							<label>验证码:</label>
							<div class="ydc-reg-form-input">
								<input type="text" id="msgyz" name="msgyz"
									class="ydc-form-control" onblur="chekyzma()" autocomplete="off"
									placeholder="账号通行证/邮箱"> <i class="hahaha" id="tsp"></i>
							</div>
						</div>
						<div class="ydc-reg-form-group">
							<div class="ydc-reg-form-button">
								<a class="btn" type="button" id="submitbutton" href=""
									style="background: gray; margin-left: 40px;">提交</a>
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