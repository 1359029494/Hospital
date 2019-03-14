<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!doctype html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport"content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>药品购物车</title>
<link rel="icon" href="images/a0.jpg" type="image/x-icon">
<!-- Bootstrap -->
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/bootstrap-dropdownhover.min.css" rel="stylesheet">
<script src="js/iconfont.js" type="text/javascript" charset="utf-8"></script>
<!-- Fonts Awesome -->
<link href="css/font-awesome.min.css" rel="stylesheet">
<!-- Google Fonts -->
<link href='https://fonts.googleapis.com/css?family=Raleway:400,200,300,100,500,600,700,800,900' rel='stylesheet' type='text/css'>
<link href="https://fonts.googleapis.com/css?family=Poppins:300,400" rel="stylesheet">
<!-- animate Effect -->
<link href="css/animate.css" rel="stylesheet">
<!-- Main CSS -->
<link href="css/style.css" rel="stylesheet">
<!-- Responsive CSS -->
<link href="css/responsive.css" rel="stylesheet">
<link href="css/iconfont.css" rel="stylesheet">
<link rel="stylesheet" href="css/reset.css">
<link rel="stylesheet" href="css/carts.css">

<script src="js/bootstrap.min.js"></script>
<script src="js/main.js"></script>
<style type="text/css">
	    body, h1, h2, h3, h4, h5, h6, hr, p, blockquote,
    /* structural elements 结构元素 */

    dl, dt, dd, ul, ol, li,
    /* list elements 列表元素 */

    pre,
    /* text formatting elements 文本格式元素 */

    fieldset, lengend, button, input, textarea,
    /* form elements 表单元素 */

    th, td {
        /* table elements 表格元素 */
        margin: 0;
        padding: 0;
    }
    /* 设置默认字体 */

    body, button, input, select, textarea {
        /* for ie */
        /*font: 12px/1 Tahoma, Helvetica, Arial, "宋体", sans-serif;*/
        font: 12px/1 Tahoma, Helvetica, Arial, "\5b8b\4f53", sans-serif;
        /* 用 ascii 字符表示，使得在任何编码下都无问题 */
    }

    h1 {
        font-size: 18px;
        /* 18px / 12px = 1.5 */
    }

    h2 {
        font-size: 16px;
    }

    h3 {
        font-size: 14px;
    }

    h4, h5, h6 {
        font-size: 100%;
    }

    address, cite, dfn, em, var {
        font-style: normal;
    }
    /* 将斜体扶正 */

    code, kbd, pre, samp, tt {
        font-family: "Courier New", Courier, monospace;
    }
    /* 统一等宽字体 */

    small {
        font-size: 12px;
    }
    /* 小于 12px 的中文很难阅读，让 small 正常化 */
    /* 重置列表元素 */

    ul, ol {
        list-style: none;
    }
    /* 重置文本格式元素 */

    a {
        text-decoration: none;
        color: #000;
    }
    /*a:hover { text-decoration: underline; }*/

    abbr[title], acronym[title] {
        /* 注：1.ie6 不支持 abbr; 2.这里用了属性选择符，ie6 下无效果  
        */
        border-bottom: 1px dotted;
        cursor: help;
    }

    q:before, q:after {
        content: '';
    }
    /* 重置表单元素 */

    legend {
        color: #000;
    }
    /* for ie6 */

    fieldset, img {
        border: none;
    }
    /* img 搭车：让链接里的 img 无边框 */
    /* 注：optgroup 无法扶正 */

    button, input, select, textarea {
        font-size: 100%;
        /* 使得表单元素在 ie 下能继承字体大小 */
    }
    /* 重置表格元素 */

    table {
        border-collapse: collapse;
        border-spacing: 0;
    }
    /* 重置 hr */

    hr {
        border: none;
        height: 1px;
    }
    /* 让非ie浏览器默认也显示垂直滚动条，防止因滚动条引起的闪烁 */

    html {
        overflow-y: scroll;
    }
    /*  浮动  */

    .fl {
        float: left
    }

    .fr {
        float: right
    }
    /*  清除浮动  */

    .clearfix:after {
        content: " ";
        display: block;
        clear: both;
        visibility: hidden;
    }
	a img{
		height: 100px;
	}
	.zhifu{
		position: fixed;
		margin-left:1400px;
		background: #00AEF0;
		cursor: pointer;
		display: block;
		width: 120px;
		height: 50px;
		color: #fff;
		font-size: 22px;
		letter-spacing: 5px;
		line-height: 50px;
		text-align: center;
		border-radius: 2px;
		float: right;
		margin-top: 100px;
	}
