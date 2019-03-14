<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport"
	content="width=device-width,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
<title>响应式布局</title>
<link type="text/css" rel="stylesheet" href="css/reset.css" />
<link type="text/css" rel="stylesheet" href="css/1024_768.css" />
<link type="text/css" rel="stylesheet"
	media="screen and (min-width:861px) and (max-width:960px)"
	href="css/pad_heng.css" />
<link type="text/css" rel="stylesheet"
	media="screen and (min-width:601px) and (max-width:860px)"
	href="css/pad.css" />
<link type="text/css" rel="stylesheet"
	media="screen and (min-width:481px) and (max-width:600px)"
	href="css/tel_heng.css" />
<link type="text/css" rel="stylesheet"
	media="screen and (max-width:480px)" href="css/tel.css" />
<script type="text/javascript" src="js/jquery-3.2.1.js"></script>
<script type="text/javascript" src="js/keshidoctor.js"></script>
<%
	String a = request.getParameter("keshi");
	request.setAttribute("keshi", a);
%>
<script type="text/javascript">
	var pagenow = 1;
	var pagecount = 0;
	function show() {
		var url = window.location.host;
		var frist = document.getElementById("fristpage");
		var old = document.getElementById("oldpage");
		var next = document.getElementById("nextpage");
		var more = document.getElementById("morepage");
		//查询该科室下的所有医生的总数
		$.get("../../dofinddoctornumber",{keshiname:"${keshi}"},function(data){
			var count = document.getElementById("wk_greatpage");
			if(data/2 == parseInt(data/2)){
				count.innerHTML=parseInt(data/2);
				pagecount = parseInt(data/2);
			}else{
				count.innerHTML=parseInt(data/2)+1;
				pagecount = parseInt(data/2)+1;
			}
		});
		//医生查询
		$.get("../../doshowkeshidoctor",{keshiname:"${keshi}"},function(data){
			var len = data.length;
			var zhanshi = document.getElementById("zhanshi");
			for(i=0;i<len;i++){
				var li = document.createElement("li");
				var dl = document.createElement("dl");
				var dd = document.createElement("dd");
				var dt = document.createElement("dt");
				var img = document.createElement("img");
				var span = document.createElement("span");
				var br1 = document.createElement("br");
				var br2 = document.createElement("br");
				var br3 = document.createElement("br");
				var a = document.createElement("a");
				var md = data[i];
				img.src="http://"+url+"/hospital/hos_admin/admin/"+md.docphoto;
				img.className="";
				img.style.width="185px";
				img.style.height="150px";
				li.style.marginRight="100px";
				span.className="book_title";
				span.style.color="#000000";
				span.style.fontSize="20px";
				span.style.marginLeft="120px";
				span.innerHTML=md.docname;
				a.className="book_buy";
				a.href="../../preconfirmguahao?docid="+md.docid;
				a.innerHTML="选择";
				a.style.marginLeft="120px";
				zhanshi.appendChild(li);
				li.appendChild(dl);
				dl.appendChild(dd);
				dl.appendChild(dt);
				dd.appendChild(img);
				dt.appendChild(span);
				dt.appendChild(br1);
				dt.appendChild(br2);
				dt.appendChild(br3);
				dt.appendChild(a);
				var now = document.getElementById("wk_pagenow");
				now.innerHTML=pagenow;
				if(pagenow==1){
					frist.className="wk_nopage";
					old.className="wk_nopage";
				}
				if(pagenow==pagecount){
					next.className="wk_nopage";
					more.className="wk_nopage";
				}
			}
		},"json");	
	}
</script>
<style type="text/css">
a {
	text-decoration: none;
}

.book_buy {
	background-color: #00AEF0;
	cursor: pointer;
}

.wk_fristpage {
	margin-left: 30px;
	font-size: 20px;
	padding: 5px 35px;
	background-color: #00AEF0;
	color: #ffffff;
	cursor: pointer;
}

.wk_fenoage {
	margin-top: 80px;
	padding: 20px 10px;
}

.wk_pagecount {
	font-size: 20px;
}

.wk_nopage {
	margin-left: 30px;
	font-size: 20px;
	padding: 5px 35px;
	background-color: #aaaaaa;
	color: #ffffff;
	cursor: default;
}
</style>
</head>
<body onload="show()">
	<div class="content">
		<ul id="zhanshi">

		</ul>
	</div>
	<div class="content wk_fenoage">
		<span class="wk_pagecount">第<span id="wk_pagenow">1</span>/<span
			id="wk_greatpage">2</span>页
		</span> <a class="wk_fristpage" id="fristpage" onclick="fristpage()">首页</a>
		<a class="wk_fristpage" id="oldpage" onclick="oldpage()">上一页</a> <a
			class="wk_fristpage" id="nextpage" onclick="nextpage()">下一页</a> <a
			class="wk_fristpage" id="morepage" onclick="morepage()">尾页</a>
	</div>
	<span id="title" style="color: #ffffff;">${keshi }</span>
</body>
</html>