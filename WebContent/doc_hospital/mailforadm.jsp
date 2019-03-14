<%@page import="com.hospital.vo.Mail"%>
<%@page import="java.util.List"%>
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
<link rel="icon" type="image/x-icon" href="doc_hospital/admin/images/docico.jpg">

<script type="text/javascript" src="pat_hospital/js/jquery-3.2.1.js"></script>
<script type="text/javascript">
		
	function nowlength2() {
		var messages=document.getElementById("title");
		
		var length=document.getElementById("title").value.length;
		var messagescount=document.getElementById("messageCount2");
		if(length<=25){
			messagescount.innerHTML=length;
		}else{
			//alert(messages.value.substring(0,5));
			messages.innerHTML=messages.value.substring(0,25);
			messagescount.innerHTML=length;
			messages.innerHTML="";
			alert("超过字数限制！");
		}
	
	}

	function nowlength() {
		var messages=document.getElementById("textarea2");
		
		var length=document.getElementById("textarea2").value.length;
		var messagescount=document.getElementById("messageCount");
		if(length<=250){
			messagescount.innerHTML=length;
		}else{
			//alert(messages.value.substring(0,5));
			messages.innerHTML=messages.value.substring(0,250);
			messagescount.innerHTML=length;
			messages.innerHTML="";
			alert("超过字数限制！");
		}

	}
	var tip=0;//执行参数，0为不执行，1为执行保存，2为执行发送
	function messagesubmit(){
		var messages=document.getElementById("textarea2").value;
		var title=document.getElementById("title").value;
		if(title == "请输入标题"){//判断是否有标题
			alert("请输入标题！");
		}else{
			
			tip=2;
			$.get("dodocmailforadm",{'messages':messages,'tip':tip,'title':title},function(data){
				 
			},'json');
			tip=0;//tip归零，不再执行保存操作
			$.get("dodocmailforadm",{'tip':tip},function(data){
				 
			},'json');
			window.location.href="doshowdocmail"; 
			//alert("消息已发送！");
			//$("#send").fadeOut("slow");
		}
		
	}
	
	function savetempmessages(){
		var messages=document.getElementById("textarea2").value;
		var title=document.getElementById("title").value;
		//messages=messages.replace(/\s+/g, "");//去空格
		var tip=1;
		$.get("dodocmailforadm",{'messages':messages,'tip':tip,'title':title},function(data){
			 
		},'json');
		tip=0;//tip归零，不再执行保存操作
		$.get("dodocmailforadm",{'tip':tip},function(data){
			 
		},'json');
		alert("草稿已保存！");
	}
	
	//以下为分页展示部分
	function rejump(){//获取下拉框的值
		var page=document.getElementById("page").value;
		return page;
	}
	
	function jump(){
		var page=rejump();
		var a=document.getElementById("jump");
		a.href="doshowdocmail?pagenow="+page;
	}	
	
	var layer=document.createElement("div");
	layer.id="layer";
	function func(){
	    var style={
	        background:"#f00",
	        position:"absolute",
	        zIndex:10,
	        width:"200px",
	        height:"200px",
	        left:"200px",
	        top:"200px"
	    }
	    for(var i in style)
	        layer.style[i]=style[i];    
	    if(document.getElementById("layer")==null)
	    {
	        document.body.appendChild(layer);
	        setTimeout("document.body.removeChild(layer)",2000) 
	    }
	}
	
	window.onload=function loadmessages(){
		//alert();
		//$.get("../doshowdocmail",{'pagenow':pagenow},function(data){
		//
		//
		//},'json');
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
							Doctor d=(Doctor)session.getAttribute("doctor");
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
							<li class="ydc-menu-item" ><span class="ydc-menu-sub-title"><em
									class="messages"></em>消息管理</span>
								<ul>
									<li><a href="doshowdocmail" style="background: #00aef0"><font color="white">联系管理员</font></a></li>
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
                                        <li class="hit">历史留言</li>
                                        <li>发送信息</li>
                                    </ul>
                                </div>
                                <div class="ydc-panes">
                                    <div class="ydc-pane" style="display:block;">
                                        <ol class="ydc-pane-list" id="mailol">
	                                        <%
	                                        	int pagenow = (int) request.getAttribute("pagenow");
												//获取查询到的消息集合
												List<Mail> mail=(List<Mail>)request.getAttribute("mail");
												//out.print(mail.size());
												for(int i=0;i<mail.size();i++){
													Mail m=new Mail();
													m=mail.get(i);
											%>
													<li>
														<a href="dodocreadmail?mesid=<%=m.getMesid() %>&pagenow=<%=pagenow %>" target="_blank">
															<%=m.getTitle() %>
														</a>
														<span><%=m.getMesdate() %></span>
													</li>
											<% 
												}
											%>
										</ol>
										
                                    <div class="ydc-pagination" style="border: none">
										<ol style="border: none">
										<%
											if (pagenow != 1) {
										%>
										<li>
											<a href="doshowdocmail?pagenow=1" style="color: white;"  class="ydc-previous-item-btn-medium cur">首页</a>
										</li>
										<li class="ydc-previous-item">
											<a href="doshowdocmail?pagenow=<%=pagenow - 1%>" class="ydc-previous-item-btn-medium">上一页</a>
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
											<a href="doshowdocmail?pagenow=<%=pagenow + 1 %>" class="ydc-previous-item-btn-medium">下一页</a>
										</li>
										<li>
											<a href="doshowdocmail?pagenow=<%=total %>" style="color: white;"  class="ydc-previous-item-btn-medium cur">尾页</a>
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
                                    	<div class="ydc-release-form-group ">
                                            <div class="ydc-warning-default">
                                                <p>给管理员留言</p>
                                            </div>
                                            
                                        </div>
                                         <div class="ydc-release-form-group-input clearfix">
                                         		<%
											   		String temptitle=(String)session.getAttribute("title");
													if(temptitle != null){
												%>
                                                <input id="title" style="width: 100%;height:100%" type="text" class="ydc-form-control" value="<%=temptitle %>" oninput="nowlength2()">
                                                <%
													}else{
											    %>
											    <input id="title" style="width: 100%;height:100%" type="text" class="ydc-form-control" value="请输入标题" oninput="nowlength2()">
											    <%
											    	}
											    %> 
											    
                                                <div class="ydc-form-group-jl">
                                                	<span id="messageCount2">
	                                                <% 
															if(temptitle != null){
																out.println(temptitle.length());	
															}else{
																out.println("0");
															}
													%>
                                                    </span>/25
                                                </div>
                                         </div>
                                         <br />
                                        <form action="../dodocmailforadm" id="messagesform" method="post">
                                        <div class="ydc-release-form-group-input">
                                            <textarea name="area2" id="textarea2" class="ydc-form-control" clos="100" style="width: 100%;height:100%;overflow:auto; " oninput="nowlength()"><%
													String tempmessage=(String)session.getAttribute("messages");
                                            		if(tempmessage != null){
                                            			out.println(tempmessage);
                                            		}
												%></textarea>
											<div class="ydc-form-group-jl" id="number">
                                                    <span id="messageCount">
													<% 
														if(tempmessage != null){
															out.println(tempmessage.length());	
														}else{
															out.println("0");
														}
													%>
													</span>
                                                    /250
                                            </div>
                                        </div>
                                        </form>
                                        <div class="ydc-form-city">
                                                <div class="ydc-btn">
                                                    <button id="send" class="btn" onclick="messagesubmit()">发送</button>
                                                    <button class="btn btn-default" onclick="savetempmessages()">保存草稿</button>
                                                </div>
                                        </div>
                                        
                                    </div>
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