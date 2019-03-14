<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>css设计漂亮的搜索框-jq22.com</title>
<script src="http://libs.baidu.com/jquery/1.11.3/jquery.min.js"></script>
<style>
* {
	box-sizing:border-box;
}
body {
	margin:0;
	padding:0;
	background-image:url(ydrzimages/p3.jpg);
	font-weight:500;
	font-family:"Microsoft YaHei","宋体","Segoe UI","Lucida Grande",Helvetica,Arial,sans-serif,FreeSans,Arimo;
}
#container {
	width:500px;
	height:820px;
	margin:0 auto;
}
div.search {
	padding:10px 0;
}
form {
	position:relative;
	width:300px;
	margin:0 auto;
}
input,button {
	border:none;
	outline:none;
}
input {
	width:100%;
	height:42px;
	padding-left:13px;
}
button {
	height:42px;
	width:42px;
	cursor:pointer;
	position:absolute;
}
/*搜索框6*/

/*搜索框7*/
      
.bar7 form {
	height:42px;
}
.bar7 input {
	width:250px;
	border-radius:42px;
	border:2px solid #324B4E;
	background:#F9F0DA;
	transition:.3s linear;
	float:right;
}
.bar7 input:focus {
	width:300px;
}
.bar7 button {
	background:none;
	top:-2px;
	right:20px;
}
.bar7 button:before {
	content:"Search";
	font-family:FontAwesome;
	color:#324b4e;
}
/*搜索框8*/
       

</style>
</head>
<body>
<div id="container">
    

    <div class="search bar7">
        <form>
            <input type="text" placeholder="请输入房号" name="crid">
            <button type="submit"></button>
        </form>
    </div>

    
</div>

<script>

</script>

</body>
</html>
