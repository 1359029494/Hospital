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
	<meta name="baidu-site-verification" content="ZVPGgtpUfW"/>
	<title>个人中心</title>
	<link rel="icon" type="image/x-icon" href="images/a0.jpg">
	<link href="iTunesArtwork@2x.png" sizes="114x114" rel="apple-touch-icon-precomposed">
	<link type="text/css" rel="stylesheet" href="css/core.css">
	<link type="text/css" rel="stylesheet" href="css/icon.css">
	<link type="text/css" rel="stylesheet" href="css/home.css">

<!-- Fav Icons   -->
<link rel="icon" href="images/a0.jpg" type="image/x-icon">
<!-- Bootstrap -->
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/bootstrap-dropdownhover.min.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="css/iconfont.css"/>
<script src="js/iconfont.js" type="text/javascript" charset="utf-8"></script>
<!-- Fonts Awesome -->
<link href="css/font-awesome.min.css" rel="stylesheet">
<!-- Google Fonts -->
<!-- animate Effect -->
<link href="css/animate.css" rel="stylesheet">
<!-- Main CSS -->
<link href="css/style.css" rel="stylesheet">
<!-- Responsive CSS -->
<link href="css/responsive.css" rel="stylesheet">
<script type="text/javascript" src="js/jquery-3.2.1.js"></script>
<style type="text/css">
	.tablinks{
		display: block;
	    background-color: inherit;
	    color: black;
	    padding: 22px 16px;
	    width: 100%;
	    border: none;
	    outline: none;
	    text-align: left;
	    cursor: pointer;
	    transition: 0.3s;
	    font-size: 17px;
	}
	a{
		text-decoration: none;
	}
.dropbtn {
    background-color: #00AEF0;
    color: white;
    padding: 16px;
    font-size: 16px;
    border: none;
    cursor: pointer;
    width: 230px;
}

.dropbtn:hover, .dropbtn:focus {
    background-color: #0088CC;
}

.dropdown {
    position: relative;
    display: inline-block;
}

.dropdown-content {
    display: none;
    position: absolute;
    background-color: #f9f9f9;
    min-width: 160px;
    overflow: auto;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
    z-index: 1;
}

.dropdown-content a {
    color: black;
    padding: 12px 16px;
    text-decoration: none;
    display: block;
    width: 230px;
}

