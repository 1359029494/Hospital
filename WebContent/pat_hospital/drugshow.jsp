<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>药品展示</title>
<style type="text/css">
	.show_drug_div{
		float: left;
		height: 700px;
		width: 40%;
		background-color: rgba(0,0,0,0.0);
		margin-left: 30%;
		box-shadow: black 0 0 5px ;
		border-radius: 10px;
	}
	.show_drug_div_one{
		height: 70%;
		width: 100%;
	}
	.show_drug_div_two{
		height:30%;
		width: 100%;
		text-align: center;
	}
	body{
		background-color: white;
	}
	
</style>
</head>
<body>
	<div class="show_drug_div">
		<div class="show_drug_div_one">
			<img src="<%=request.getContextPath() %>/hos_admin/admin/${drug_show_message.drphoto }" width="100%" height="100%"/>
		</div>
		<hr>
		<div class="show_drug_div_two" >
			<table border="" cellspacing="" cellpadding="" style="border:transparent;width: 100%" >
				<tr style="border:transparent;">
					<td width="30%" style="border:transparent;">药品名称:</td>
					<td width="70%" style="text-align:left;border:transparent; " ><c:out value="${drug_show_message.drname }"></c:out></td>
				</tr>
				<tr>
					<td width="30%" style="border:transparent;">药品价格:</td>
					<td width="70%" style="text-align:left;border:transparent; "><c:out value="${drug_show_message.drprice }"></c:out> </td>
				</tr>
				<tr>
					<td width="30%" style="border:transparent;">药品描述:</td>
					<td width="70%" style="text-align:left;border:transparent; "><c:out value="${drug_show_message.dreffect }"></c:out> </td>
				</tr>
			</table>
		</div>
	
	</div>
</body>
</html>