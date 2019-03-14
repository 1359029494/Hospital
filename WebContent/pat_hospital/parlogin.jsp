<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="en" class="no-js">
	<head>
		<meta charset="UTF-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>login</title>
		<link rel="stylesheet" type="text/css" href="css/normalize.css" />
		<link rel="stylesheet" type="text/css" href="css/demo.css" />
		<link rel="stylesheet" href="js/vendor/jgrowl/css/jquery.jgrowl.min.css">
		<link rel="stylesheet" type="text/css" href="css/component.css" />
		<link rel="icon" href="images/a0.jpg" type="image/x-icon">
		<link href="css/bootstrap.min.css" rel="stylesheet">
		<link href="css/bootstrap-dropdownhover.min.css" rel="stylesheet">
		<link rel="stylesheet" type="text/css" href="css/iconfont.css" />
		<script src="js/iconfont.js" type="text/javascript" charset="utf-8"></script>
		<link href="css/font-awesome.min.css" rel="stylesheet">
		<link href='https://fonts.googleapis.com/css?family=Raleway:400,200,300,100,500,600,700,800,900' rel='stylesheet' type='text/css'>
		<link href="https://fonts.googleapis.com/css?family=Poppins:300,400" rel="stylesheet">
		<link href="css/animate.css" rel="stylesheet">
		<link href="css/style.css" rel="stylesheet">
		<link href="css/responsive.css" rel="stylesheet">
		<script type="text/javascript" src="js/jquery-3.2.1.js"></script>
		<script type="text/javascript">
			function doclick(s) {
				s.src="../doyanzhengforlogin?r=1"+new Date();
			}
			function yanzhenid(){
				var s = document.getElementById("imgxinxi");
				var id = document.getElementById("ID").value;
				var spanid = document.getElementById("spanid");
				if(id.length == 0){
					spanid.innerHTML = "手机号不可为空";
					s.src="../doyanzhengforlogin?r=1"+new Date();
					spanpass.innerHTML = "";
					spanyanzheng.innerHTML = "";
				}else{
					$.get("../doyanzhenphoneid",{id:id},function(data){
						if(data == 1){
							spanid.innerHTML = "手机号可用";
						}else{
							spanid.innerHTML = "未注册的手机号";
						}
					},"json");
				}
			}
			function yanzhenpass(){
				var s = document.getElementById("imgxinxi");
				var id = document.getElementById("ID").value;
				var spanid = document.getElementById("spanid");
				var password = document.getElementById("PASSWORD").value;
				var spanpass = document.getElementById("spanpass");
				if(id.length == 0){
					spanid.innerHTML = "手机号不可为空";
					s.src="../doyanzhengforlogin?r=1"+new Date();
					spanpass.innerHTML = "";
					spanyanzheng.innerHTML = "";
				}else if(password == 0){
					spanpass.innerHTML = "密码不可为空";
					s.src="../doyanzhengforlogin?r=1"+new Date();
					spanid.innerHTML = "";
					spanyanzheng.innerHTML = "";
				}else{
					$.get("../doyanzhenpassid",{id:id,password:password},function(data){
						if(data == 1){
							spanid.innerHTML = "手机号可用";
							spanpass.innerHTML = "";
							spanyanzheng.innerHTML = "";
						}else{
							spanid.innerHTML = "密码不正确";
							spanpass.innerHTML = "";
							spanyanzheng.innerHTML = "";
						}
					},"json");
				}
			}
			function yanzhengxinxi(){
				var s = document.getElementById("imgxinxi");
				var id = document.getElementById("ID").value;
				var spanid = document.getElementById("spanid");
				var password = document.getElementById("PASSWORD").value;
				var spanpass = document.getElementById("spanpass");
				var yanzheng = document.getElementById("yzm").value;
				var spanyanzheng = document.getElementById("spanyanzheng");
				var bl_fasong = document.getElementById("bl_fasong");
				if(id.length == 0){
					spanid.innerHTML = "手机号不可为空";
					s.src="../doyanzhengforlogin?r=1"+new Date();
					spanpass.innerHTML = "";
					spanyanzheng.innerHTML = "";
				}else if(password == 0){
					spanpass.innerHTML = "密码不可为空";
					s.src="../doyanzhengforlogin?r=1"+new Date();
					spanid.innerHTML = "";
					spanyanzheng.innerHTML = "";
				}else if(yanzheng == 0){
					spanyanzheng.innerHTML = "验证码不可为空";
					s.src="../doyanzhengforlogin?r=1"+new Date();
					spanpass.innerHTML = "";
					spanid.innerHTML = "";
				}else{
					$.post("../pat_dologin",{id:id,password:password,yzm:yanzheng},function(data){
						if(data==2){
							spanyanzheng.innerHTML = "验证码错误";
							s.src="../doyanzhengforlogin?r=1"+new Date();
						}else if(data==0){
							spanid.innerHTML = "用户或密码错误";
							s.src="../doyanzhengforlogin?r=1"+new Date();
						}else{
							window.location.href="index.jsp";
						}
					},"json");
					spanpass.innerHTML = "";
					spanid.innerHTML = "";
					spanyanzheng.innerHTML = "";
				}
			}
			function fasong(){
				document.onkeydown=function(event){
					var fasong = document.getElementById("bl_fasong");
		    	var e = event || window.event || arguments.callee.caller.arguments[0];
					if(e && e.keyCode == 13){
						fasong.onclick();
					}
				};
			}
			function chakan(){
				var img = document.getElementById("img");
				var password = document.getElementById("PASSWORD");
				img.src = "images/eye.png";
				password.type = "text";
			}
			function guanbi(){
				var img = document.getElementById("img");
				var password = document.getElementById("PASSWORD");
				img.src = "images/noteye.png";
				password.type = "password";
			}
			document.onkeydown=function(event){
			var fasong = document.getElementById("bl_fasong");
	    	var e = event || window.event || arguments.callee.caller.arguments[0];
				if(e && e.keyCode == 13){
					fasong.onclick();
				}
			};
		</script>
		<style>
			input::-webkit-input-placeholder{
				color:rgba(0, 0, 0, 0.726);
			}
			input::-moz-placeholder{   /* Mozilla Firefox 19+ */
				color:rgba(0, 0, 0, 0.726);
			}
			input:-moz-placeholder{    /* Mozilla Firefox 4 to 18 */
				color:rgba(0, 0, 0, 0.726);
			}
			input:-ms-input-placeholder{  /* Internet Explorer 10-11 */ 
				color:rgba(0, 0, 0, 0.726);
			}
			*{
				margin:0 ;
				padding: 0;
				
			}
			.text_yzm{
				border-radius: 20px;
				box-shadow:white 0 0 5px; 
				height: 45px;
				width: 30%;
			}
			.input_outer1{
				height: 45px;
			}
			.yzm_cla{
				box-shadow:white 0 0 5px;
				border-radius:5px;
				float:right;
				height: 45px;
				width: 160px
			}
			a{
				cursor: pointer;
			}
			.toolbar_btn a span {
			    font-size: 10px;
			    line-height: 11px;
			    position: absolute;
			    z-index: 3;
			    top: 10px;
			    right: 10px;
			    display: none;
			    overflow: hidden;
			    min-width: 11px;
			    height: 14px;
			    padding: 1px 2px;
			    text-align: center;
			    color: #fff;
			    border: 1px solid #e50000;
			    border-radius: 10px;
			    background: #e50000;
			
			}
			.icon-kefu{
				top: -10px;
				left: 10px;
				position: absolute;
				color: white;
			}
			.icon-yisheng{
				top: -10px;
				left: 10px;
				position: absolute;
				color: white;
			}
			
			body{
				background: url('images/002.png') no-repeat left top;
				background-size:100%;
			}
		</style>
	</head>
