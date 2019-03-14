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
	
	
	</style>
	<script type="text/javascript" src="js/jquery-3.2.1.js"></script>
	<!-- 修改数据库的密码，做ajax的跳转 -->
	<script type="text/javascript">
	//判断输入的密密码格式
		function putpass(){
		var usernewpass = document.getElementById("newpass").value;
		var tishi = document.getElementById("tishi");
		var len = usernewpass.length;
		var ts_div = document.getElementById("ts_div");
		if(len<4&&usernewpass!=''){
			tishi.innerHTML = "密码过短";
		    tishi.style.color = "red";
		    return false;
		}
		else if(len>16){
			tishi.innerHTML = "密码过长";
		    tishi.style.color = "red";
		    return false;
		}
		else if(usernewpass==""){
			tishi.innerHTML = "密码不能为空";
		    tishi.style.color = "red";
		    return false;
		}
		else{
			tishi.innerHTML = "";
		}
		};
		//核对密码是否相同
		function checkpass(){
			var newpass = document.getElementById("newpass").value;
			var aginpass = document.getElementById("aginpass").value;
			if(newpass!=aginpass){
				var checkspan = document.getElementById("checkspan");
				checkspan.style.display="inline-block";
			}
			else{
				var checkspan = document.getElementById("checkspan");
				checkspan.style.display="none";
			}
		};
		//修改密码
		function changepass(){
			var newpass = document.getElementById("newpass").value;
			var aginpass = document.getElementById("aginpass").value;
			var tishi = document.getElementById("tishi");
			var checkspan = document.getElementById("checkspan");
			var forfrom = document.getElementById("forfrom");
			if(newpass==""){
				tishi.innerHTML = "密码不能为空";
			    tishi.style.color = "red";
				return false;
			}
			if(aginpass==""||newpass!=aginpass){
				checkspan.style.display="inline-block";
				return false;
			}
			else{
				var checkspan = document.getElementById("checkspan");
				checkspan.style.display="none";
			}
			$.post("../dochangeuserpass",{'password':newpass},function(data){
				if(data==1){
					window.location.href="changeover.jsp";
				}
			},"json");
		};
	</script>
		
</head>
<body>
	<div class="content">
 		<div class="web-width"> 
  			<div class="for-liucheng">  
  				<div class="liulist for-cur"></div> 
  				<div class="liulist for-cur"></div>
  				<div class="liulist"></div>
  				<div class="liutextbox">
  					<div class="liutext for-cur">
  						<em>1</em><br /> <strong>手机验证</strong>
  					</div>
  					<div class="liutext for-cur">
  						<em>2</em><br /><strong>修改密码</strong>
  					</div>
  					<div class="liutext">
  						<em>3</em><br /><strong>完成</strong>
  					</div>
  				</div> 
  			</div>
  		<form  id="chform"  class="forget-pwd">
  			<dl>
  				<dt>新密码：</dt>
  				<dd><input type="password" id="newpass" name="newpass" onblur="putpass()"/></dd>
  				<div style="float:right;margin-top:-25px;box-align: center" id="ts_div"><i class="tishi" id="tishi" style="color:#00CD00">4~16位的数字，字母，符号的组合 </i></div>
  				<div class="clears"></div> 
  			</dl>
  			<dl>
  				<dt>确认密码：</dt>
  				<dd>
  					<input type="password" id="aginpass" name="aginpass" onblur="checkpass()" />
  					<span id="checkspan" style="margin-left:0px;color:red;display:none;font-size:14px">密码不一致</span>
  				</dd>
  				<div class="clears"></div>
  		    </dl>
  		    	<div class="subtijiao"> 
  		    		<input type="button" value="提交" onclick="changepass()"/>
				</div>
   		</form>
   	</div>
 </div>
</body>
</html>