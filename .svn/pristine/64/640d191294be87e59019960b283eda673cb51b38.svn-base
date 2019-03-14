<%@page import="com.hospital.vo.Mail"%>
<%@page import="java.util.List"%>
<%@page import="com.hospital.vo.Register"%>
<%@page import="com.hospital.dao.RegisterDAO"%>
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
<link type="text/css" rel="stylesheet" href="doc_hospital/admin/css/core.css">
<link type="text/css" rel="stylesheet" href="doc_hospital/admin/css/icon.css">
<link type="text/css" rel="stylesheet" href="doc_hospital/admin/css/home.css">
<link rel="icon" type="image/x-icon" href="admin/images/docicon.jpg">
<% 
	response.setHeader("Cache-Control","no-store"); 
	response.setHeader("Pragrma","no-cache"); 
	response.setDateHeader("Expires",0); 
%>

<script type="text/javascript" src="js/jquery-3.2.1.js"></script>
<script type="text/javascript">
	//以下为分页展示部分
	function rejump(){//获取下拉框的值
		var page=document.getElementById("page").value;
		return page;
	}
	
	function jump(){
		var page=rejump();
		var a=document.getElementById("jump");
		a.href="docindex?pagenow="+page;
	}	
</script>

</head>
<body>

	<!-- head YDC begin -->
	<header class="ydc-header">
		<div class="ydc-entered">
			<div class="ydc-header-content ydc-flex">
				<div class="ydc-column">
					<a href="docindex" class="ydc-column-ydc-logo"> <img
						src="doc_hospital/admin/images/icon/ydc-logo.png" title="" about="" alt="">
					</a>
				</div>
				<div class="ydc-column">
					<div class="ydc-column-user">
						<div class="ydc-user-photo">
						</div>
						<%
							HttpSession session2 = request.getSession();
							Doctor d = (Doctor) session2.getAttribute("doctor");
						%>
						<div class="ydc-user-info">
							<div class="ydc-user-info-name">
								<a href="javascript:;"><c:out value="${doctor.docname }"></c:out></a>
							</div>
							<div class="ydc-user-info-func ydc-flex">
								<span class="ydc-tag">在线</span> <a href="dodocexit">注销</a>
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
							<li class="ydc-menu-item"><a href="docindex"
								class="active"> <i class="ydc-icon ydc-icon-home fl"></i>首页
							</a></li>

							<li class="ydc-menu-item"><span class="ydc-menu-sub-title"><em
									class="imessage"></em>个人信息管理</span>
								<ul>
									<li><a href="doc_hospital/docinfo.jsp">管理个人信息</a></li>
								</ul></li>
							<li class="ydc-menu-item"><span class="ydc-menu-sub-title">
									<em class="register"></em>挂号列表管理
							</span>
								<ul>
									<li><a href="doshowdocregister">查看挂号列表</a></li>
								</ul></li>
							<li class="ydc-menu-item"><span class="ydc-menu-sub-title">
									<em class="me"></em>病历管理
							</span>
								<ul>
									<li><a href="doshowdocme">查看接诊病历</a></li>
								</ul></li>
							<li class="ydc-menu-item"><span class="ydc-menu-sub-title"><em
									class="messages"></em>消息管理</span>
								<ul>
									<li><a href="doshowdocmail">联系管理员</a></li>
								</ul></li>
						</ul>
					</div>
				</div>
				<!-- left end -->
				<!-- right begin -->
				<div class="ydc-column ydc-column-8">
					<div class="ydc-entered-box">
						<div class="ydc-content-right">
							<div class="ydc-right-head">
								<%
									String docname = d.getDocname();
									RegisterDAO dao = new RegisterDAO();
									int size = dao.getTotalByDoc(docname);
									Register r = new Register();
									if (size == 0) {

									} else {
										r = dao.findFirst(docname);
									}
								%>
								<div class="ydc-right-head-info">
									<dl>
										<a href="#">
											<dt>待接诊人数</dt>
											<dd><%=size%></dd>
										</a>
									</dl>
									<dl>
										<a href="#">
											<dt>下一接诊挂号序号</dt>
											<dd><%=r.getRegid()%></dd>
										</a>
									</dl>

								</div>
								<a id="dolink"
									href="doc_hospital/medicalrecord.jsp?patid=<%=r.getPatid()%>&docid=<%=d.getDocid()%>&regid=<%=r.getRegid()%>"
									onclick="docheck()">
									<button id="dobutton" class="btn ydc-ne-carousel">
										<i class="ydc-icon-shu"></i> <span>接诊</span>
									</button>
								</a>
							</div>
							<!-- gongGao begin -->
							<div class="ydc-loading-box">
								<div class="ydc-tabPanel">
									<div>
										<ul>
											<li class="hit">公告栏</li>
										</ul>

									</div>
									<div class="ydc-panes">
										<div class="ydc-pane" style="display: block;">
											 <ol class="ydc-pane-list" id="mailol">
	                                        <%
	                                        	int pagenow = (int) request.getAttribute("pagenow");
												//获取查询到的消息集合
												List<Mail> mail=(List<Mail>)request.getAttribute("admmail");
	                                        	//out.print(mail.size());
	                                        	for(int i=0;i<mail.size();i++){
													Mail m=new Mail();
													m=mail.get(i);
											%>
													<li>
														<a href="dodocreadmail?mesid=<%=m.getMesid() %>&pagenow=<%=pagenow %>" target="_blank">
															<%=m.getTitle() %>
														</a>
														<span><%=m.getMesdate() %>
														<%
															if(m.getMesstate() == 0){
														%>
															</span><i style="color: #ff0000;font-style: oblique;">new</i>
														<%
															}
														%>
													</li>
											<% 
												}
											%>
										</ol>
											<div class="ydc-pagination">
												<ol style="border: none">
										<%
											//out.print(pagenow)
											if (pagenow != 1) {
										%>
										<li>
											<a href="docindex?pagenow=1" style="color: white;"  class="ydc-previous-item-btn-medium cur">首页</a>
										</li>
										<li class="ydc-previous-item">
											<a href="docindex?pagenow=<%=pagenow - 1%>" class="ydc-previous-item-btn-medium">上一页</a>
										</li>
										<%
											}
										%>
										<%
											int total = (int) request.getAttribute("total");
											//out.println(total);
											if (pagenow == total) {

											} else {
										%>
										<li class="ydc-previous-item">
											<a href="docindex?pagenow=<%=pagenow + 1 %>" class="ydc-previous-item-btn-medium">下一页</a>
										</li>
										<li>
											<a href="docindex?pagenow=<%=total %>" style="color: white;"  class="ydc-previous-item-btn-medium cur">尾页</a>
										</li>
										<%
											}
										%>
										<li class="ydc-item-quick">第
											<select id="page" onchange="rejump()" class="ydc-item-quick-kun">
											<%
												for(int i=1;i<=total;i++){
													if(i == pagenow){
											%>
												<option value="<%=pagenow %>" selected="selected"><%=pagenow %></option>
											<%
													}else{
											%>
												<option value="<%=i %>"><%=i %></option>
											<%
													}
												}
											%>
											</select>页
											<a id="jump" href="" onclick="jump()"  style="margin-left: 5px;" class="ydc-previous-item-btn-medium">
												跳转
											</a>
										</li>
									</ol>	
											</div>
										</div>
										<div class="ydc-pane">
											<ol class="ydc-pane-list">
												
												<li><a href="#">4款车型/1.5L动力 骏派CX65旅行车明日上市</a> <span>2017-04-17
														10:00:00</span></li>
											</ol>
											<div class="ydc-pagination">
												<ol>
													<li class="ydc-previous-item">
														<button class="ydc-previous-item-btn-medium ydc-disabled">
															<span>上一页</span>
														</button>
													</li>
													<li>
														<button class="ydc-previous-item-btn-medium cur">1</button>
													</li>
													</li>
													<li class="ydc-previous-item">
														<button class="ydc-previous-item-btn-medium">
															<span>下一页</span>
														</button>
													</li>
													<li class="ydc-item-quick">第
														<div class="ydc-item-quick-kun">
															<input type="number" aria-invalid="false" class="">
														</div>页
														<button style="margin-left: 5px;"
															class="ydc-previous-item-btn-medium">
															<span>跳转</span>
														</button>
													</li>
												</ol>
											</div>
										</div>
									</div>
								</div>
							</div>
							<!-- gongGao End -->
						</div>
					</div>
				</div>
				<!-- right end -->
			</div>
		</div>

		<div class="ydc-footer">
			<div>
				<p>©2018 周树人版权所有About 公司简介 联系方法 招聘信息 客户服务 隐私政策 广告服务 网站地图 意见反馈
					不良信息举报</p>
			</div>
		</div>
	</section>
	<!-- content YDC end -->

	<script type="text/javascript" src="js/jquery-3.2.1.js"></script>
	<script type="text/javascript">
		window.onload = function then() {
			var size =<%=size%>
		//alert();
			var button = document.getElementById("dobutton");
			var a = document.getElementById("dolink");
			if (size == 0) {
				button.style.background = "gray"
				a.href = "#";
			}
		}

		function docheck() {
			var size = <%=size%>
		//alert(size);
			var a = document.getElementById("dolink");
			if (size == 0) {
				alert("当前没有待接诊的患者！");
			}
		}
	</script>

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
			if (slideIndex > slides.length) {
				slideIndex = 1
			}
			slides[slideIndex - 1].style.display = "block";
			setTimeout(showSlides, 3000); // 滚动时间
		}
	</script>

	<script type="text/javascript">
		$(function() {
			$('.ydc-tabPanel ul li').click(
					function() {
						$(this).addClass('hit').siblings().removeClass('hit');
						$('.ydc-panes>div:eq(' + $(this).index() + ')').show()
								.siblings().hide();
					})
		})
	</script>

</body>
</html>