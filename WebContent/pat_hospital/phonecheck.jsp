<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
	<title>Insert title here</title>
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
	<script type="text/javascript">
		//判断手机号用户是否存在
		function checkuser(){
			var phonenumber = document.getElementById("phonenum").value;
			$.post("../docheckphoneforupdatepass",{'phone':phonenumber},function(data){
				if(data!=1){
					var span = document.getElementById("phspan");
					span.style.display="inline-block";
				}
				else{
					var span = document.getElementById("phspan");
					span.style.display="none";
				}
			},"json");
		};
		//获取验证码
		var code = getIdCode(6);
		function getyzma(obj) {	
			//获取用户输入的手机号
			settime(obj);
			var phonenumber = document.getElementById("phonenum").value;
			$.post("../doduanxinyanzheng", {
					'phone':phonenumber,
					'code':code
				}, function(data) {

				}, "json");
		};
		//计时器
		var countdown = 60;

		function settime(obj) {
			if(countdown == 0) {
				obj.removeAttribute("disabled");
				$("#getyz").html("重新发送");
				countdown = 60;
				return;
			} else {
				obj.setAttribute("disabled", true);
				$("#getyz").html(countdown);
				
				countdown--;
			}
			setTimeout(function() {
				settime(obj)
			}, 1000)
		};
		
		//生成验证码随机数
		function getIdCode(length) {
			if (length == undefined) {
				length = 4;
			}
			var pow = Math.pow(10, length);
			var code = Math.floor(Math.random() * pow + pow / 10).toString();
			return code.substr(0, length);
		};
		//判断验证码是否正确
		function checkyzma(){
			var yzma = document.getElementById("message").value;
			if(yzma!=code){
				var yzspan = document.getElementById("yzspan");
				yzspan.style.display="inline-block";
			}
			else{
				var yzspan = document.getElementById("yzspan");
				yzspan.style.display="none";
			}
		};
		//判断提交，电话号码和短信验证码都填入才放行
		function checkall(){
			var span = document.getElementById("phspan");
			var yzspan = document.getElementById("yzspan");
			var yzma = document.getElementById("message").value;
			var phonenumber = document.getElementById("phonenum").value;
		    if(phonenumber == ''){	
				span.style.display="inline-block";
				return ;
			}
		    else if(yzma ==''||code!=yzma){	
				yzspan.style.display="inline-block";
				return ;
			}
		    else if($("#phspan").is(":visible") || $("#yzspan").is(":visible")){
		    	return ;
		    }
			else{
				span.style.display="none";
				yzspan.style.display="none";
			}
			var firstsubmit= document.getElementById("firstsubmit");
			firstsubmit.action = "changepass.jsp";
			firstsubmit.submit();
		}
	</script>
</head>
<body>
	<div class="content">
 		<div class="web-width"> 
  			<div class="for-liucheng">  
  				<div class="liulist for-cur"></div> 
  				<div class="liulist"></div>
  				<div class="liulist"></div>
  				<div class="liutextbox">
  					<div class="liutext for-cur">
  						<em>1</em><br /> <strong>手机验证</strong>
  					</div>
  					<div class="liutext">
  						<em>2</em><br /><strong>修改密码</strong>
  					</div>
  					<div class="liutext">
  						<em>3</em><br /><strong>完成</strong>
  					</div>
  				</div> 
  			</div>
  		<form action="changepass.jsp" method="post" class="forget-pwd" id="firstsubmit">
  			<dl>
  				<dt>电话号码：</dt> 
  				<dd><input type="text" name="phonenum" id="phonenum" onblur="checkuser()"/></dd>
  				<span id="phspan" style="margin-left:110px;color:red;display:none;font-size:14px">该手机号码未被注册</span>
  			</dl>
  			<dl>
  				<dt>短信验证：</dt>
  				<dd>
  					<input type="text" name="message" id="message" onblur="checkyzma()"/>
  					<button type="button" name="getyz" id="getyz" onclick="getyzma(this)">获取验证码</button>
  				</dd>
  				<span id="yzspan" style="margin-left:110px;color:red;display:none;font-size:14px">验证码错误</span>
  				<div class="clears"></div>
  		    </dl>
  		    	<div class="subtijiao"> 
  		    		<input type="button" value="提交" onclick="checkall()"/>
				</div>
   		</form>
   	</div>
 </div>
</body>
</html>