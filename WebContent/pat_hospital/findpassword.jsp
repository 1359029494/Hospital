<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>找回密码</title>
	<link type="text/css" rel="stylesheet" href="css/findpass.css"></link>
	<style type="text/css">
		html, body, div, span, applet, object, iframe, h1, h2, h3, h4, h5, h6, p, blockquote, pre, a, abbr, acronym, address, big, cite, code, del, dfn, em, img, ins, kbd, q, s, samp, small, strike, strong, sub, sup, tt, var, b, u, i, center, dl, dt, dd, ol, ul, li, fieldset, form, label, legend, table, caption, tbody, tfoot, thead, tr, th, td, article, aside, canvas, details, embed, figure, figcaption, footer, header, hgroup, menu, nav, output, ruby, section, summary, time, mark, audio, video, select{
		margin: 0;padding: 0;border: 0;
		}
		table{ 
				border-collapse:collapse;
			}
		body{
				font-size:12px;
				color:#333; 
				font-family:"Microsoft Yahei";
				 overflow-x:hidden; 
				 background:#f7f7f7;}
		.bodybg{ 
				background:url(../images/bodybg.jpg) right 160px no-repeat;
			}
		img,a{
				border:0; text-decoration:none;
			}
		ol, ul {
				list-style: none;
			 }
		a{
				color:#333;
				-webkit-transition: all .3s ease-out;
				-moz-transition: all .3s ease-out;
				transition: all .3s ease-out;
			}
		a:hover{
				color:#005b9e;
				-webkit-transition: all .3s ease-out;
				-moz-transition: all .3s ease-out;
				transition: all .3s ease-out;
			}
		img{
				 max-width:100%; 
				 height:auto;
			}
		.web-width{
			width:1200px;
			margin:0 auto;}
		.fl{float:left;}
		.fr{float:right;}
		
	</style>
</head>
<body>
	<div class="content">
 		<div class="web-width"> 
  			<div class="for-liucheng">  
  				<div class="liulist for-cur"></div> 
  				<div class="liulist"></div>
  				<div class="liulist"></div>
  				<div class="liulist"></div>
  				<div class="liutextbox">
  					<div class="liutext for-cur">
  						<em>1</em><br /> <strong>填写账户名</strong>
  					</div>
  					<div class="liutext">
  						<em>2</em><br /><strong>验证身份</strong>
  					</div>
  					<div class="liutext">
  						<em>3</em><br /><strong>设置新密码</strong>
  					</div>
  					<div class="liutext">
  						<em>4</em><br /><strong>完成</strong>
  					</div>
  				</div> 
  			</div>
  		<form action="checkphone.jsp" method="post" class="forget-pwd">
  			<dl>
  				<dt>账户名：</dt>
  				<dd><input type="text" /></dd>
  				<div class="clears"></div> 
  			</dl>
  			<dl>
  				<dt>验证码：</dt>
  				<dd>
  					<input type="text" />
  					<div class="yanzma"> <img src="yanzhengma" /> <a href="#">换一换</a> </div>
  				</dd>
  				<div class="clears"></div>
  		    </dl>
  		    	<div class="subtijiao"> 
  		    		<input type="submit" value="提交" />
				</div>
   		</form>
   	</div>
 </div>
</body>
</html>