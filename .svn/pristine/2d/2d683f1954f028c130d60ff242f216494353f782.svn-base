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
<script type="text/javascript">
		function changepass(){
		var agin = document.getElementById("aginpass");
		var aginpass = agin.value;
		var news = document.getElementById("newpass");
		var newpass = news.value;
		var span = document.getElementById("span");
		var checkspan = document.getElementById("checkspan");
		var a = document.getElementById("a");
		if(newpass==""){
			span.style.display="inline-block";
			return;
		}
		else if(aginpass==""){
			checkspan.style.display="inline-block";
			return;
		}
		else if(aginpass!=newpass){
			agin.innerHTML=" ";
			news.innerHTML=" ";
			return;
		}
		else{
			span.style.display="none";
			checkspan.style.display="none";
		}
		$.post("changepassforself",{'password':newpass},function(data){
			if(data==1){
				var a = document.getElementById("a");
				a.href="dozhuxiao";
			}
		},"json");
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
		function checknull(){
			var pass = document.getElementById("newpass");
			var passvalue = pass.value;
			var len = passvalue.length;
			var span = document.getElementById("span");
			if(passvalue==""){
				span.style.display="inline-block";
			}
			else if(len<4&&passvalue!=null){
				span.innerHTML="密码长度过短";
				span.style.display="inline-block";
			}
			else if(len>16){
				span.innerHTML="密码长度过长";
				span.style.display="inline-block";
			}
			else{
				span.style.display="none";
			}
		};
	</script>
		
</head>

<body style="background-color:#FFFFFF">
<section class='container'>
<!-- / Form -->
<form>
<!-- / Header -->

<!-- / Fieldset Alpha -->
<fieldset class='alpha'>
<legend>修改密码</legend>
<div class='frow'>
<input class='item' id="newpass" placeholder='新密码 <4~16位的数字，字母，符号的组合 >' type='password' onblur="checknull()"/>
<span id="span" style="margin-left:0px;color:red;display:none;font-size:14px">密码不能为空</span>
</div> 
<div class='frow'>
<input class='item' id="aginpass" placeholder='确认密码' type='password' onmouseout="checkpass()"/>
<span id="checkspan" style="margin-left:0px;color:red;display:none;font-size:14px">密码不一致</span>
</div>
<div class='frow'>
<a class='change' style="cursor:pointer;background-color:#00AEF0" id = "a" target="_parent" onclick="changepass()">确认修改</a>
</div>
</fieldset>
<!-- / Fieldset Beta -->
</body>

</html>