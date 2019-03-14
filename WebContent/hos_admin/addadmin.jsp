<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<title>新增管理员 —— 工大校医院</title>
<link rel="icon" type="image/x-icon" href="favicon.ico">
<link href="iTunesArtwork@2x.png" sizes="114x114"
	rel="apple-touch-icon-precomposed">
<link type="text/css" rel="stylesheet" href="admin/css/core.css">
<link type="text/css" rel="stylesheet" href="admin/css/icon.css">
<link type="text/css" rel="stylesheet" href="admin/css/home.css">
<link rel="stylesheet" type="text/css" href="admin/css/my.css" />
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
								<a href="/hospital/hos_admin/Mine">校医院admin——${sessionScope.admins.admname }</a>
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
									<li><a href="/hospital/hos_admin/Managedoc">医生管理</a></li>
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

									<li><a href="addadmin.jsp" class="active">新增管理员</a></li>

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
									<li class="hit">新增管理员</li>
								</ul>
							</div>
							<div class="ydc-panes">
								<div class="ydc-reg-form clearfix">
									<form action="/hospital/Addadmin" method="post"
										enctype="multipart/form-data" onsubmit="return dosub()">
										<div class="ydc-reg-form-class ydc-reg-form-reg"
											style="margin-top: 30px;">
											<div class="ydc-reg-form-group clearfix">
												<label>联系手机:</label>
												<div class="ydc-reg-form-input">
													<input type="text" id="user4" name="admphonenumber"
														class="ydc-form-control" autocomplete="off" placeholder="">
													<label id="c4"></label>
													<div class="ydc-reg-form-text">
														<p>请输入你的手机号作为你的账号</p>
													</div>
												</div>

											</div>
											<div class="ydc-reg-form-group clearfix">
												<label>帐号头像:</label>
												<div class="ydc-reg-form-input">
													<input type="file" id="file" name="admphoto" class=""
														autocomplete="off" placeholder="">
													<div class="ydc-reg-form-text">
														<p>选取至少160*160尺寸的图片。请勿上传二维码或其他推广性质图片作为图标。</p>
													</div>
												</div>
											</div>
											<div class="ydc-reg-form-group clearfix">
												<label>姓名:</label>
												<div class="ydc-reg-form-input">
													<input type="text" id="user1" name="admname"
														class="ydc-form-control" autocomplete="off" placeholder="">
												</div>
											</div>
											<div class="ydc-reg-form-group clearfix">
												<label>身份证号:</label>
												<div class="ydc-reg-form-input clearfix">
													<input type="text" id="user2" name="admidcard"
														class="ydc-form-control" autocomplete="off" placeholder="">
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
												<label>所在城市:</label>
												<div class="ydc-reg-form-input">
													<select name="admaddress1" id="ddlProvince"
														onchange="selectMoreCity(this)">
														<option>请输入所在省</option>
													</select> <select id="ddlCity" name="admaddress2">
														<option>请输入所在市</option>
													</select>
												</div>

											</div>
											<div class="ydc-reg-form-group clearfix">
												<label>密码:</label>
												<div class="ydc-reg-form-input">
													<input type="password" id="user5" name="admpass"
														class="ydc-form-control" autocomplete="off" placeholder="">
														<label id="c6"></label>
												</div>
												<div class="ydc-reg-form-text">
													<p>最少6位，包括至少1个大写字母，1个小写字母，1个数字</p>
												</div>
											</div>
										</div>
										<div class="ydc-reg-form-group">
											<div class="ydc-reg-form-button" style="margin-left: 255px;">
												<input type="reset" class="btn-res" value="重置" /> <input
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

		<div class="ydc-footer">
			<div>
			</div>
		</div>
	</section>
	<!-- content YDC end -->

	<script type="text/javascript" src="admin/js/jquery.min.js"></script>
	<script src="http://echarts.baidu.com/build/dist/echarts-all.js"></script>

	<script type="text/javascript">
	    $(function(){
	        $('.ydc-tabPanel ul li').click(function(){
	            $(this).addClass('hit').siblings().removeClass('hit');
	            $('.ydc-panes>div:eq('+$(this).index()+')').show().siblings().hide();
	        })
	    })
	    
	    $('#user4').blur(function(){
	   var phone = document.getElementById("user4").value;
	   var reg = /^[1][3,4,5,7,8][0-9]{9}$/;
   	var c4 = document.getElementById("c4");
   	if(!reg.test(phone)){
           c4.innerHTML = "×手机格式错误";
           c4.style="text-align: left; color:red; text-align:left; font-size:12px"
       }
       if((reg.test(phone))){
       	c4.innerHTML = "√手机正确";
       	c4.style="color:green;text-align: left; text-align:left; font-size:12px"
       }
   })
   
   $('#user2').blur(function(){
	   var idcard = document.getElementById("user2").value;
	   var reg = /(^\d{15}$)|(^\d{18}$)|(^\d{17}(\d|X|x)$)/;
   	var c2 = document.getElementById("c2");
   	if(!reg.test(idcard)){
           c2.innerHTML = "×身份证格式错误";
           c2.style="text-align: left; color:red; text-align:left; font-size:12px"
       }
    if(reg.test(idcard)){
    	c2.innerHTML = "√身份证正确";
    	c2.style="color:green;text-align: left; text-align:left; font-size:12px"
    }
   })
   
   $('#user5').blur(function(){
	   var pass = document.getElementById("user5").value;
	   var reg = /^.*(?=.{6,})(?=.*\d)(?=.*[A-Z])(?=.*[a-z]).*$/;
   	var c6 = document.getElementById("c6");
   	if(!reg.test(pass)){
           c6.innerHTML = "×请输入密码";
           c6.style="text-align: left; color:red; text-align:left; font-size:12px"
       }
   	if(reg.test(pass)){
        c6.innerHTML = "";
        c6.style="text-align: left; color:red; text-align:left; font-size:12px"
    }
   })
   
   		function dosub(){
	       var phone = document.getElementById("user4").value;
	 	   var reg1 = /^[1][3,4,5,7,8][0-9]{9}$/;
	 	   var idcard = document.getElementById("user2").value;
		   var reg2 = /(^\d{15}$)|(^\d{18}$)|(^\d{17}(\d|X|x)$)/;
		   var pass = document.getElementById("user5").value;
		   var reg3 = /^[a-zA-Z0-9]{6,10}$/;
		   if(document.getElementById("file").value == null || document.getElementById("file").value == ""){
	            alert("请选择上传文件");
	            return false;
	    		}
		   if(!reg1.test(phone)){
			   alert("请输入正确的手机")
			   return false;
		   }
		   if(!reg2.test(idcard)){
			   alert("请输入正确的身份证")
			   return false;
		   }
		   if(!reg3.test(pass)){
			   alert("请输入6-10位的密码")
			   return false;
		   }
		   
		   return true;
	    }
	</script>
	<script type="text/javascript" language="javascript">
        //BindProvince();//只初始化省份
        BindCity("济南");
	</script>


</body>
</html>