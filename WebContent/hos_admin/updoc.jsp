<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.hospital.vo.Doctor" %>
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
<title>新增医生 —— 工大校医院</title>
<link rel="icon" type="image/x-icon" href="favicon.ico">
<link href="iTunesArtwork@2x.png" sizes="114x114"
	rel="apple-touch-icon-precomposed">
<link type="text/css" rel="stylesheet" href="admin/css/core.css">
<link type="text/css" rel="stylesheet" href="admin/css/icon.css">
<link type="text/css" rel="stylesheet" href="admin/css/home.css">
<link rel="stylesheet" type="text/css" href="admin/css/my.css" />
<link rel="stylesheet" type="text/css"
	href="admin/css/emailAutoComple.css" />
<script type="text/javascript" src="admin/js/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="admin/js/emailAutoComple.js"></script>
<script type="text/javascript" src="admin/js/China.js"></script>
</head>
<body>

	<!-- head YDC begin -->
	<header class="ydc-header">
		<div class="ydc-entered">
			<div class="ydc-header-content ydc-flex">
				<div class="ydc-column">
					<a href="/hospital/hos_admin/Adminindex" class="ydc-column-ydc-logo"> <img
						src="admin/images/icon/logo.png" title="" about="" alt="">
					</a>
				</div>
				<div class="ydc-column">
					<div class="ydc-column-user">
						<div class="ydc-user-photo">
							<a href="/hospital/hos_admin/Mine">
								<img src="<%=request.getContextPath() %>/hos_admin/admin/${sessionScope.admins.admphoto } " />
							</a>
						</div>
						<div class="ydc-user-info">
							<div class="ydc-user-info-name">
								<a href=/hospital/hos_admin/Mine>校医院admin——${sessionScope.admins.admname }</a>
							</div>
							<div class="ydc-user-info-func ydc-flex">
								<span class="ydc-tag">管理员</span>  <a
									href="admlogin.html">退出</a>
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
							<li class="ydc-menu-item"><a href="/hospital/hos_admin/Adminindex"><i class="ydc-icon ydc-icon-home fl"></i>首页</a></li>
								<li class="ydc-menu-item">
								<a href="remail.jsp"><i class="ydc-icon ydc-icon-find fl"></i>发布</a>
							</li>
							<li class="ydc-menu-item"><span class="ydc-menu-sub-title">
									<i class="ydc-icon ydc-icon-file fl"></i>管理
							</span>
								<ul>
									<li><a href="/hospital/hos_admin/Managedoc" class="active">医生管理</a>
									</li>
									<li><a href="/hospital/hos_admin/Managesub">科室管理</a></li>
									<li><a href="/hospital/hos_admin/Managemed">药品管理</a></li>
								</ul></li>
							<li class="ydc-menu-item"><span class="ydc-menu-sub-title">
									<i class="ydc-icon ydc-icon-record fl"></i>数据
							</span>
								<ul>
									<li><a href="/hospital/hos_admin/Adminorder">订单查看</a></li>
								</ul></li>
							<li class="ydc-menu-item"><span class="ydc-menu-sub-title">
									<i class="ydc-icon ydc-icon-set fl"></i>新增
							</span>
								<ul>
									<li><a href="addmed.jsp">新增药品</a></li>
									<li><a href="adddoc.jsp">新增医生</a></li>
									<li><a href="addadmin.jsp">新增管理员</a></li>
								</ul></li>
							<li class="ydc-menu-item"><span class="ydc-menu-sub-title">
									<i class="ydc-icon ydc-icon-customer fl"></i>个人信息
							</span>
								<ul>
									<li><a href="/hospital/hos_admin/Mine">查看个人信息</a></li>
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
									<li class="hit">修改医生信息</li>
								</ul>
							</div>
							<div class="ydc-panes">
								<div class="ydc-reg-form clearfix">
									<form action="/hospital/hos_admin/TUpdoc" method="post"
										enctype="multipart/form-data" onsubmit="return dosub()">
										<div class="ydc-reg-form-class ydc-reg-form-reg"
											style="margin-top: 30px;">
											<div class="ydc-reg-form-group clearfix">
												<label>医生编号:</label>
												<div class="ydc-reg-form-input">
													<input type="text" id="user10" readonly="readonly"
														name="docid" class="ydc-form-control" autocomplete="off"
														value="${d.docid }">
													<div class="ydc-reg-form-text">
														<p>医生编号不可修改</p>
													</div>
												</div>
											</div>
											<div class="ydc-reg-form-group clearfix">
												<label>联系手机:</label>
												<div class="ydc-reg-form-input">
													<input type="text" id="user4" name="docphonenumber"
														class="ydc-form-control" autocomplete="off"
														value="${d.docphonenumber }">
													<div class="ydc-reg-form-text">
														<p>请输入手机号并作为你的账号</p>
														<label id="c4"></label>
													</div>
												</div>
											</div>
											<div class="ydc-reg-form-group clearfix">
												<label>帐号头像:</label>
												<div class="ydc-reg-form-input">
													<img alt=""
														src="<%=request.getContextPath() %>/hos_admin/admin/${d.docphoto }"
														style="height: 140px"><br> <input type="file"
														id="file" name="docphoto" class="" autocomplete="off"
														placeholder="">
													<div class="ydc-reg-form-text">
														<p>选取至少160*160尺寸的图片。请勿上传二维码或其他推广性质图片作为图标。</p>
													</div>
												</div>
											</div>
											<div class="ydc-reg-form-group clearfix">
												<label>姓名:</label>
												<div class="ydc-reg-form-input">
													<input type="text" value="${d.docname }"
														name="docname" class="ydc-form-control" autocomplete="off"
														placeholder="">
												</div>
											</div>
											<div class="ydc-reg-form-group clearfix">
												<label>身份证号:</label>
												<div class="ydc-reg-form-input clearfix">
													<input type="text" value="${d.docidcard }" id="user2"
														name="docidcard" class="ydc-form-control"
														autocomplete="off" placeholder="">
														<label id="c2"></label>
													<div class="ydc-warning-default fl"
														style="height: auto; font-size: 12px;">
														
														<p>
															帐号信息填写需真实有效，如发现虚假以及非个人真<br />实信息导致帐号收益无法提取，责任由帐号个人承担
														</p>
													</div>
												</div>

											</div>
											<div class="ydc-reg-form-group clearfix">
												<label>年龄:</label>
												<div class="ydc-reg-form-input">
													<input type="text" value="${d.docage }" id="user1"
														name="docage" class="ydc-form-control" autocomplete="off"
														placeholder="">
												</div>
											</div>
											<div class="ydc-reg-form-group clearfix">
												<label>性别:</label>
												<div class="ydc-reg-form-input">
													<c:if test="${d.docsex == 1 }">
														<input type="radio" id="woman" name="docsex" value="0" />女
									<input type="radio" name="docsex" id="man" value="1" checked="checked" />男
								</c:if>
													<c:if test="${d.docsex != 1 }">
														<input type="radio" id="woman" name="docsex" value="0"
															checked="checked" />女
									<input type="radio" id="man" name="docsex" value="1" />男
								</c:if>
												</div>
											</div>
											<div class="ydc-reg-form-group clearfix">
												<label>所在科室:</label>
												<div class="ydc-reg-form-input">
													<select name="docdept" id="sub">
														<option value="${d.docdept }">${d.docdept }</option>
													</select>
												</div>

											</div>
											
											<div class="ydc-reg-form-group clearfix">
												<label>所在城市:</label>
												<div class="ydc-reg-form-input">
													<select name="docaddress1" id="ddlProvince"
														onchange="selectMoreCity(this)">
														<option></option>
													</select> <select name="docaddress2" id="ddlCity">
														<option></option>
													</select>
												</div>

											</div>
											<div class="ydc-reg-form-group clearfix">
												<label>邮箱:</label>
												<div class="ydc-reg-form-input">
													<input name="docmail" value="${d.docmail }" id="patmail"
														class="patmail ydc-form-control" type="text" />
														<input name="docpass" value="${d.docpass }"
														class="patmail ydc-form-control" type="hidden" />
												</div>
												<div class="ydc-reg-form-text">
													<p>请使用自己日常使用邮箱便于接受相关信息</p>
												</div>
														<label id="c3"></label>
												
											</div>
											
										</div>
								</div>
								<div class="ydc-reg-form-group">
									<div class="ydc-reg-form-button" style="margin-left: 255px;">
										<input
											type="submit" class="btn-sub" value="提交" />
									</div>
								</div>
								</form>
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



	<script type="text/javascript">
	    $(function(){
	        $('.ydc-tabPanel ul li').click(function(){
	            $(this).addClass('hit').siblings().removeClass('hit');
	            $('.ydc-panes>div:eq('+$(this).index()+')').show().siblings().hide();
	        })
	        $('#patmail').click(function(){
	       		 $.AutoComplete($(this));

	        })
	       
	    })
	    
	    $('#user4').blur(function(){
	   var phone = document.getElementById("user4").value;
	   var reg = /^1[3|4|5|7|8][0-9]\d{4,8}$/;
   	var c4 = document.getElementById("c4");
   	if(!reg.test(phone)){
           c4.innerHTML = "×手机错误";
           c4.style="text-align: left; color:red; text-align:left; font-size:12px"
       }
       if(reg.test(phone)){
       		   $.post("/hospital/Docphone",{phone:phone},function(data){
       			  	if(data){
       			  	c4.innerHTML = "×手机号已被注册";
       		       	c4.style="color:red;text-align: left; text-align:left; font-size:12px"
       			  	}else{
       			  	c4.innerHTML = "√手机号可用";
       		       	c4.style="color:green;text-align: left; text-align:left; font-size:12px"
       			  	}
       		   },"json")
       	   
       }
   })
   
   
   var myDate = new Date();
   var year = myDate.getFullYear(); //获取完整的年份(4位,1970-????)
   $('#user2').blur(function(){
	   var age = document.getElementById("user2").value;
	   var reg = /(^\d{15}$)|(^\d{18}$)|(^\d{17}(\d|X|x)$)/;
   	var c2 = document.getElementById("c2");
   	if(!reg.test(age)){
           c2.innerHTML = "×身份证格式错误";
           c2.style="text-align: left; color:red; text-align:left; font-size:12px"
       }
       if(reg.test(age)){
       	c2.innerHTML = "√身份证正确";
       	c2.style="color:green;text-align: left; text-align:left; font-size:12px"
       		var age1 = age.substr(6,4);
       	var age2 = year - age1 -1;
       	var sex = age.substr(16,1);
       	var user1 = document.getElementById("user1");
       	var woman = document.getElementById("woman");
       	var man = document.getElementById("man");
       	user1.value = age2;
       	if(sex%2==0){
       		$("#woman").attr("checked","checked");
       	}else{
       		$("#man").attr("checked","checked");
       	}
       }
       
   })
   $('#patmail').blur(function(){
	   var mail = document.getElementById("patmail").value;
	   var reg = new RegExp("^[a-z0-9]+([._\\-]*[a-z0-9])*@([a-z0-9]+[-a-z0-9]*[a-z0-9]+.){1,63}[a-z0-9]+$");
   	var c3 = document.getElementById("c3");
   	if(!reg.test(mail)){
           c3.innerHTML = "×邮箱错误";
           c3.style="text-align: left; color:red;font-size:12px; margin-left:270px"
       }
       if(reg.test(mail)){
       	c3.innerHTML = "√邮箱正确";
       	c3.style="color:green;text-align: left; font-size:12px; margin-left:270px"
       }
   })
	 
	</script>
	<script type="text/javascript" language="javascript">
        //BindProvince();//只初始化省份
        var add = "${d.docaddress}";
       	var add1 = add.split(",");
        BindCity(add1[1]);//
   </script>
	<script type="text/javascript">
   $(function(){
	   var sub = document.getElementById("sub");
			$.post("/hospital/Findsub",{dname:"null"},function(data){
				for(var a in data){
					sub.options.add(new Option(data[a].dname,data[a].dname));
				}
			},"json")
   })
   
   function dosub(){
	   var reg = /^1[3|4|5|7|8][0-9]\d{4,8}$/;
	   var reg2 = /(^\d{15}$)|(^\d{18}$)|(^\d{17}(\d|X|x)$)/;
	   var reg3 = new RegExp("^[a-z0-9]+([._\\-]*[a-z0-9])*@([a-z0-9]+[-a-z0-9]*[a-z0-9]+.){1,63}[a-z0-9]+$");
	   var phone = document.getElementById("user4").value;
	   var id = document.getElementById("user2").value;
	   var mail = document.getElementById("patmail").value;
	   if(document.getElementById("file").value == null || document.getElementById("file").value == ""){
           alert("请选择上传文件");
           return false;
   		}
	   if(!reg.test(phone)){
		   alert("手机格式错误！")
		   return false;
		   
	   }
	   if(!reg2.test(id)){
		   alert("身份证格式错误！")
		   return false;
		   
	   }
	   if(!reg3.test(mail)){
		   alert("邮箱格式错误！")
		   return false;
		   
	   }
	   
	   return true;
   }
   		
   </script>

</body>
</html>