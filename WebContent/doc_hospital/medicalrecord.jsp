<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.hospital.dao.RegisterDAO"%>
<%@page import="com.hospital.vo.Register"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="com.hospital.dao.DoctorDAO"%>
<%@page import="com.hospital.vo.Doctor"%>
<%@page import="com.hospital.dao.PatientDAO"%>
<%@page import="com.hospital.vo.Patient"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>    
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8">
	<title>发布文章-- 媒体开放平台 一点车 - 让您多懂一点车</title>
	<link rel="icon" type="image/x-icon" href="favicon.ico">
	<link href="iTunesArtwork@2x.png" sizes="114x114"
		rel="apple-touch-icon-precomposed">
	<link type="text/css" rel="stylesheet" href="admin/css/core.css">
	<link type="text/css" rel="stylesheet" href="admin/css/icon.css">
	<link type="text/css" rel="stylesheet" href="admin/css/home.css">
	<link type="text/css" rel="stylesheet" href="admin/css/liu.css">
	<link rel="icon" type="image/x-icon" href="admin/images/docico.jpg">	
	<link rel="stylesheet" href="//apps.bdimg.com/libs/jqueryui/1.10.4/css/jquery-ui.min.css">
	<script src="//apps.bdimg.com/libs/jquery/1.10.2/jquery.min.js"></script>
	<script src="//apps.bdimg.com/libs/jqueryui/1.10.4/jquery-ui.min.js"></script>
	  <!--
	  	jquery.ui.core.js
	  	jquery.ui.menu.js
	  	jquery.ui.position.js
	  	jquery.ui.widget.js
	   -->
	<style>
	
	</style>
	<script>
		//接收并自动补全输入搜索框的内容
		$(function() {
			$("#druglist").autocomplete({
				source : "../backdrugdata"
			});
		});
		//获取要添加的药品的信息
		function add() {
			var tb=document.getElementById("td");
			
			var drugname = document.getElementById("druglist").value;
			//alert(drugname);
			
			$.get("/hospital/dodocadddrug", {'drugname' : drugname}, function(data) {
				var arr=eval(data);
				var drug=arr[0];
				//alert(drug.dreffect);
				//判断药品名是否正确
				if(drug.drid == 0){
					alert("请输入正确的药品名！");
					location.reload();
				}else{
					//判断是否重复添加药品
					var name=document.getElementById(drug.drname);
					if(name == null){
						//alert("没有此标签");
						var table=document.getElementById("druglisttable");
						var tr=document.createElement("tr");
						tr.className="drugtr";
						//药品名称
						var td1=document.createElement("td");
							var drugname=document.createElement("input");
							drugname.className="drug_name";//药名统一class为drug_name
							drugname.id=drug.drname;//药品名称id为drname
							drugname.type="text";
							drugname.value=drug.drname;
							drugname.style="border:none;";
							td1.appendChild(drugname);
						//增加按钮	
						var td2=document.createElement("td");
							var b1=document.createElement("input");
							b1.type="button";
							b1.value="+";
							b1.style="border:none;font-size:30px;";
							b1.onclick=function plus(){
								var money=document.getElementById(drug.drname+"money").value;
								var number=document.getElementById(drug.drname+"number").value;
								
								number++;
								document.getElementById(drug.drname+"money").value = drug.drprice*number;
								document.getElementById(drug.drname+"number").value = number;
								
							}
							td2.appendChild(b1);
						//数量
						var td3=document.createElement("td");
							var number=document.createElement("input");
							number.className="drug_number";//数量统一class为drug_name
							number.type="text";
							number.value="1";
							number.id=drug.drname+"number";//数量id为drname+number
							number.style="border:none;width:80px;";
							td3.appendChild(number);
						//减少按钮
						var td4=document.createElement("td");
							var b2=document.createElement("input");
							b2.type="button";
							b2.value="-";
							b2.style="border:none;font-size:30px;";
							b2.onclick=function reduce(){
								var money=document.getElementById(drug.drname+"money").value;
								var number=document.getElementById(drug.drname+"number").value;
								if(number <= 1){
									
								}else{
									number--;
									document.getElementById(drug.drname+"money").value = drug.drprice*number;
									document.getElementById(drug.drname+"number").value = number;
								}
							}
							td4.appendChild(b2);
						//价格
						var td5=document.createElement("td");
							var money=document.createElement("input");
							money.className="drug_price";//价格统一数量为drug_name
							money.type="text";
							money.value=drug.drprice;
							money.id=drug.drname+"money";//价格的id为drname+money
							money.style="border:none;";
							td5.appendChild(money);
						//取消
						var td6=document.createElement("td");
							var b3=document.createElement("input");
							b3.type="button";
							b3.value="取消";
							b3.style="border:none;";
							b3.onclick=function(){
								table.removeChild(tr);
							};
							td6.appendChild(b3);
						
						tr.appendChild(td1);
						tr.appendChild(td2);
						tr.appendChild(td3);
						tr.appendChild(td4);
						tr.appendChild(td5);
						tr.appendChild(td6);
						table.appendChild(tr);
						//alert(drug.dreffect);
					}else{
						alert("请勿重复添加药品！");
					}
				}
				
				
			}, 'json');
			
		}
		
		function submit(){
			//提交病历表单
			//同时提交订单表
			$(".drugtr").each(function(){
				var drugname=$(this).find(".drug_name").val();
				//alert(drugname);
				var drugnumber=$(this).find(".drug_number").val();
				//alert(drugnumber);
				$.get("/hospital/dodocorders",{'drugname':drugname,'drugnumber':drugnumber},function(data){
					 
				},'json');
						
			})
			document.getElementById("meform").submit();
			
		}
	</script>
