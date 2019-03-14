<%@page import="com.hospital.dao.RegisterDAO"%>
<%@page import="com.hospital.vo.Register"%>
<%@page import="com.hospital.dao.PatientDAO"%>
<%@page import="com.hospital.vo.Patient"%>
<%@page import="com.hospital.vo.MedicalRecord"%>
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
<meta name="keywords"
	content="一点车 -  让您多懂一点车,一点车，让您多懂一点车的常识，在这里，您会看到汽车相关的知识，汽车日常保养，汽车多用小知识，汽车简单维修以及清洗保养等等。">
<meta name="description"
	content="一点车 -  让您多懂一点车,一点车，让您多懂一点车的常识，在这里，您会看到汽车相关的知识，汽车日常保养，汽车多用小知识，汽车简单维修以及清洗保养等等。。">
<meta name="author" content="AUI, a-ui.com">
<meta name="baidu-site-verification" content="ZVPGgtpUfW" />
<title>工大校医院管理系统</title>
<link rel="icon" type="image/x-icon" href="favicon.ico">
<link href="iTunesArtwork@2x.png" sizes="114x114"
	rel="apple-touch-icon-precomposed">
<link type="text/css" rel="stylesheet"
	href="doc_hospital/admin/css/core.css">
<link type="text/css" rel="stylesheet"
	href="doc_hospital/admin/css/icon.css">
<link type="text/css" rel="stylesheet"
	href="doc_hospital/admin/css/home.css">
<link rel="icon" type="image/x-icon" href="doc_hospital/admin/images/docico.jpg">
<script type="text/javascript" src="pat_hospital/js/jquery-3.2.1.js"></script>
<script type="text/javascript">
		
		function rejump(){
			var page=document.getElementById("page").value;
			return page;
		}
		
		function jump(){
			var page=rejump();
			var a=document.getElementById("jump");
			a.href="doshowdocre?pagenow="+page;
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
						src="doc_hospital/admin/images/icon/ydc-logo.png" title=""
						about="" alt="">
					</a>
				</div>
				<div class="ydc-column">
					<div class="ydc-column-user">
						<div class="ydc-user-photo">
						</div>
						<%
							HttpSession session2=request.getSession();
							Doctor d=(Doctor)session2.getAttribute("doctor");
						%>
						<div class="ydc-user-info">
							<div class="ydc-user-info-name">
								<a href="javascript:;"><%=d.getDocname() %></a>
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
									<li style="background: #00aef0"><a href="doshowdocregister"><font color="#fff">查看挂号列表</font></a></li>
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
					<div class="ydc-release-content">
						<div class="ydc-tabPanel ydc-tabPanel-release">
							<div class="ydc-release-tab-head">
								<ul>
									<li class="hit">挂号列表</li>
								</ul>
							</div>
							<div class="ydc-panes">
								<div class="ydc-panes-account">
									<table>
										<thead>
											<tr>
												<th>患者挂号id</th>
												<th>患者姓名</th>
												<th>患者年龄</th>
												<th>接诊</th>
											</tr>
										</thead>
										<%
											//获取查询到的挂号信息集合
											List<Register> reglist=(List<Register>)request.getAttribute("reglist");
											Register r=new Register();
											RegisterDAO regdao=new RegisterDAO();
											Patient p=new Patient();
											PatientDAO patdao=new PatientDAO();
											//out.print(reglist.size());
											for(int i=0;i<reglist.size();i++){
												Register reg=new Register();
												reg=reglist.get(i);
										%>
										<tr>
											<td><%=reg.getRegid() %></td>
											<td><%=patdao.findById(reg.getPatid()).getPatname() %></td>
											<td><%=reg.getRepatage() %></td>
											<td><a href="doc_hospital/medicalrecord.jsp?patid=<%=reg.getPatid()%>&docid=<%=d.getDocid()%>&regid=<%=reg.getRegid()%>">接诊</a></td>
										</tr>
										<%
											}
										%>
									</table>



								</div>
								<div class="ydc-pagination" style="border: none">
									<ol style="border: none">
										<%
											int pagenow = (int) request.getAttribute("pagenow");
											//out.print(pagenow)
											if (pagenow != 1) {
										%>
										<li>
											<a href="doshowdocregister?pagenow=1" style="color: white;"  class="ydc-previous-item-btn-medium cur">首页</a>
										</li>
										<li class="ydc-previous-item">
											<a href="doshowdocregister?pagenow=<%=pagenow - 1%>" class="ydc-previous-item-btn-medium">上一页</a>
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
											<a href="doshowdocregister?pagenow=<%=pagenow + 1 %>" class="ydc-previous-item-btn-medium">下一页</a>
										</li>
										<li>
											<a href="doshowdocregister?pagenow=<%=total %>" style="color: white;"  class="ydc-previous-item-btn-medium cur">尾页</a>
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
						</div>
					</div>
				</div>
			</div>
			<!-- right end -->
		</div>
		</div>

	</section>
	<!-- content YDC end -->

	
</body>
</html>