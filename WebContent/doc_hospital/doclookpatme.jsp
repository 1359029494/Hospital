<%@page import="java.util.List"%>
<%@page import="com.hospital.dao.OrdersDAO"%>
<%@page import="com.hospital.vo.Orders"%>
<%@page import="com.hospital.vo.Drug"%>
<%@page import="com.hospital.dao.DrugDAO"%>
<%@page import="com.hospital.dao.MedicalRecordDAO"%>
<%@page import="com.hospital.vo.MedicalRecord"%>
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
<link rel="icon" type="image/x-icon" href="admin/images/docico.jpg">    
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>患者病历</title>
<link rel="icon" type="image/x-icon" href="favicon.ico">
<link href="iTunesArtwork@2x.png" sizes="114x114"
	rel="apple-touch-icon-precomposed">
<link type="text/css" rel="stylesheet"
	href="doc_hospital/admin/css/core.css">
<link type="text/css" rel="stylesheet"
	href="doc_hospital/admin/css/icon.css">
<link type="text/css" rel="stylesheet"
	href="doc_hospital/admin/css/home.css">
<link type="text/css" rel="stylesheet"
	href="doc_hospital/admin/css/liu.css">
<link rel="icon" type="image/x-icon" href="doc_hospital/admin/images/docico.jpg">
<script type="text/javascript" src="doc_hospital/admin/js/jquery-1.5.2.min.js"></script>

</head>
<body>
	<!-- head YDC begin -->
	<header class="ydc-header">
		<div class="ydc-entered">
			<div class="ydc-header-content ydc-flex">
				<div class="ydc-column">
					<a href="docindex" class="ydc-column-ydc-logo"> <img
						src="doc_hospital/admin/images/icon/ydc-logo.png" title=""
						about="" alt="">
					</a>
				</div>
				<div class="ydc-column">
					<div class="ydc-column-user">
						<div class="ydc-user-photo"></div>
						<%
							//获取当前查看病历的医生信息
							HttpSession session1 = request.getSession();
							Doctor d = (Doctor) session1.getAttribute("doctor");
						%>
						<div class="ydc-user-info">
							<div class="ydc-user-info-name">
								<a href="javascript:;"><c:out value="${doctor.docname }"></c:out></a>
							</div>
							<div class="ydc-user-info-func ydc-flex">
								<span class="ydc-tag">在线</span> <a href="dodocexit">注销</a>
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
		<div class="ydc-content-slide ydc-body" style="margin-right: 90px;">
			<div class="ydc-flex">
				<!-- left begin -->

				<div class="ydc-column ydc-column-8">
					<div class="ydc-release-content">
						<div class="ydc-tabPanel ydc-tabPanel-release">
							<div class="ydc-release-tab-head">
								<ul>
									<li class="hit">患者病历</li>
								</ul>
							</div>
							<div class="ydc-panes">

								<%
									//接收后台传来的病历信息，以及meid
									MedicalRecord m=new MedicalRecord();
									m=(MedicalRecord) request.getAttribute("merecord");
									int patid=m.getPatid();
									//根据meid获取病历上病人的信息
									Patient p=new Patient();
									PatientDAO patdao=new PatientDAO();
									p=patdao.findById(patid);
									session.setAttribute("meid", m.getMeid()); 
								
								%>
								<form action="../dodocmedicalrecord" method="post">
									<div class="ydc-pane" style="display: block;">
										<div class="ydc-pane" style="display: block;">
											<div class="bl_bigborder">
												<div class="bl_boxborder">
													<span class="bl_title">门诊病历</span>
													<p class="bl_date">
														就诊日期: <input name="time" type="text" style="border: none;"
															value="<c:out value="${merecord.medate }"></c:out>">
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
														<span class="bl_patient_name"> 患者姓名: <span>
																<input name="patname" style="border: none; width: 90px;"
																value="<%=p.getPatname() %>">
														</span>
															&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
															患者性别: <!--
                                                            	作者：hao3073liu@163.com
                                                            	时间：2018-12-04
                                                            	描述：直接从数据库获取 所以不再使用单选框
                                                            --> <span>
																<%
	                                        					String sex;
	                                        					int temp=p.getPatsex();
	                                        					if(temp==1){
	                                        						sex="男";
	                                        					}else{
	                                        						sex="女";
	                                        					}
                                        					%> <input name="patsex"
																style="border: none; width: 50px;" value="<%=sex %>">
														</span>
														</span> <span class="bl_patient_name"> 患者年龄: <span>
																<input name="patage" style="border: none; width: 50px;"
																value="<%=m.getMepatage() %>">
														</span>
														</span><br />
														<hr class="bl_fengehr" />
														<span class="bl_patient_name"> 家庭住址: <span>
																<input name="pataddress"
																style="border: none; width: 250px;"
																value="<%=p.getPataddress() %>">
														</span> <input name="patid" style="border: none; width: 0px;"
															value=""> <span class="bl_patient_name">
																联系方式: <span> <input name="patphone"
																	style="border: none; width: 100px;"
																	value="<%=p.getPatphonenumber() %>">
															</span>
														</span>
													</div>

													<hr class="bl_fengehr" />
													<div>
														<span class="bl_patient_xinxi"> 患者症状: <textarea
																class="bl_patient_zhenzhuang" name="patsymptomg"
																style="border: none;"><c:out value="${merecord.patsymptom }"></c:out></textarea>
															<hr class="bl_fengehr" /> <span class="bl_patient_xinxi">
																医生诊断: <textarea class="bl_patient_zhenzhuang"
																	name="docdiagnosis" style="border: none;"><c:out value="${merecord.docdiagnosis }"></c:out></textarea>
																<hr class="bl_fengehr" /> <span class="bl_doctor">
																	<!--
                                                       	作者：hao3073liu@163.com
                                                       	时间：2018-12-04
                                                       	描述：医生信息自动获取该账号下的医生，不再由医生自己填写
                                                       --> 接诊医生: <span
																	class="bl_doctor_name"> <input name="docname"
																		style="border: none; width: 100px;"
																		value="<c:out value="${merecord.medocname }"></c:out>">
																</span>
															</span>
													</div>
												</div>
												<hr class="bl_fengehr" />
												
											</div>
											<div class="bl_caseborder">
												<a href="doshowdocme" class="bl_save"> 返回 </a>
											</div>
											<div class="bl_caseborder">
												<a href="dooutputme" class="bl_save"> 导出病历 </a>
												
											</div>
										</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
</body>
</html>