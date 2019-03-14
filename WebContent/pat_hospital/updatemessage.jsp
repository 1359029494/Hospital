<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<head>

<meta charset="UTF-8">

<title>修改个人信息</title>


<% 
	String path = request.getContextPath(); String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%> 
<base href="<%=basePath%>"> 
<link href="pat_hospital/css/styleforupdate.css" rel="stylesheet" type="text/css"> 
<link type="text/css" rel="stylesheet" href="pat_hospital/css/emailAutoComple.css">
<script type="text/javascript" src="pat_hospital/js/jquery.min.js">
</script>
<script type="text/javascript" src="pat_hospital/js/indexforupdate.js"></script>
<script type="text/javascript" src="pat_hospital/js/emailAutoComple.js"></script>
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
  .change{
  	cursor: pointer;
  }
</style>
<script type="text/javascript">
  $(function(){
	  $.AutoComplete("#mail");
  });
</script>
<script type="text/javascript">
	function change_msg(){
		var make = document.getElementById("makeone");
		var name = document.getElementById("name").value;
		var address = document.getElementById("address").value;
		var mail = document.getElementById("mail").value;
		var sname = document.getElementById("sname");
		var saddress = document.getElementById("spanaddress");
		var div = document.getElementById("youxiang");
		if(name==""){
			sname.style.display="block";
			return;
		}
		else if(address==""){
			saddress.style.dispaly="block";
			return;
		}
		else if(mail==""){
			div.style.display="block";
			return;
		}
		else if($("#youxiang").is(":visible")){
			return;	
		}
		else{
			sname.style.display="none";
			saddress.style.dispaly="none";
			div.style.display="none";
		}
		make.href="changepatientmessage?pat_name="+name+"&pat_address="+address+"&pat_mail="+mail;
		
	};
	function ischeckemail() {
		var div = document.getElementById("youxiang");
		var mail = document.getElementById("mail").value;
		if (mail != "") {
			var reg = /^\w+((-\w+)|(\.\w+))*\@[A-Za-z0-9]+((\.|-)[A-Za-z0-9]+)*\.[A-Za-z0-9]+$/;
			isok = reg.test(mail);
			if (!isok) {
				div.style.display="block";
				return false;
			} 
			else {
				div.style.display="none";
			}
		} 
	};
	//判断姓名是否为空
	function checkname(){
		var name = document.getElementById("name").value;
		var sname = document.getElementById("sname");
		if(name==""){
			sname.style.display="block";
		}
		else{
			sname.style.display="none";
		}
	};
	//判断地址是否为空
	function checkaddress(){
		var address = document.getElementById("address").value;
		var saddress= document.getElementById("spanaddress");
		
		if(address==""){
			saddress.style.dispaly="block";
		}
		else{
			saddress.style.dispaly="none";
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
		<legend>修改个人信息</legend>
		<div class='frow'>
			<input class='item' id="name" placeholder='姓名' type='text' onblur="checkname()" value="${pre_pat.patname }">
			<span id="sname" style="color:red;display:none;font-size:14px;margin-top:15px" >姓名不能为空</span>
		</div>
		<div class='frow'>
			<input class='item' id="address" placeholder='住址' type='text' onblur="checkaddress()" value="${pre_pat.pataddress }">
			<span id="spanaddress" style="color:red;display:none;font-size:14px;margin-top:15px" >地址不能为空</span>
		</div>
		<div class='frow'>
			<input class='item' id="mail" placeholder='个人邮箱' type='text' onmouseout="ischeckemail()" value="${pre_pat.patmail }">
			<span id="youxiang" style="color:red;display:none;font-size:14px;margin-top:15px" >邮箱格式错误</span>
		</div>
		<div class='frow'>  
			<a class='change' id="makeone" style="margin-top:15px;background-color:#00AEF0" onclick="change_msg()">修改</a>
		</div>
		<div class='frow' style="float:left;width:150px;margin-top:30px">
			<a class='change' style="background-color:#00AEF0" href='pat_hospital/myselfchangepass.jsp'>修改密码</a>
		</div>
		<div class='frow' style="float:right;width:150px;margin-top:30px">
			<a class='change' style="background-color:#00AEF0" href='pat_hospital/myselfchangephone.jsp'>修改手机号</a>
		</div>
	</fieldset>
</form>
</section>
</body>

</html>