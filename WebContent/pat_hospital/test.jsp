<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="refresh" content="5">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="keywords" content="">
<meta name="author" content="">
<!-- Site Title   -->
<title>Home</title>
<!-- Fav Icons   -->
<link rel="icon" href="images/a0.jpg" type="image/x-icon">
<!-- Bootstrap -->
<link href="css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="css/iconfont.css"/>
<script src="js/iconfont.js" type="text/javascript" charset="utf-8"></script>
<!-- Fonts Awesome -->
<!-- Google Fonts -->
<!-- animate Effect -->
<link href="css/animate.css" rel="stylesheet">
<!-- Main CSS -->
<link href="css/style.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="css/core.css"/>
<!-- Responsive CSS -->
<style type="text/css">
	body{
		 overflow:-Scroll;overflow-x:hidden
	}
	.ydc-column {
			    -ms-flex: 1 1 0px;
			    -webkit-flex: 1 1 0%;
			    flex: 1 1 0%;
			    padding-left: 10px;
			    padding-right: 10px;
			    position: relative;
			    max-width: 100%
			}
			.ydc-column-8 {
			    -ms-flex: 0 0 79.16667%;
			    -webkit-flex: 0 0 79.16667%;
			    flex: 0 0 79.16667%;
			    max-width: 79.16667%
			}
			.ydc-right-head {
			    display: -webkit-flex;
			    display: -ms-flexbox;
			    display: flex;
			    -webkit-flex-direction: row;
			    -ms-flex-direction: row;
			    flex-direction: row;
			}
			.ydc-right-head-info {
			    display: -webkit-flex;
			    display: -ms-flexbox;
			    display: flex;
			    height: 140px;
			    -webkit-flex: 1 1 780px;
			    -ms-flex: 1 1 780px;
			    flex: 1 1 780px;
			    -webkit-align-items: center;
			    -ms-flex-align: center;
			    align-items: center;
			    text-align: center;
			    font-weight: 700;
			    background-color: #f4f4f4;
			    border-radius: 3px;
			}
			.ydc-right-head-info dl {
			    -webkit-flex: 1 1 0%;
			    -ms-flex: 1 1 0%;
			    flex: 1 1 0%
			}
			
			.ydc-right-head-info dl dt {
			    color: #757575;
			    line-height: 22px;
			    font-size:  14px;
			    font-weight: 200;
			}
			
			.ydc-right-head-info dl dd {
			    margin: 8px 0 0;
			    font-size: 26px;
			    line-height: 37px;
			    font-weight: 700;
			}
			
			.ydc-right-head-info dl a:hover {
			    color: #ff5f5f;
			}
			.container{
				margin-left: 90px;
			}
</style>
</head>
<script type="text/javascript">
	function firstfun(){
		$.get("../doserachregister",{},function(data){
			if(data==0){
				$("#bianhao").html("未挂号");
			}else{
				$("#bianhao").html(data);
			}
		})
		$.get("../dosearchpeople",{},function(data){
			if(data!=0){
				$("#renshu").html(data);
			}else{
				$("#renshu").html("未挂号");
			}
		})
		$.get("../doshowguahaodoc",{},function(data){
			var md = data[0];
			if(data==0){
			}else{
				$("#keshi").html(md.redname);
				$("#doctor").html(md.redoc);
			}
		},"json");		
	}
</script>
<body onload="firstfun()">

		<!-- content YDC begin -->
		<section>
					<!-- right begin -->
					<div class="ydc-column ydc-column-8">
						<div class="ydc-entered-box">
							<div class="ydc-content-right">
								<div class="ydc-right-head">
									<div class="ydc-right-head-info">
										<dl>
											<a href="javascript:;">
												<dt>挂号单号</dt>
												<dd id="bianhao">0</dd>
											</a>
										</dl>
										<dl>
											<a href="javascript:;">
												<dt>排队人数</dt>
												<dd id="renshu">0</dd>
												<span style="font-size: 25px;" id="keshi"></span>
												<span style="font-size: 25px; " id="doctor"></span>
											</a>
										</dl>
									</div>
								</div>
								<!-- gongGao begin -->
							</div>
						</div>
					</div>
					<!-- right end -->
				</div>
			</div>

		</section>
		<!-- content YDC end -->

<section id="section1" class="section-margine">
  <div class="container">
    <div class="row">
      <div class="col-md-3 col-sm-6">
      
        <div class="section-1-box wow bounceIn">
        	<a href="guahao.jsp" target="_parent">
          <div class="section-1-box-icon-background"><i class="iconfont icon-jinriguahao"></i></div>
          <h4 class="text-center">挂号</h4>
           </a>
         <!-- <p class="text-center">You can use this button to register</p>-->
        </div>
       
      </div>
      <div class="col-md-3  col-sm-6">
      	
        <div class="section-1-box wow bounceIn" data-wow-delay=".1s">
          <a href="../domedicine" target="_parent">
	          <div class="section-1-box-icon-background"><i class="iconfont icon-yaoxiang"></i></div>
	          <h4 class="text-center">自助拿药</h4>
           </a>
          <!--<p class="text-center">You can use this button for self-service medicine</p>-->
        </div>
       
      </div>
      
    </div>
  </div>
</section>

<script src="js/jquery.min.js"></script> 
<script src="js/jquery.isotope.min.js"></script> 
<script src="js/jquery.magnific-popup.min.js"></script> 
<script src="js/wow.min.js"></script> 
<script src="js/jquery.counterup.min.js"></script> 
<script src="js/main.js"></script>
</body>
</html>
