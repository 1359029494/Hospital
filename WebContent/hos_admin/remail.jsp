<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.hospital.dao.DoctorDAO" %>
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
        <title>发布文章--  媒体开放平台 一点车 -  让您多懂一点车</title>
        <link rel="icon" type="image/x-icon" href="favicon.ico">
        <link href="iTunesArtwork@2x.png" sizes="114x114" rel="apple-touch-icon-precomposed">
        <link type="text/css" rel="stylesheet" href="admin/css/core.css">
        <link type="text/css" rel="stylesheet" href="admin/css/icon.css">
        <link type="text/css" rel="stylesheet" href="admin/css/home.css">
        <link type="text/css" rel="stylesheet" href="admin/css/my.css">
        <script type="text/javascript" src="admin/js/jquery-1.5.2.min.js"></script>
        <script type="text/javascript">
        var currentShowCity=0;
        $(document).ready(function(){
            $("#province").change(function(){
                $("#province option").each(function(i,o){
                    if($(this).attr("selected"))
                    {
                        $(".city").hide();
                        $(".city").eq(i).show();
                        currentShowCity=i;
                    }
                });
            });

            $("#province").change();
        });

        function getSelectValue(){
            alert("1级="+$("#province").val());
            $(".city").each(function(i,o){
                if(i == currentShowCity){

                    alert("2级="+$(".city").eq(i).val());
                }
            });
        }
	
        </script>
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
								<a href="/hospital/hos_admin/Mine">校医院admin——${sessionScope.admins.admname }</a>
							</div>
							<div class="ydc-user-info-func ydc-flex">
								<span class="ydc-tag">管理员</span> <a
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
								<a href="remail.jsp" class="active">发布</a>
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
                                        <li class="hit">发布消息</li>
                                    </ul>
                                    <div class="ydc-release-amount">
                                        <span>
                                            	
                                        </span>
                                    </div>
                                </div>
                                <div class="ydc-panes">
                                    <div class="ydc-pane" style="display:block;">
                                        <div class="ydc-release-form-group ">
                                            <div class="ydc-warning-default">
                                                <p>标题字数需少于30字。</p>
                                            </div>
                                            <form action="/hospital/hos_admin/Admsend" method="post">
                                            <div class="ydc-release-form-group-input">
                                                <input type="text" class="ydc-form-control" name="title" title="" placeholder="请输入标题，为了更好的展示效果，建议标题字数在30个汉字以内" onkeyUp="textLimitCheck(this, 30);">
                                                <div class="ydc-form-group-jl">
                                                    <span id="messageCount">0</span>
                                                    /30
                                                </div>
                                            </div>
                                        </div>
                                        <div class="ydc-release-form-text">
                                            <textarea name="message" style="width: 100%; height:300px" >请输入内容...
										</textarea>
                                        </div>
                                             	<input type="submit" value="发 送" class="btn-send" style="margin-left:700px; margin-top:0px">
                                    </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- right end -->
                </div>
            </div>
        </section>
        <!-- content YDC end -->
        <!-- <script type="text/javascript" src="admin/js/nicEdit.js"></script> -->
        <script type="text/javascript" src="admin/js/upImg.js"></script>
        <script type="text/javascript">
            
	    jQuery(function(){
	        upload_start();
	    });
	    //tab切换
	    $(function(){
	        $('.aui-ad-tab-title ul li').click(function(){
	            $(this).addClass('aui-current').siblings().removeClass('aui-current');
	            $('.aui-ad-tab-body>div:eq('+$(this).index()+')').show().siblings().hide();
	        })
	    });
		
        </script>
        <script type="text/javascript">
            
	    bkLib.onDomLoaded(function() { nicEditors.allTextAreas() });//编辑器
	
        </script>
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
	        setTimeout(showSlides, 3000); // AD滚动时间
	    }
	
        </script>
        <script type="text/javascript">
            
	    $(function(){
	        $('.ydc-tabPanel ul li').click(function(){
	            $(this).addClass('hit').siblings().removeClass('hit');
	            $('.ydc-panes>div:eq('+$(this).index()+')').show().siblings().hide();
	        })
	    })//tab
	
        </script>
        <script type="text/javascript">
            
	    function textLimitCheck(thisArea, maxLength){
	        if (thisArea.value.length > maxLength){
	            alert(maxLength + ' 个字限制. \r超出的将自动清除.');
	            thisArea.value = thisArea.value.substring(0, 30);
	            thisArea.focus();    }
	        messageCount.innerText = thisArea.value.length;
	        messageCount1.innerText = thisArea.value.length;
	        messageCount2.innerText = thisArea.value.length;
	    }//标题输入框字数限制
	
        </script>
    </body>
</html>