.dropdown a:hover {background-color: #00AEF0}

.show {display:block;}
.ydc-menu {
    min-width: 150px;
    min-height: 900px;
    height: 100%;
    background: white;
    padding:0;
    color: #333;
    letter-spacing: 1px;
    border-radius: 2px;
}.gh_userxinxi{
			margin-top:12px;
			height: 80px;
		}
		.gh_ul{
			color: #000000;
			vertical-align: middle;
		}
		.gh_li{
			float: left;
			font-size: 20px;
			margin-top: 15px;
			padding: 15px 0px;
			padding-left: 40px;
			width: 280px;
		}
		.gh_dateli{
			color:#000000;
			float: right;
			margin-top:50px;
			font-size:15px;
			margin-right: 150px;
		}
		.gh_iframe{
			width:78% ;
			margin-left: 10px; 
			border: transparent;
			height: 80%; 
			width: 100%;
		}
</style>
<script type="text/javascript">
			function openCity(evt) {
			    var i, tablinks;
			   
			    tablinks = document.getElementsByClassName("tablinks");
			    for (i = 0; i < tablinks.length; i++) {
			        tablinks[i].className = tablinks[i].className.replace(" active", "");
			    }
			    evt.currentTarget.className += " active";
			}
			// 触发 id="defaultOpen" click 事件
			function abc(){
			var span = document.getElementById("gh_date");
			var date = new Date();
			var seperator1 = "-";
			var year = date.getFullYear();
			var month = date.getMonth() + 1;
			var strDate = date.getDate();
			if(month >= 1 && month <= 9) {
				month = "0" + month;
			}
			if(strDate >= 0 && strDate <= 9) {
				strDate = "0" + strDate;
			}
			var time = year + seperator1 + month + seperator1 + strDate;
			span.innerHTML = time;
			$.post("../doshowkeshi",{},function(data){
				var gh_div = document.getElementById("gh_div");
				var iframe = document.createElement("iframe");
				iframe.name="two";
				iframe.className="gh_iframe";
				iframe.src="guahaonook.jsp";
				gh_div.appendChild(iframe);
				var len = data.length;
				var zhanshi = document.getElementById("myDropdown");
				for(i=0;i<len;i++){
					var a = document.createElement("a");
					var md = data[i];
					a.innerHTML = md.dname;
					a.href="doctorpage/"+md.dname+".jsp";
					a.target="two";
					zhanshi.appendChild(a);
				}
			},"json");
		}
			/* 点击按钮，下拉菜单在 显示/隐藏 之间切换 */
			function myFunction() {
			    document.getElementById("myDropdown").classList.toggle("show");
			}
			
			// 点击下拉菜单意外区域隐藏
			window.onclick = function(event) {
			  if (!event.target.matches('.dropbtn')) {
			
			    var dropdowns = document.getElementsByClassName("dropdown-content");
			    var i;
			    for (i = 0; i < dropdowns.length; i++) {
			      var openDropdown = dropdowns[i];
			      if (openDropdown.classList.contains('show')) {
			        openDropdown.classList.remove('show');
			      }
			    }
			  }
			}
			
</script>
</head>
<body onload="abc()">
	
<!-- head YDC begin -->
<header id="header" class="head">
  <div class="top-header">
     <div class="container">
       <div class="row ">
         <ul class="contact-detail2 col-md-6 pull-left">
           <li> <a href="#" target="_blank"><i class="fa fa-mobile"></i>Call US + (81) 178 614 4707</a> </li>
           <li> <a href="#" target="_blank"><i class="fa fa-envelope-o"></i> 1441043674@qq.com</a> </li>
         </ul>
         <div class="social-links col-md-6 pull-right">
           <ul class="social-icons pull-right">
             <!--<li> <a href="#" target="_blank"><i class="fa fa-facebook"></i></a> </li>
             <li> <a href="#" target="_blank"><i class="fa fa-twitter"></i></a> </li>
             <li> <a href="#" target="_blank"><i class="fa fa-pinterest"></i></a> </li>
             <li> <a href="#" target="_blank"><i class="fa fa-skype"></i></a> </li>
             <li> <a href="#" target="_blank"><i class="fa fa-dribbble"></i></a> </li>-->
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
            <div class="logo-text">
            	<span>	
            		<samp>
            			<i class="iconfont icon-hospital" style="line-height: 40px;font-size: 40px;">
            			
            			</i>
            		</samp>
            			工大校医
            		</span>
            </div>
          </a> 
        </div>
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1" data-hover="dropdown" data-animations="fadeIn">
          <ul class="nav navbar-nav navbar-right">
            <li class="active"><a href="index.jsp">主页</a></li>
            <li><a href="aboutus.jsp">关于我们 </a></li>
            <li><a href="contact.jsp">反馈意见 </a></li>
        <c:choose>
            <c:when test="${empty user_pat}">
                <li><a href="parlogin.jsp">注册/登录</a>
                </li>
            </c:when>
            <c:otherwise>
                <li><a href="myself.jsp"><c:out value="${user_pat.patname }"></c:out> </a></li>
                <li><a href="../dozhuxiao">退出登录</a>
                </li>
            </c:otherwise>
        </c:choose>
          </ul>
        </div>
        <!--/.nav-collapse --> 
      </div>
    </nav>
</header>
<!-- head YDC end -->
<section class="gh_userxinxi">
	<ul class="gh_ul">
		<li class="gh_li" style="margin-left: 200px">
			姓名:<c:out value="${user_pat.patname }"></c:out>
		</li>
		<c:choose>
			<c:when test="${user_pat.patsex == 1}">
			<li class="gh_li">
				姓别:男
			</li>
			</c:when>
			<c:when test="${user_pat.patsex == 0}">
			<li class="gh_li">
				姓别:女
			</li>
			</c:when>
		</c:choose>
		<li class="gh_li">
			联系方式:<c:out value="${user_pat.patphonenumber }"></c:out>
		</li>
		<li class="gh_dateli">
			挂号日期:
			<span id="gh_date">
				
			</span>
		</li>
	</ul>
</section>
<!-- content YDC begin -->
<section style="margin-top: 80px">
		<div class="ydc-content-slide ydc-body">
			<div class="ydc-flex">
				<!-- left begin -->
				<div class="ydc-column ydc-column-2">
					<div class="ydc-menu">
						

						<div class="dropdown">
						<input  onclick="myFunction()" type="button" id="keshiname" class="dropbtn" value="选择科室" />
						  <div id="myDropdown" class="dropdown-content">
						    
						  </div>
						</div>
					</div>
				</div>
				<div class="ydc-column ydc-column-8" name="one" id="gh_div">
					
				</div>
			</div>
		</div>

	</section>
	<script type="text/javascript">
	    $(function(){
	        $('.ydc-tabPanel ul li').click(function(){
	            $(this).addClass('hit').siblings().removeClass('hit');
	            $('.ydc-panes>div:eq('+$(this).index()+')').show().siblings().hide();
	        })
	    })
	</script>
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