<body>
	<header id="header" class="head">
		<div class="top-header">
			<div class="container">
				<div class="row ">
					<ul class="contact-detail2 col-md-6 pull-left">
						<li>
							<a href="contact.jsp">
								<i class="fa fa-mobile"></i>
								CallUS + (81) 178 614 4707
							</a>
						</li>
						<li>
							<a href="contact.jsp">
								<i class="fa fa-envelope-o"></i> 
								1441043674@qq.com
							</a>
						</li>
					</ul>
					<div class="social-links col-md-6 pull-right">
						<ul class="social-icons pull-right">
							<!--<li> <a href="javascript:;" target="_blank"><i class="fa fa-facebook"></i></a> </li>
				            <li> <a href="javascript:;" target="_blank"><i class="fa fa-twitter"></i></a> </li>
				            <li> <a href="javascript:;" target="_blank"><i class="fa fa-pinterest"></i></a> </li>
				            <li> <a href="javascript:;" target="_blank"><i class="fa fa-skype"></i></a> </li>
				            <li> <a href="javascript:;" target="_blank"><i class="fa fa-dribbble"></i></a> </li>-->
           				</ul>
         			</div>
       			</div>
     		</div>
    	</div>
    	<nav class="navbar navbar-default navbar-menu">
        	<div class="container">
        		<div class="navbar-header">
          			<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse"> 
			            <span class="sr-only">Toggle navigation</span> 
			            <span class="icon-bar"></span> 
			            <span class="icon-bar"></span> 
			            <span class="icon-bar"></span> 
          			</button>
          			<a class="navbar-brand" href="index.jsp">
            			<div class="logo-text"><span><samp><i class="iconfont icon-hospital" style="line-height: 40px;font-size: 40px;"></i></samp>工大校医</span></div>
          			</a> 
        		</div>
        		<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1" data-hover="dropdown" data-animations="fadeIn">
          			<ul class="nav navbar-nav navbar-right">
            			<li class="active">
            				<a href="index.jsp">主页</a>
            			</li>
            			<li>
            				<a href="aboutus.jsp">关于我们 </a>
            			</li>
            			<li>
            				<a href="contact.jsp">反馈意见 </a>
            			</li>
      					<c:choose>
            			<c:when test="${empty user_pat}">
                		<li>
                			<a href="parlogin.jsp">注册/登录</a>
                		</li>
			            </c:when>
			            <c:otherwise>
                		<li>
                			<a href="myself.jsp">${user_pat.patname }</a>
                		</li>
                		<li>
                			<a href="../dozhuxiao">退出登录</a>
                		</li>
            			</c:otherwise>
        				</c:choose>
          			</ul>
        		</div>
      		</div>
    	</nav>
	</header>
	
		<div id="" class="toolbar_btn" style="height: 60px;width: 60px;background: #00AEF0 ; float: right;z-index: 2;position: fixed; top: 45%;right: 0px;pos">
		<a id="" href="../hos_admin/admlogin.html">
			<samp>
				<i class="iconfont icon-kefu">
				</i>
			</samp>
			
			<span id="lmliCount" style="display: block;">A</span>
		</a>
	</div>
	<div id="" class="toolbar_btn" style="height: 60px;width: 60px;background: #00AEF0 ; float: right;z-index: 2;position: fixed; top: 54%;right: 0px;pos">
		<a id="" href="../doc_hospital/doclogin.jsp">
			<samp>
				<i class="iconfont icon-yisheng">
				</i>
			</samp>
			
			<span id="lmliCount" style="display: block;">D</span>
		</a>
	</div>
	
	<div class="container demo-1 " style="width: 100%;margin: 0px;padding: 0px;">
		<div class="content">
			<div id="large-header" class="large-header" style="height: 538px;">
				<canvas id="demo-canvas" width="1034" height="538"></canvas>
				<div class="logo_box logo_box_me">
					<h3><b>请登录</b></h3>
					
						<div class="input_outer">
							<span class="u_user"></span>
							<input id="ID" name="logname" onblur="yanzhenid()" class="text" style="color: #000000 !important; font-size: 20px;" type="text" placeholder="请输入手机号">
						</div>							
						<span id="spanid" style="float: right; z-index:2; margin-top: -65px; font-size:20px; margin-right: -150px"></span>
						
						<div class="input_outer">
							<span class="us_uer"></span>
							<span style="float:right; margin-top:7px; width:30px;margin-right:8px; left: 50px;" onmousedown="chakan()" onmouseout="guanbi()"><img alt="查看密码" src="images/noteye.png" id="img" width="40px"></span>
							<input id="PASSWORD" name="logpass" onblur="yanzhenpass()" class="text" style="color: #000000 !important; font-size: 20px; position:absolute; z-index:100;" value="" type="password" placeholder="请输入密码">
							
						</div>
						<span id="spanpass"  style="float: right; margin-top: -65px; font-size:20px; margin-right: -150px"></span>
						<div class="input_outer1">
							<input id="yzm" class="text text_yaz" style="color: #000000 !important;text-align:center; position:absolute;font-size: 20px; z-index:100;box-shadow:white 0 0 5px;width: 160px; border-radius: 20px;margin-left: 0px" value="" type="text" maxlength="4" placeholder="请输入验证码" name="yzm">
							<img alt="验证码" id="imgxinxi" onclick="doclick(this)"  src="../doyanzhengforlogin"  class="yzm_cla" >
						</div>
						<span id="spanyanzheng"  style="float: right; margin-top: -40px; font-size:20px; margin-right: -150px"></span>
						<div id="LOGIN" class="mb2"></div>
							<a id="bl_fasong"  onclick="yanzhengxinxi()" style="color: #FFFFFF; border:transparent ;width:100%; "class="act-but submit" >登陆</a>
						<div id="">
							<a style="color: white;font-size:20px;margin-left:50px" href="patregister.jsp">注册</a> <a style="color: white;margin-left:120px;font-size:20px" href="phonecheck.jsp">找回密码</a>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<script src="js/TweenLite.min.js"></script>
	<script src="js/EasePack.min.js"></script>
	<script src="js/jquery.js"></script>
	<script src="js/rAF.js"></script>
	<script src="js/demo-1.js"></script>
	<script src="js/vendor/jgrowl/jquery.jgrowl.min.js"></script>
	<script src="js/Longin.js"></script>
	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.plugin.min.js"></script>
	<script src="js/jquery.isotope.min.js"></script>
	<script src="js/jquery.magnific-popup.min.js"></script>
	<script src="js/bootstrap-dropdownhover.min.js"></script>
	<script src="js/wow.min.js"></script>
	<script src="js/waypoints.min.js"></script>
	<script src="js/jquery.counterup.min.js"></script>
	<script src="js/main.js"></script>
</body>
</html>