</style>
<script src="js/jquery.min.js"></script>
<script src="js/carts.js"></script>
<script type="text/javascript">
	var $wholeChexbox1 = $('.whole_check'),
        $cartBox1 = $('.cartBox'),                       //每个商铺盒子
        $shopCheckbox1 = $('.shopChoice'),               //每个商铺的checkbox
        $sonCheckBox1 = $('.son_check');                 //每个商铺下的商品的checkbox
	function addDingdan(){
		var goods=0;
		var num=0;
		$('.son_check').each(function () {
            if ($(this).is(':checked')) {
                var goods = parseInt($(this).parents('.order_lists').find('.list_chk').children().attr("name"));
                var num =  parseInt($(this).parents('.order_lists').find('.sum').val());
                $.get("../doaddcar",{drug_id:goods,number:num},function(date){
                	
                });
            }
        });
		addSQL();
		
    }
        function addSQL() {
        	$.get("../dolastdingdan",{},function(date){
        		window.location.href="";
            });
		}
	function btn_zhuanhuan(){
		$.get("../chaxundingdan",{},function(data){
			if(data==1){
				var zhifu = document.getElementById("zhifu_a");
				zhifu.className="btn_sty";
			}else{
				
			}
		},"json");
	}
</script>



</head>
<body onload="btn_zhuanhuan()">
<header id="header" class="head">
  <div class="top-header">
     <div class="container">
       <div class="row ">
         <ul class="contact-detail2 col-md-6 pull-left">
           <li> <a href="contact.jsp"><i class="fa fa-mobile"></i>Call US + (81) 178 614 4707</a> </li>
           <li> <a href="contact.jsp"><i class="fa fa-envelope-o"></i> 1441043674@qq.com</a> </li>
         </ul>
         <div class="social-links col-md-6 pull-right">
           <ul class="social-icons pull-right">
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
            <li class="active"><a href="index.jsp">主页</a></li>
            <li><a href="aboutus.jsp">关于我们 </a></li>
            <li><a href="contact.jsp">反馈意见 </a></li>
      <c:choose>
            <c:when test="${empty user_pat}">
                <li><a href="parlogin.jsp">注册/登录</a>
                </li>
            </c:when>
            <c:otherwise>
                <li><a href="myself.jsp"><c:out value="${user_pat.patname }"></c:out></a></li>
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


<div class="zhifu" style="background: #00AEF0;" ><a id="zhifu_a" style="color: #fff; text-decoration: none;" href="dindanzhifu.jsp">去付费</a></div>
<section class="cartMain">
	<div class="cartMain_hd" style="border-top:#00AEF0 solid 3px">
		<ul class="order_lists cartTop">
			<li class="list_chk">
				<!--所有商品全选-->
				<input type="checkbox" id="all" class="whole_check">
				<label for="all"></label>
				全选
			</li>
			<li class="list_con">商品信息</li>
			<li class="list_info">商品参数</li>
			<li class="list_price">单价</li>
			<li class="list_amount">数量</li>
			<li class="list_sum">金额</li>
			<li class="list_op">操作</li>
		</ul>
	</div>

	<div class="cartBox">
		
		
		
		
		<div class="order_content">
		<c:forEach items="${drug_list }" var="drug">
			<ul class="order_lists">
				<li class="list_chk">
					<input type="checkbox" id="checkbox_${drug.drid }" class="son_check" name="${drug.drid }">
					<label for="checkbox_${drug.drid }"></label>
				</li>
				<li class="list_con">
					<div class="list_img"><a href="../dolookdrug?drugid=${drug.drid} " target="_blank"><img src="<%=request.getContextPath() %>/hos_admin/admin/${drug.drphoto}" alt="yaopin"></a></div>
					<div class="list_text"><a href="../dolookdrug?drugid=${drug.drid} " target="_blank">${drug.drname }</a></div>
					<div class="list_text">${drug.dreffect }</div>
				</li>
				<li class="list_info">
					<p>规格：默认</p>
				</li>
				<li class="list_price">
					<p class="price">￥${drug.drprice }</p>
				</li>
				<li class="list_amount">
					<div class="amount_box">
						<a href="javascript:;" class="reduce reSty">-</a>
						<input type="text" value="1" class="sum" min="1" max="${drug.drnumber }">
						<a href="javascript:;" class="plus">+</a>
					</div>
				</li>
				<li class="list_sum">
					<p class="sum_price">￥${drug.drprice }</p>
				</li>
				<li class="list_op">
					<p class="del"><a href="javascript:;"  class="delBtn">移除商品</a></p>
				</li>
			</ul>
			</c:forEach>
			
		</div>
	</div>
	
	
	<!--底部-->
	<div class="bar-wrapper" style="border-top: #00AEF0 solid 1px;">
		<div class="bar-right">
			<div class="piece">已选商品<strong class="piece_num">0</strong>件</div>
			<div class="totalMoney">共计: <strong class="total_text">0.00</strong></div>
			<div class="calBtn" style="background: #00AEF0; " onclick="addDingdan()"><a href="javascript:;">生成订单</a></div>
		</div>
	</div>
</section>


<section class="model_bg"></section>
<section class="my_model">
	<p class="title">移除药品<span class="closeModel">X</span></p>
	<p>您确认要移除该药品么？</p>
	<div class="opBtn"><a href="javascript:;" class="dialog-sure">确定</a><a href="javascript:;" class="dialog-close">关闭</a></div>
</section>



</body>
</html>
