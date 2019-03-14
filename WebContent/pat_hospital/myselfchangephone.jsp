<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">

<title>CSS3个人资料填写表单 - 站长素材</title>
<% 
	String path = request.getContextPath(); String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%> 
<base href="<%=basePath%>"> 
<link href="pat_hospital/css/styleforupdate.css" rel="stylesheet" type="text/css"> 
<script type="text/javascript" src="pat_hospital/js/jquery.min.js">
</script>
<script type="text/javascript" src="pat_hospital/js/indexforupdate.js"></script>
<link href="pat_hospital/css/styleforupdate.css" rel="stylesheet" type="text/css"> 
<script type="text/javascript" src="pat_hospital/js/jquery-3.2.1.js">
</script>
<script type="text/javascript" src="pat_hospital/js/indexforupdate.js"></script>
<script type="text/javascript">
	//生成验证码随机数
	function getIdCode(length) {
		if (length == undefined) {
			length = 4;
		}
		var pow = Math.pow(10, length);
		var code = Math.floor(Math.random() * pow + pow / 10).toString();
		return code.substr(0, length);
	};
//获取验证码
	var code = getIdCode(6);
	function getyzma(obj) {
		//获取用户输入的手机号获取验证码
		var phonenumber = document.getElementById("phonenum").value;
		settime(obj);
			$.post("doduanxinyanzheng", {
				'phone' : phonenumber,
				'code' : code
			}, function(data) {
	
			}, "json");
	};
	//判断验证码是否正确
	function checkyzma(){
		var yzma = document.getElementById("message").value;
		if(code!=yzma){
			var yzspan = document.getElementById("yzspan");
			yzspan.style.display="inline-block";
		}
		else{
			var yzspan = document.getElementById("yzspan");
			yzspan.style.display="none";
		}
	};
	//更改用户注册的手机号
	function changephone(){
			var newphone = document.getElementById("phonenum").value;
			var message = document.getElementById("message").value;
			var phonespan = document.getElementById("phonespan");
			var yzspan = document.getElementById("yzspan");
			if(newphone==""){
				phonespan.style.display="inline-block";
				return;
			}
			else if(message==""){
				yzspan.style.display="inline-block";
				return;
			}
			else if(code!=message){
				return;
			}
			else if($("#phonespan").is(":visible")||$("#yzspan").is(':visible')){
				return;
				
			}
			else{
				phonespan.style.display="none";
				yzspan.style.display="none";
			}
			$.post("changeuserphone",{'phone':newphone},function(data){
				if(data==1){
					var a = document.getElementById("a");
					a.href="dozhuxiao";
				}
			},"json");
		};
		//验证是否为有效手机号
		function isPoneAvailable(){
			var newphone = document.getElementById("phonenum").value;
			var phonespan = document.getElementById("phonespan");
            var myreg=/^[1][3,4,5,7,8][0-9]{9}$/;
            if (!myreg.test(newphone)){
            	phonespan.style.display="inline-block";
                return false;
            } else {
            	phonespan.style.display="none";
                return true;
            }
        };
      //计时器
		var countdown = 60;

		function settime(obj) {

			if(countdown == 0) {
				obj.removeAttribute("disabled");
				obj.value = "重新发送";
				countdown = 60;
				return;
			} else {
				obj.setAttribute("disabled", true);
				obj.value = countdown;
				countdown--;
			}
			setTimeout(function() {
				settime(obj)
			}, 1000)
		};

</script>
<style>
	.change{
		  display: block;
		  width: 100%;
		  height: 50px;
		  padding: 0;
		  background: #31dddb;
		  line-height: 50px;
		  text-align: center;
		  text-decoration: none;
		  text-shadow: 0px 1px 2px rgba(0, 0, 0, 0.3);
		  font-size: 1.2em;
		  font-family: "Helvetica Neue", sans-serif;
		  font-weight: 400;
		  color: #fff;
		  border: 1px solid #27c1bf;
		  border-radius: 4px;
		  box-shadow: 0 0 0 transparent;
  }
</style>
</head>

<body style="background-color:#FFFFFF">
<section class='container'>
<!-- / Form -->
<form  action="../changeuserphone" method="post" id='myform'>
<!-- / Header -->

<!-- / Fieldset Alpha -->
<fieldset class='alpha' width="800px">
<legend>修改手机号</legend>
<div class='frow'>
<input class='item' id="phonenum" placeholder='手机号' type='text' onblur="isPoneAvailable()"/>
<span id="phonespan" style="margin-left:0px;color:red;display:none;font-size:14px">请输入正确的手机号</span>
</div>
<div class='frow' >
<input class='item' id="message" placeholder='验证码' type='text' onmouseout="checkyzma()" style="width:200px;">
<input class='yzma' id='yzma' value="获取验证码" type="button" style="width:80px;cursor:pointer;background-color:#00AEF0" onclick="getyzma(this)"/>
<span id="yzspan" style="margin-left:15px;color:red;display:none;font-size:14px;margin-top:15px">验证码错误</span>
</div>
<div class='frow'>
   <a class='change' style="cursor:pointer;background-color:#00AEF0" id = "a" target="_parent" onclick="changephone()">确认修改</a>
</div>
</fieldset>
<!-- / Fieldset Beta -->

</body>

</html>