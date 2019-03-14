<%@page import="com.hospital.vo.MedicalRecord"%>
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
<title>病例</title>
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

a {
	text-decoration: none;
	cursor: pointer;
	color: blue;
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
</style>
<script type="text/javascript" src="pat_hospital/js/jquery-3.2.1.js"></script>
<script type="text/javascript">
			function do_rejump(){
				var page = document.getElementById("page").value;
				var span = document.getElementById("span");
				if(page.length==0){
					
				}else if(page <1 || page > span.innerText){
					alert("超出查询范围，请重新输入");
					document.getElementById("page").value="";
				}else{
					var a_one = document.getElementById("a_one");
					a_one.href="findpat_oldrecord?pagenow="+page;
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
				a_two.href="findpat_oldrecord?pagenow="+page;
			};
		</script>
	</head>
<body>

	<div class="rc_listbox">
	<div class="ydc-release-tab-head">
		<ul>
			<li class="hit" style="color:blue">过往病历</li>
		</ul>
	</div>
   </div >
	<table cellpadding="0" cellspacing="0" width="800px"
		align="center" style="margin-top:10px">
		<tr>
			<th>姓名</th>
			<th>接诊医生</th>
			<th>就诊时间</th>
			<th>查看病历</th>
		</tr>
		
			<!--数据库查询数据-->
			<c:forEach items="${record_list}" var="record">
				<tr>
					<td><c:out value="${user_pat.patname }"></c:out></td>
					<td><c:out value="${record.medocname}"></c:out></td>
					<td><c:out value="${record.medate}"></c:out></td>
					<td>
					<span style="padding: 6px 20px; background-color: #00aef0">
						<a href="dolookmerecord?meid=${record.meid}" style="color:#FFFFFF;">查看病历</a>
					</span>	
					</td>
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
					<a style="color: #FFFFFF;" href="findpat_oldrecord?pagenow=1">首页</a> 
				</span>
					
				<span class="aspan">
					<a style="color: #FFFFFF;" href="findpat_oldrecord?pagenow=${pagenow-1 }">上一页</a>
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
					<a style="color: #FFFFFF;" href="findpat_oldrecord?pagenow=${pagenow+1 }">下一页</a>
				</span> 
				<span class="aspan">
					<a style="color: #FFFFFF;" href="findpat_oldrecord?pagenow=${total }">尾页</a>
				</span>
				</c:if>
					当前<c:out value="${pagenow}"></c:out>/<span id="span"><c:out value="${total }"></c:out></span>页
				<select onchange="r_changed()" id="chg_page">
					<c:forEach begin="1" end="${total }" step="1" var="d">					
						<c:if test="${pagenow==d }">
								<option value="${d }" selected>第<c:out value="${d}"></c:out></option>页</option>
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
	</body>
</html>
