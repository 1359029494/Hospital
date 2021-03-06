package com.hospital.doctor_action;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.hospital.dao.DrugDAO;
import com.hospital.dao.MedicalRecordDAO;
import com.hospital.dao.OrdersDAO;
import com.hospital.dao.RegisterDAO;
import com.hospital.vo.Drug;
import com.hospital.vo.MedicalRecord;
import com.hospital.vo.Orders;
import com.hospital.vo.Register;

/**
 * Servlet implementation class DoDocMedicalRecord
 */
public class DoDocMedicalRecord extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DoDocMedicalRecord() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		System.out.println("domocmediaclrecord接收到数据了！");
		
		HttpSession session=request.getSession();
		
		//添加病历表
		MedicalRecord m=new MedicalRecord();
		MedicalRecordDAO medao=new MedicalRecordDAO();
		String strdate=request.getParameter("time");
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
		try {
			Date date=sdf.parse(strdate);
			java.sql.Date sdate=new java.sql.Date(date.getTime());
			m.setMedate(sdate);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		String patid=request.getParameter("patid");
		System.out.println(patid);
		m.setPatid(Integer.parseInt(patid));
		m.setMepatage(Integer.parseInt(request.getParameter("patage")));
		m.setPatsymptom(request.getParameter("patsymptomg"));
		m.setDocdiagnosis(request.getParameter("docdiagnosis"));
		m.setMedocname(request.getParameter("docname"));
		SimpleDateFormat sdf2=new SimpleDateFormat("yyyyMMddHHMM");
		//通过获取当前时间来获取订单编号
//		String ornumber=sdf2.format(new Date());
		String ornumber=(String)session.getAttribute("ordernumber");
		System.out.println("要插入病历的订单编号为："+ornumber.toString());
		m.setDruglist(ornumber);
		
		try {
			medao.save(m);
		} catch (Exception e) {
			e.printStackTrace();
		}
		System.out.println("病历添加成功");

		
		//从挂号表里删除已经接诊完的患者挂号
		Register r=new Register();
		RegisterDAO regdao=new RegisterDAO();
		int regid=Integer.parseInt(request.getParameter("regid"));
		r.setRegid(regid);
		try {
			regdao.delete(r);
		} catch (Exception e) {
			e.printStackTrace();
		}
		System.out.println("挂号信息已删除！");
		//session.removeAttribute("ordernumber");

		
		response.sendRedirect("docindex");
	}

}