</head>

<body>
<!-- head YDC begin -->
	<header class="ydc-header">
		<div class="ydc-entered">
			<div class="ydc-header-content ydc-flex">
				<div class="ydc-column">
					<a href="../docindex" class="ydc-column-ydc-logo"> <img
						src="admin/images/icon/ydc-logo.png" title="" about="" alt="">
					</a>
				</div>
				<div class="ydc-column">
					<div class="ydc-column-user">
						<div class="ydc-user-photo">
						</div>
						<%
							HttpSession session2 = request.getSession();
							Doctor d = (Doctor) session2.getAttribute("doctor");
						%>
						<div class="ydc-user-info">
							<div class="ydc-user-info-name">
								<a href="javascript:;"><c:out value="${doctor.docname }"></c:out></a>
							</div>
							<div class="ydc-user-info-func ydc-flex">
								<span class="ydc-tag">在线</span> <a href="../dodocexit">注销</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</header>
	<!-- head YDC end -->

<!-- content YDC begin -->
	<section>
		<div class="ydc-content-slide ydc-body">
			<div class="ydc-flex">
				<!-- left begin -->
				<div class="ydc-column ydc-column-2">
					<div class="ydc-menu">
						<ul>
							<li class="ydc-menu-item"><a href="../docindex"
								class="active"><i class="ydc-icon ydc-icon-home fl"></i>首页</a></li>

							<li class="ydc-menu-item"><span class="ydc-menu-sub-title"><em
									class="imessage"></em>个人信息管理</span>
								<ul>
									<li><a href="docinfo.jsp">管理个人信息</a></li>
								</ul></li>
							<li class="ydc-menu-item"><span class="ydc-menu-sub-title">
									<em class="register"></em>挂号列表管理
							</span>
								<ul>
									<li><a href="../doshowdocregister">查看挂号列表</a></li>
								</ul></li>
							<li class="ydc-menu-item"><span class="ydc-menu-sub-title">
									<em class="me"></em>病历管理
							</span>
								<ul>
									<li><a href="../doshowdocme">查看接诊病历</a></li>
								</ul></li>
							<li class="ydc-menu-item"><span class="ydc-menu-sub-title"><em
									class="messages"></em>消息管理</span>
								<ul>
									<li ><a href="../doshowdocmail">联系管理员</a></li>
								</ul></li>
						</ul>
					</div>
				</div>
				<div class="ydc-column ydc-column-8">
					<div class="ydc-release-content">
						<div class="ydc-tabPanel ydc-tabPanel-release">
							<div class="ydc-release-tab-head">
								<ul>
									<li class="hit">填写病历</li>
								</ul>
							</div>
							<div class="ydc-panes">
							<%
								//获取要处理的挂号信息
								int regid=Integer.parseInt(request.getParameter("regid"));
								Register r=new Register();
								RegisterDAO regdao=new RegisterDAO();
								r=regdao.findById(regid);
							
								//获取要接就诊的患者信息
                             	int patid=Integer.parseInt(request.getParameter("patid"));
								session.setAttribute("orpatid", patid);
								Patient p=new Patient();
								PatientDAO patdao=new PatientDAO();
								p=patdao.findById(patid);
								
								//获取要接诊的医生信息
								int docid=Integer.parseInt(request.getParameter("docid"));
								DoctorDAO docdao=new DoctorDAO();
								d=docdao.findById(docid);
                            %>
                            
                            <form action="../dodocmedicalrecord" method="post" id="meform">
								<div class="ydc-pane" style="display:block;">
								<div class="ydc-pane" style="display: block;">
									<div class="bl_bigborder">
										<div class="bl_boxborder">
											<span class="bl_title">门诊病历</span>
											<p class="bl_date">
												就诊日期:
												<%	
													//获取当前时间并转化为sql
													Date date=new Date();
													java.sql.Date sqldate=new java.sql.Date(date.getTime());
													Date nowdate=sqldate;
													//格式化并输出当前时间
													SimpleDateFormat dateFormat= new SimpleDateFormat("yyyy-MM-dd");
													String nowtime=dateFormat.format(date);
												%>
												<input name="time" type="text" style="border:none;" value="<%=nowtime %>">
												<!--
                                                 	作者：hao3073liu@163.com
                                                 	时间：2018-12-04
                                                 -->
											</p>
											<hr class="bl_fengehr" />
											<div>
													<!--
                                                   	作者：hao3073liu@163.com
                                                   	时间：2018-12-04
                                                   	描述：通过页面加载事件和ajax直接获取数据库中的数据 
                                                   		通过医生点击的学生姓名 直接展示在病历上 
                                                   		减少医生的工作量
                                                   -->
												<span class="bl_patient_name">
													患者姓名:
                                        			<span>
                                        				<input name="patname" style="border:none;width:90px;" value="<%=p.getPatname() %>">
                                        			</span>
                                        			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        			患者性别:
                                                            <!--
                                                            	作者：hao3073liu@163.com
                                                            	时间：2018-12-04
                                                            	描述：直接从数据库获取 所以不再使用单选框
                                                            -->
                                        			<span>
                                        				<%
                                        					String sex;
                                        					int temp=p.getPatsex();
                                        					if(temp==1){
                                        						sex="男";
                                        					}else{
                                        						sex="女";
                                        					}
                                        				%>
                                        				<input name="patsex" style="border:none;width:50px;" value="<%=sex %>">
                                        			</span>
												</span>
												<span class="bl_patient_name">
                                        			患者年龄:
                                        			<span>
                                        				<input name="patage" style="border:none;width:50px;" value="<%=r.getRepatage() %>">
                                        			</span>
												</span><br />
												<hr class="bl_fengehr" />
												<span class="bl_patient_name">
                                        			家庭住址:
                                        			<span>
                                        				<input name="pataddress" style="border:none;width:250px;" value="<%=p.getPataddress() %>">
                                        			</span>
												<input name="patid" style="border:none;width:0px;" value="<%=patid %>">
												<span class="bl_patient_name">
                                        			联系方式:
                                        			<span>
                                        				<input name="patphone" style="border:none;width:100px;" value="<%=p.getPatphonenumber() %>">
                                        			</span>
												</span>
											</div>

											<hr class="bl_fengehr" />
											<div>
												<span class="bl_patient_xinxi">
													患者症状:
													<textarea class="bl_patient_zhenzhuang" name="patsymptomg" style="border:none;"></textarea>
												<hr class="bl_fengehr" />
												<span class="bl_patient_xinxi">
													医生诊断:
													<textarea class="bl_patient_zhenzhuang" name="docdiagnosis"style="border:none;"></textarea>
												<hr class="bl_fengehr" />
												<span class="bl_doctor"> <!--
                                                       	作者：hao3073liu@163.com
                                                       	时间：2018-12-04
                                                       	描述：医生信息自动获取该账号下的医生，不再由医生自己填写
                                                       -->
													接诊医生:
													<span class="bl_doctor_name">
													<input name="docname" style="border:none;width:100px;" value="<%=d.getDocname()%>" readonly="readonly">
													</span>
												</span>
											</div>
										</div>
										<hr class="bl_fengehr" />
										<div class="bl_boxborder" style="height:auto;">
											<div id="drugtable" style="height:auto;overflow:auto">
												<span class="bl_doctor" style="height:auto;">
													药品清单:
													<input name="druglist" id="druglist" class="bl_addyao" />
													
													<a class="bl_findyao" id="adddrug" onclick="add()">添加</a>
													<span id="addtip"></span>
												</span>
												<br /><br />
												<table id="druglisttable" align="left" style="width:80%;font-size:20px;">
													<tr>
														<td>药品名称</td>
														<td>增加</td>
														<td>数量</td>
														<td>减少</td>
														<td>价格</td>
														<td>取消</td>
													</tr>
												</table>
											</div>
											<div></div>
								</form>	
										</div>
									</div>
										<div class="bl_caseborder">
											<input name="regid" value="<%=regid%>" style="border:none;width:0px;">
											<a href="javascript:void(0)" onclick="submit()" class="bl_save">
												提交
											</a>
											
										</div>
									</div>
								
							</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<script>
	
		var form = document.getElementById("meform");
		form.onsubmit = function(){
			alert();
		}
		
	</script>
</body>
</html>