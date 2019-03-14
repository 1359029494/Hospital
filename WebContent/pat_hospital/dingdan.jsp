<%@page import="com.hospital.vo.Orders"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>订单</title>
<style type="text/css">
.rc_listbox {
	margin-left: 0%;
}

a {
	text-decoration: none;
}

body {
	background-size: 100%;
	background-size: cover;
}

table {
	width: 100%;
	border-radius: 4px;
	margin-top: 60px;
	text-align: center;
}

table th{
	background: #eee;
    height: 44px;
    line-height: 44px;
    border-bottom: 1px solid #ddd;
}
table tr td{
	height: 44px;
    line-height: 44px;
    border-bottom: 1px solid #ddd;
}

a {
	text-decoration: none;
	cursor: pointer;
	color: blue;
}
.aspan{
	margin-left: 30px;
	margin-right: 30px;
	padding: 6px 20px;
	padding-left:28px;
	background-color: #00aef0;
}
.nochane{
	margin-left: 30px;
	margin-right: 30px;
	padding: 6px 20px;
	padding-left:28px;
	background-color: #d8d8d8;
	color: #FFFFFF;
}
li{
	list-style: none;
}
.zhifu_a{
	text-decoration: none;
	cursor: pointer;
}
</style>
<script type="text/javascript">
			function do_dingdanjump(){
				var page = document.getElementById("page").value;
				var span = document.getElementById("span");
				if(page.length==0){
					
				}else if(page <1 || page > span.innerText){
					alert("超出查询范围，请重新输入！");
					document.getElementById("page").value="";
				}else{
					var a_one = document.getElementById("a_one");
					a_one.href="preshowpatoldorder?pagenow="+page;
				}
			};
			function r_changed(){
				var chg_page = document.getElementById("chg_page").value;
				return chg_page;
			};
			function do_changejump(){
				var page = r_changed() ;
				var span = document.getElementById("span");
				var a_two = document.getElementById("a_two");
				a_two.href="preshowpatoldorder?pagenow="+page;
			};
			function tiaozhuan(){
				window.open("dindanzhifu.jsp","_parent");
			}
		</script>
	</head>
	
	<body>
		<div class="rc_listbox">
			<table  cellpadding="0" cellspacing="0" width="800px" align="center">
				<tr >
					<th>姓名</th>
					<th>就诊时间</th>
					<th>是否付款</th>
					<th>金额</th>
				</tr>
				<!--数据库查询数据-->
				<c:forEach items="${pat_list }" var="dingdan1">
					<tr>
						<td><c:out value="${user_pat.patname }"></c:out></td>
						<td><c:out value="${dingdan1.ordate}"></c:out></td>
						<c:choose>
							<c:when test="${dingdan1.orstate==0 }">
								<td>
									<a class="zhifu_a" onclick="tiaozhuan()" href="dodingdanzhifu?orprice=${dingdan1.orprice }&orid=${dingdan1.ornumber }" target="_blank">去支付</a>
								</td>
						</c:when>
						<c:otherwise>
							<td>
								<a class="zhifu_a" style="color: #000000" href="#">已支付</a>
							</td>
						</c:otherwise>
						</c:choose>
						
						<td> <c:out value="${dingdan1.orprice }"></c:out></td>
					</tr>
					
				</c:forEach>
			</table>
				<ul style="margin-top: 50px">
					<li>
						<c:if test="${pagenow==1 }">
						<span class="nochane" >
							<a style="color: #000000;">首页</a>
						</span>
						<span class="nochane">
							<a style="color: #000000;">上一页</a>
						</span>	
						</c:if>
						<c:if test="${pagenow!=1 }">
						<span class="aspan">
							<a style="color: #FFFFFF;" href="preshowpatoldorder?pagenow=1">首页</a> 
						</span>
						<span class="aspan">
							<a style="color: #FFFFFF;" href="preshowpatoldorder?pagenow=${pagenow-1 }">上一页</a>
						</span>
						</c:if>
						<c:if test="${pagenow==total }">
						<span class="nochane">
							<a style="color: #000000;">下一页</a>
						</span>
						<span class="nochane">
							<a style="color: #000000;">尾页</a>
						</span>
						</c:if>
						<c:if test="${pagenow!=total }">
						<span class="aspan">								
							<a style="color: #FFFFFF;" href="preshowpatoldorder?pagenow=${pagenow+1 }">下一页</a> 
						</span>
						<span class="aspan">
							<a style="color: #FFFFFF;" href="preshowpatoldorder?pagenow=${total }">尾页</a>
						</span>
						</c:if>
						<span style="margin-left: 10px">
							当前<c:out value="${pagenow}"></c:out>/<span id="span"><c:out value="${total }"></c:out></span>页
						</span>
						<select onchange="r_changed()" id="chg_page">
							<c:forEach begin="1" end="${total }" step="1" var="d">
								<c:if test="${pagenow==d }">
									<option value="${d }" selected>第<c:out value="${d}"></c:out>页</option>
								</c:if>
								<c:if test="${pagenow!=d }">					
									<option value="${d }">第<c:out value="${d }"></c:out>页</option>
								</c:if>												
							</c:forEach>
						</select>
						<span class="aspan" style="margin-left: 0px">
							<a id="a_two" onclick="do_changejump()" style="color: #ffffff;">确认</a>
						</span>
					</li>
				</ul>
		</div>
	</body>
</html>