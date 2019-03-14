<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
	<title>确认挂号</title>
	<script type="text/javascript" src="js/jquery-3.2.1.js"></script>
	<link type="text/css" rel="stylesheet" href="pat_hospital/doctorpage/css/reset.css" />
<style type="text/css">
	.cgh_box{
	}
	a{
		text-decoration: none;
	}
	.book_buy{
		
		background-color: #00AEF0;
		cursor:pointer;
	}
	.cgh_li{
		margin-top: 20px;
	}
	.cgh_dt{
	    height: auto;
	    margin-top: 20px;
    }    
    .cgh_dd{
    	width: 30%;
	    height: 154px;
	    display: inline;
		margin-left: 20%;	    
    }
    .cgh_p{
    	color: rgb(0, 0, 0); 
    	font-size: 20px;
    	margin-top:50px;
    	margin-left: 15%;
    }
    .cgh_input{
    	cursor: pointer;  
    	background-color: #00AEF0;
    	color: white;
    	padding:16px 80px;
    	font-size: 16px;
    	border: none;
    	margin-left: 25%;
    }
    .cgh_input:hover{
    	background-color: #057fad;
    }
    .chongfu{
    	/*margin-left:20%;*/ 
    	font-size: 25px;
    }
    .cgh_tishibox{
    	margin-left: 40%;
    	margin-top: 10%;
    }
    .cgh_return{
    	margin-top: 10%;
    }
</style>
</head>
<body>
<div class="cgh_tishibox">
	<div class="cgh_tishismallbox">
		<span class="chongfu">
			<font face="楷体">付费失败</font>
			<br/>
		</span>
	</div>
</div>
	<div class="cgh_return">
		<a class="cgh_input" href="doguahao?docid=${doctor.docid }" target="_parent">去付费</a>
	</div>
	<div class="cgh_return">
		<a class="cgh_input" href="index.jsp" target="_parent">返回首页</a>
	</div>
</body>
</html>