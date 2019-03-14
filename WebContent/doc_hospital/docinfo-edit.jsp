<%@page import="com.hospital.vo.Doctor"%>
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
<link type="text/css" rel="stylesheet" href="admin/css/emailAutoComple.css">
<link type="text/css" rel="stylesheet" href="admin/css/icon.css">
<link type="text/css" rel="stylesheet" href="admin/css/home.css">
<script type="text/javascript" src="js/jquery-3.2.1.js"></script>
<script type="text/javascript" src="js/emailAutoComple.js"></script>
<link rel="icon" type="image/x-icon" href="admin/images/docico.jpg">
</head>
<body>

	<!-- head YDC begin -->
	<header class="ydc-header">
		<div class="ydc-entered">
			<div class="ydc-header-content ydc-flex">
				<div class="ydc-column">
					<a href="../docindex" class="ydc-column-ydc-logo"> <img
						src="admin/images/icon/ydc-logo.png" title="" about="" alt="">
					</a>
				</div>
				<div class="ydc-column">
					<div class="ydc-column-user">
						<div class="ydc-user-photo">
						</div>
						<%
							Doctor d=(Doctor)session.getAttribute("doctor");
						%>
						<div class="ydc-user-info">
							<div class="ydc-user-info-name">
								<a href="javascript:;"><c:out value="${doctor.docname }"></c:out></a>
							</div>
							<div class="ydc-user-info-func ydc-flex">
								<span class="ydc-tag">在线</span> <a href="../dodocexit">注销</a>
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
			<div class="ydc-flex">
				<!-- left begin -->
				<div class="ydc-column ydc-column-2">
					<div class="ydc-menu">
						<ul>
							<li class="ydc-menu-item"><a href="../docindex"
								class="active"> <i class="ydc-icon ydc-icon-home fl"></i>首页
							</a></li>

							<li class="ydc-menu-item"><span class="ydc-menu-sub-title"><em
									class="imessage"></em>个人信息管理</span>
								<ul>
									<li style="background: #00aef0"><a href="docinfo.jsp"><font color="#fff">管理个人信息</font></a></li>
								</ul></li>
							<li class="ydc-menu-item"><span class="ydc-menu-sub-title">
									<em class="register"></em>挂号列表管理
							</span>
								<ul>
									<li><a href="../doshowdocregister">查看挂号列表</a></li>
								</ul></li>
							<li class="ydc-menu-item"><span class="ydc-menu-sub-title">
									<em class="me"></em>病历管理
							</span>
								<ul>
									<li><a href="../doshowdocme">查看接诊病历</a></li>
								</ul></li>
							<li class="ydc-menu-item"><span class="ydc-menu-sub-title"><em
									class="messages"></em>消息管理</span>
								<ul>
									<li><a href="../doshowdocmail">联系管理员</a></li>
								</ul></li>
						</ul>
					</div>
				</div>
				<!-- left end -->
				<!-- right begin -->
				<div class="ydc-column ydc-column-8">
					<div class="ydc-release-content">
						<div class="ydc-tabPanel ydc-tabPanel-release">
							<div class="ydc-release-tab-head">
								<ul>
									<li class="hit">帐号设置</li>
								</ul>
								<% 
									
								%>
							</div>
							<div class="ydc-panes">
								<form action="../dodoceditinfo" id="editform" method="post">
									<div class="ydc-reg-form-class ydc-reg-form-reg" style="margin-top: 40px;">
										<div class="ydc-reg-form-group clearfix">
											<label>医生住址</label>
											<div class="ydc-reg-form-input">
												<input type="text" id="address" value="<c:out value="${doctor.docaddress }"></c:out>"
													 name="docaddress" class="ydc-form-control"
													autocomplete="off" placeholder="" style="width: 200px;" onblur="a()">
												<div class="ydc-reg-form-text">
													<p>
														<label id="tips1"></label>
													</p>
												</div>
											</div>
										</div>
										<div class="ydc-reg-form-group clearfix">
											<label>医生邮箱</label>
											<div class="ydc-reg-form-input">
												<input type="text" value="<c:out value="${doctor.docmail }"></c:out>"
													id="loginEmail"  name="docmail" class="ydc-form-control" onblur="ischeckemail()"
													autocomplete="on"  style="width: 200px;">
												<div class="ydc-reg-form-text" style="margin-left:-100px;"><label id="tips"></label>
													<p>
														<font color="white">请输入2至14字的帐号简介</font>
													</p>
												</div>
											</div>
										</div>
									</div>
									<div class="ydc-btn" style="margin-left:100px;">
										<button class="btn" id="submitbutton" onclick="submit()">提交</button>
										<a href="docinfo.jsp"><button class="btn btn-default">返回</button></a>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
				<!-- right end -->
			</div>
		</div>

	</section>
	<!-- content YDC end -->
	
	<script type="text/javascript">
		function submit(){
			document.getElementById("editform").submit();
		}
		function a(){
			var tips1=document.getElementById("tips1");
			var address=document.getElementById("address").value;
			//alert();
			if(address != ""){
				tips1.innerHTMl="<font color='red'>住址不能为空！</font>";
			}else{
				tips1.innerHTMl="<font color='green'>可用的住址！</font>";
			}
		}
	
		function ischeckemail() {
			var button=document.getElementById("submitbutton");
			var tips=document.getElementById("tips");
			var email = document.getElementById("loginEmail").value;
			if(email != "") {
				var reg = /^\w+((-\w+)|(\.\w+))*\@[A-Za-z0-9]+((\.|-)[A-Za-z0-9]+)*\.[A-Za-z0-9]+$/;
				isok = reg.test(email);
				if(!isok) {//如果不符合格式
					button.style.background="gray";
					tips.innerHTML="<font color='red'>邮箱格式错误！</font>";
					return false;
				}else{//如果邮箱可用
					button.style.background="#00aef0";
					tips.innerHTML="<font color='green'>邮箱可用！</font>";
				} 
			} else {//如果邮箱为空
				button.style.background="gray";
				tips.innerHTML="<font color='red'>邮箱不能为空！</font>";
				return false;
			}
		}
	</script>
	
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
	        });
	        $.AutoComplete("#loginEmail");
	        
	    })
	</script>

</body>
</html>