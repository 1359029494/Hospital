<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<title>医生管理 —— 工大校医院</title>
<link rel="icon" type="image/x-icon" href="favicon.ico">
<link href="iTunesArtwork@2x.png" sizes="114x114"
	rel="apple-touch-icon-precomposed">
<link type="text/css" rel="stylesheet" href="admin/css/core.css">
<link type="text/css" rel="stylesheet" href="admin/css/icon.css">
<link type="text/css" rel="stylesheet" href="admin/css/home.css">
<link rel="stylesheet" type="text/css" href="admin/css/my.css" />
<script type="text/javascript" src="admin/js/jquery-1.8.3.min.js"></script>


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
									<li class="hit">医生管理</li>
								</ul>
							</div>
							<div class="ydc-panes">
								<div class="ydc-pane" style="display: block;">
									<div class="ydc-release-form-group ">
										<div class="ydc-group-input clearfix"
											style="width: 100%; margin-bottom: 20px;">

											<input type="text" id="txtname" placeholder="请输入医生姓名进行搜索"
												style="width: 91.333%">
											<button class="ydc-group-button">搜 索</button>

										</div>
									</div>
									<div class="ydc-assetStyle">
										<span>共<span class="ydc-assetStyle-span">${count }</span>条内容
										</span>
									</div>
									<div class="ydc-asset-img clearfix">
										<c:forEach items="${list }" var="d">
											<div class="ydc-asset-img-list">
												<div class="ydc-asset-img-list-img">
													<img src="<%=request.getContextPath() %>/hos_admin/admin/${d.docphoto}">
												</div>
												<div class="ydc-asset-img-list-til">${d.docname }</div>
												<div class="ydc-asset-img-list-del">
													<a href="Updoc?docname=${d.docname }">
														<button>编辑</button>
													</a>
													<button class="delete" del="${d.docid }"
														onclick="doclick()">删除</button>
												</div>
											</div>
										</c:forEach>
									</div>
									<div class="ydc-pagination">
										<ol>
											<c:if test="${pagenow==1 }">
												<li class="ydc-previous-item">
													<button class="ydc-previous-item-btn-medium ydc-disabled">
														<span>上一页</span>
													</button>
												</li>
											</c:if>
											<c:if test="${pagenow!=1 }">
												<li class="ydc-previous-item">
													<a href="Managedoc?pagenow=${pagenow-1 }"><button class="ydc-previous-item-btn-medium">
														<span>上一页</span>
													</button></a>
												</li>
											</c:if>


											<c:forEach begin='1' end='${numpage }' var="i">
												<li><a href="Managedoc?pagenow=${i }"><button
															class="ydc-previous-item-btn-medium cur">${i }</button></a></li>
											</c:forEach>
											<c:if test="${pagenow == numpage }">
												<li class="ydc-previous-item">
													<button class="ydc-previous-item-btn-medium ydc-disabled">
														<span>下一页</span>
													</button>
												</li>
											</c:if>
											<c:if test="${pagenow != numpage }">
												<li class="ydc-previous-item">
													<a href="Managedoc?pagenow=${pagenow+1 }"><button class="ydc-previous-item-btn-medium">
														<span>下一页</span>
													</button></a>
												</li>
											</c:if>
											<li class="ydc-item-quick">第
												<div class="ydc-item-quick-kun">
													<form action="Managedoc" method="post">
														<input type="number" id="pagenow" aria-invalid="false" name="pagenow"
															value="${pagenow }">
												</div>页 <input type="submit" value="跳转" style="margin-left: 5px;"
												class="ydc-previous-item-btn-medium" onclick="return dopage()">
												</form>
											</li>
										</ol>
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
	    $(function(){
	        $('.ydc-tabPanel ul li').click(function(){
	            $(this).addClass('hit').siblings().removeClass('hit');
	            $('.ydc-panes>div:eq('+$(this).index()+')').show().siblings().hide();
	        })
	        $('.ydc-group-button').click(function(){
				var docname = document.getElementById("txtname").value;
				$.post("/hospital/Finddoc",{docname:docname},function(data){
					$('.ydc-asset-img').html('');
						var tpml='';
						tpml+='<div class="ydc-asset-img-list">'
		                       +'<div class="ydc-asset-img-list-img">'
		                       +'<img src="admin/'+data.docphoto+'">'
		                       +'</div>'
		                       +' <div class="ydc-asset-img-list-til">'+data.docname+'</div>'
		                       +'<div class="ydc-asset-img-list-del">'
		                       +' <a href="Updoc?docname='+data.docname+'"><button>编辑</button></a>'
		                       +' <button class="delete" del='+data.docid+' onclick="doclick()">删除</button>'
		                       +'</div>'
		                       +'</div>';	
					$('.ydc-asset-img').html(tpml);
					
				},"json")
	        })
	    })
	    
	    var del=document.getElementsByClassName('delete');
	    for(var i=0;i<del.length;i++){
	    	var ali=del[i];
	    		del[i].index=i;
	    		del[i].onclick=function(){
	    			var id=this.getAttribute('del');
	    			var flag = confirm("确定删除？");
	    	    	if(flag == true){
	    	    		window.location.href="/hospital/Deletedoc?docid="+id;}
	    		}
	    		
	    }
	    
	    function dopage(){
	    	var page = document.getElementById("pagenow");
	    	var pagenow = document.getElementById("pagenow").value;
	    	if(pagenow > ${numpage} ){
	    		alert("您输入的页数过大哦！");
	    		page.value=${pagenow };
	    		return false;
	    	}else if(pagenow < 1){
	    		alert("您输入的页数太小啦！");
	    		page.value=${pagenow };
	    	}else{
	    		return true;
	    	}
	    }
</script>


</body>
</html>