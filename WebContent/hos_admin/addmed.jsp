<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<meta name='TTUNION_verify' content='b846c3c2b85efabc496d2a2b8399cd62'>
	<meta name="sogou_site_verification" content="gI1bINaJcL"/>
	<meta name="360-site-verification" content="37ae9186443cc6e270d8a52943cd3c5a"/>
	<meta name="baidu_union_verify" content="99203948fbfbb64534dbe0f030cbe817">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="apple-touch-fullscreen" content="yes">
	<meta name="apple-mobile-web-app-capable" content="yes">
	<meta name="apple-mobile-web-app-status-bar-style" content="black">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
	<meta http-equiv="X-UA-Compatible" content="IE=9; IE=8; IE=7; IE=EDGE;chrome=1">
	<meta name="format-detection" content="telephone=no">
	<meta name="keywords" content="一点车 -  让您多懂一点车,一点车，让您多懂一点车的常识，在这里，您会看到汽车相关的知识，汽车日常保养，汽车多用小知识，汽车简单维修以及清洗保养等等。">
	<meta name="description" content="一点车 -  让您多懂一点车,一点车，让您多懂一点车的常识，在这里，您会看到汽车相关的知识，汽车日常保养，汽车多用小知识，汽车简单维修以及清洗保养等等。。">
	<meta name="author" content="AUI, a-ui.com">
	<meta name="baidu-site-verification" content="ZVPGgtpUfW"/>
	<title>新增药品 —— 工大校医院</title>
	<link rel="icon" type="image/x-icon" href="favicon.ico">
	<link href="iTunesArtwork@2x.png" sizes="114x114" rel="apple-touch-icon-precomposed">
	<link type="text/css" rel="stylesheet" href="admin/css/core.css">
	<link type="text/css" rel="stylesheet" href="admin/css/icon.css">
	<link type="text/css" rel="stylesheet" href="admin/css/home.css">
	<link rel="stylesheet" type="text/css" href="admin/css/my.css"/>

</head>
<body>

