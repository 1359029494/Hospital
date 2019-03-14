<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
	<title>修改密码</title>
	<link type="text/css" rel="stylesheet" href="css/findpassmyself.css"></link>
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
		
		#relogin{
			margin:100px 100px 100px 630px;
		}
		#re{
			width: 85px;
		    height: 42px;
		    background: #f60;
		    margin-left:-10px;
		    color: #fff;
		    font-size: 14px;
		    cursor: pointer;
		    border:0;
		}
	</style>
	
</head>
<body>
	<div class="content">
 		<div class="web-width"> 
  			<div class="for-liucheng">  
  				<div class="liulist for-cur"></div> 
  				<div class="liulist for-cur"></div>
  				<div class="liulist for-cur"></div>
  				<div class="liutextbox">
  					<div class="liutext for-cur">
  						<em>1</em><br /> <strong>手机验证</strong>
  					</div>
  					<div class="liutext for-cur">
  						<em>2</em><br /><strong>修改密码</strong>
  					</div>
  					<div class="liutext for-cur">
  						<em>3</em><br /><strong>完成</strong>
  					</div>
  				</div> 
  			</div>
   	</div>
 </div>
 <div id="relogin">
 	<form action="parlogin.jsp">
 		<input id="re" type="submit" value="返回登录"/>
 	</form>
 </div>
</body>
</html>