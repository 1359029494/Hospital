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
<link type="text/css" rel="stylesheet" href="css/core.css">
<link type="text/css" rel="stylesheet" href="css/icon.css">
<link type="text/css" rel="stylesheet" href="css/home.css">


</head>
<body>

	<!-- head YDC begin -->
	<header class="ydc-header">
		<div class="ydc-entered">
			<div class="ydc-header-content ydc-flex">
				<div class="ydc-column">
					<a href="docindex.jsp" class="ydc-column-ydc-logo"> <img
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
								<form action="../dodoceditinfo" method="post">
									<div class="ydc-reg-form-class ydc-reg-form-reg" style="margin-top: 40px;">
										<div class="ydc-reg-form-group clearfix">
											<label>姓名</label>
											<div class="ydc-reg-form-input">
												<input type="text" value="<c:out value="${doctor.docaddress }"></c:out>"
													id="loginEmail" name="docaddress" class="ydc-form-control"
													autocomplete="off" placeholder="" style="width: 200px;">
											</div>
										</div>
										<div class="ydc-reg-form-group clearfix">
											<label>用户邮箱</label>
											<div class="ydc-reg-form-input">
												<input type="text" value="<c:out value="${doctor.docmail }"></c:out>"
													id="loginEmail" name="docmail" class="ydc-form-control"
													autocomplete="off"  style="width: 200px;">
											</div>
										</div>
										<div class="ydc-reg-form-group clearfix">
											<label>用户邮箱</label>
											<div class="ydc-reg-form-input">
												<input type="text" value="<c:out value="${doctor.docmail }"></c:out>"
													id="loginEmail" name="docmail" class="ydc-form-control"
													autocomplete="off"  style="width: 200px;">
											</div>
										</div>
										<div class="ydc-reg-form-group clearfix">
											<label>用户邮箱</label>
											<div class="ydc-reg-form-input">
												<input type="text" value="<c:out value="${doctor.docmail }"></c:out>"
													id="loginEmail" name="docmail" class="ydc-form-control"
													autocomplete="off"  style="width: 200px;">
											</div>
										</div>
									</div>
									<div class="ydc-reg-form-group" style="margin-right: 30px;">
										<div class="ydc-reg-form-button">
											<input type="submit" value="提交" class="ydc-body-submit" style="margin-left: 20px;">
										</div>
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