<!-- head YDC begin -->
	<header class="ydc-header">
		<div class="ydc-entered">
			<div class="ydc-header-content ydc-flex">
				<div class="ydc-column">
					<a href="/hospital/hos_admin/Adminindex" class="ydc-column-ydc-logo">
						<img src="admin/images/icon/logo.png" title="" about="" alt="">
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
								<span class="ydc-tag">管理员</span>
								<a href="admlogin.html">退出</a>
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
							<li class="ydc-menu-item">
								<span class="ydc-menu-sub-title">
									<i class="ydc-icon ydc-icon-file fl"></i>管理
								</span>
								<ul>
									<li>
										<a href="/hospital/hos_admin/Managedoc">医生管理</a>
									</li>
									<li>
										<a href="/hospital/hos_admin/Managesub">科室管理</a>
									</li>
									<li>
										<a href="/hospital/hos_admin/Managemed">药品管理</a>
									</li>
								</ul>
							</li>
							<li class="ydc-menu-item">
								<span class="ydc-menu-sub-title">
									<i class="ydc-icon ydc-icon-record fl"></i>数据
								</span>
								<ul>
									<li>
										<a href="/hospital/hos_admin/Adminorder">订单查看</a>
									</li>
								</ul>
							</li>
							<li class="ydc-menu-item">
								<span class="ydc-menu-sub-title">
									<i class="ydc-icon ydc-icon-set fl"></i>新增
								</span>
								<ul>
									<li>
										<a href="/hospital/hos_admin/addmed.jsp" class="active">新增药品</a>
									</li>
									<li>
										<a href="/hospital/hos_admin/adddoc.jsp">新增医生</a>
									</li>
									<li>
										<a href="/hospital/hos_admin/addadmin.jsp" >新增管理员</a>
									</li>
								</ul>
							</li>
							<li class="ydc-menu-item">
								<span class="ydc-menu-sub-title">
									<i class="ydc-icon ydc-icon-customer fl"></i>个人信息
								</span>
								<ul>
									<li>
										<a href="/hospital/hos_admin/Mine">查看个人信息</a>
									</li>
								</ul>
							</li>
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
									<li class="hit">新增药品</li>
								</ul>
							</div>
							
							<c:if test="${!empty drug }">
							<div class="ydc-panes">
									<div class="ydc-reg-form clearfix">
									<form action="/hospital/hos_admin/Addmed" method="post" enctype="multipart/form-data" onsubmit="return dosub()">
						<div class="ydc-reg-form-class ydc-reg-form-reg" style="margin-top: 30px;">
							<div class="ydc-reg-form-group clearfix">
								<label>药品名称:</label>
								<div class="ydc-reg-form-input">
									<input type="text" value="${drug.drname }" id="loginEmail" name="drname" class="ydc-form-control" autocomplete="off" placeholder="" style="width:200px;">
									<div class="ydc-reg-form-text">
										<p>请输入2至14字的药品名称</p>
									</div>
								</div>
							</div>
							<div class="ydc-reg-form-group clearfix">
								<label>药品图片:</label>
								<div class="ydc-reg-form-input">
									<input type="file" id="file" name="drphoto" class="" autocomplete="off" placeholder="">
									<div class="ydc-reg-form-text">
										<p>选取至少160*160尺寸的图片。请勿上传二维码或其他推广性质图片作为图标。</p>
									</div>
								</div>
							</div>
							<div class="ydc-reg-form-group clearfix">
								<label>药品单价:</label>
								<div class="ydc-reg-form-input">
									<input type="text" value="${drug.drprice }" id="user1" name="drprice" class="ydc-form-control" autocomplete="off" placeholder="" onblur="checkprice()">
									<label id="c1" style="text-align: left; color:red; text-align:left; font-size:12px"></label>
								</div>
							</div>
							<div class="ydc-reg-form-group clearfix">
								<label>药品库存:</label>
								<div class="ydc-reg-form-input clearfix">
									<input type="text" value="${drug.drnumber }" id="user2" name="drnumber" class="ydc-form-control" autocomplete="off" placeholder="" onblur="checknum()">
									<label id="c2" style="text-align: left; color:red; text-align:left; font-size:12px"></label>
								</div>
							</div>
							<div class="ydc-reg-form-group clearfix">
								<label>是否处方药:</label>
								<div class="ydc-reg-form-input">
								<c:if test="${drug.prescription == 1 }">
									<input type="radio" name="docsex" value="0"/>否
									<input type="radio" name="docsex" value="1" checked="checked" />是
								</c:if>
								<c:if test="${drug.prescription == 0 }">
									<input type="radio" name="docsex" value="0" checked="checked"/>否
									<input type="radio" name="docsex" value="1"  />是
								</c:if>
								</div>
							</div>
							<div class="ydc-reg-form-group clearfix">
								<label>药品描述:</label>
								<div class="ydc-reg-form-input ydc-reg-form-input-width">
									<textarea value="${drug.dreffect }" name="dreffect">${drug.dreffect }</textarea>
									<div class="ydc-reg-form-text">
										<p>请输入2至14字的帐号名称</p>
									</div>
								</div>
							</div>
							</div>
						</div>
						<div class="ydc-reg-form-group">
							<div class="ydc-reg-form-button" style="margin-left:255px;">
								<input type="reset" class="btn-res" value="重置" />
								<input type="submit" class="btn-sub" value="提交" />
							</div>
						</div>
					</form>
							    </div>
					</c:if>
					
					<c:if test="${empty drug }">
							<div class="ydc-panes">
									<div class="ydc-reg-form clearfix">
									<form action="/hospital/hos_admin/Addmed" method="post" enctype="multipart/form-data" onsubmit="return dosub()">
						<div class="ydc-reg-form-class ydc-reg-form-reg" style="margin-top: 30px;">
							<div class="ydc-reg-form-group clearfix">
								<label>药品名称:</label>
								<div class="ydc-reg-form-input">
									<input type="text" id="loginEmail" name="drname" class="ydc-form-control" autocomplete="off" placeholder="" style="width:200px;">
									<div class="ydc-reg-form-text">
										<p>请输入2至14字的药品名称</p>
									</div>
								</div>
							</div>
							<div class="ydc-reg-form-group clearfix">
								<label>药品图片:</label>
								<div class="ydc-reg-form-input">
									<input type="file" id="file" name="drphoto" class="" autocomplete="off" placeholder="">
									<div class="ydc-reg-form-text">
										<p>选取至少160*160尺寸的图片。请勿上传二维码或其他推广性质图片作为图标。</p>
									</div>
								</div>
							</div>
							<div class="ydc-reg-form-group clearfix">
								<label>药品单价:</label>
								<div class="ydc-reg-form-input">
									<input type="text" id="user1" name="drprice" class="ydc-form-control" autocomplete="off" placeholder="" onblur="checkprice()">
									<label id="c1" style="text-align: left; color:red; text-align:left; font-size:12px"></label>
								</div>
							</div>
							<div class="ydc-reg-form-group clearfix">
								<label>药品库存:</label>
								<div class="ydc-reg-form-input clearfix">
									<input type="text" id="user2" name="drnumber" class="ydc-form-control" autocomplete="off" placeholder="" onblur="checknum()">
									<label id="c2" style="text-align: left; color:red; text-align:left; font-size:12px"></label>
								</div>
							</div>
							<div class="ydc-reg-form-group clearfix">
								<label>是否处方药:</label>
								<div class="ydc-reg-form-input">
									<input type="radio" name="docsex" value="0"/>否
									<input type="radio" name="docsex" value="1" checked="checked" />是
								</div>
							</div>
							<div class="ydc-reg-form-group clearfix">
								<label>药品描述:</label>
								<div class="ydc-reg-form-input ydc-reg-form-input-width">
									<textarea name="dreffect">请详细描述该药品，30至120字</textarea>
									<div class="ydc-reg-form-text">
										<p>请输入2至14字的帐号名称</p>
									</div>
								</div>
							</div>
							</div>
						</div>
						<div class="ydc-reg-form-group">
							<div class="ydc-reg-form-button" style="margin-left:255px;">
								<input type="reset" class="btn-res" value="重置" />
								<input type="submit" class="btn-sub" value="提交" />
							</div>
						</div>
					</form>
							    </div>
					</c:if>
					
					
					
					
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
	    $(function(){
	        $('.ydc-tabPanel ul li').click(function(){
	            $(this).addClass('hit').siblings().removeClass('hit');
	            $('.ydc-panes>div:eq('+$(this).index()+')').show().siblings().hide();
	        })
	    })
	    
	    function checkprice(){
	    	 var reg = new RegExp("^[0-9]*$");
	    	var price = document.getElementById("user1").value;
	    	var c1 = document.getElementById("c1");
	    	if(!reg.test(price)){
	            c1.innerHTML = "请输入数字";
	            c1.style = "text-align: left; color:red; text-align:left; font-size:12px"
	        }
	        if(reg.test(price)){
	        	c1.innerHTML = "√";
	        	c1.style="text-align: left; color:green; text-align:left; font-size:12px"
	        }
	    }
	    
	    function checknum(){
	    	var reg = new RegExp("^[0-9]*$");
	    	var num = document.getElementById("user2").value;
	    	var c2 = document.getElementById("c2");
	    	if(!reg.test(num)){
	            c2.innerHTML = "请输入数字";
	            c2.style = "text-align: left; color:red; text-align:left; font-size:12px"
	        }
	        if(reg.test(num)){
	        	c2.innerHTML = "√";;
	        	c2.style = "text-align: left; color:green; text-align:left; font-size:12px"
	        }
	    }
	    
	    function dosub(){
	    	if(document.getElementById("file").value == null || document.getElementById("file").value == ""){
	            alert("请选择上传文件");
	            return false;
	    		}
	    	 var reg1 = new RegExp("^[0-9]*$");
		     var price = document.getElementById("user1").value;
		     var reg2 = new RegExp("^[0-9]*$");
		     var num = document.getElementById("user2").value;
		     
		     if(!reg1.test(price)){
		    	 alert("请输入数字")
		    	 return false;
		     }
		     if(!reg2.test(num)){
		    	 alert("请输入数字")
		    	 return false;
		     }
		     
		     return true;
	    }
	</script>

</body>
</html>