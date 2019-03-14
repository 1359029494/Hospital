package com.hospital.doctor_action;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;
import com.hospital.dao.DoctorDAO;
import com.hospital.dao.MailDAO;
import com.hospital.dao.MedicalRecordDAO;
import com.hospital.vo.Doctor;
import com.hospital.vo.Mail;
import com.hospital.vo.MedicalRecord;

import net.sf.json.JSONArray;

/**
 * Servlet implementation class DoShowDocMailAction
 */
public class DoShowDocMailAction extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DoShowDocMailAction() {
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
		System.out.println("doshowdocmail接收到数据了！");
		
		//根据前台选中的页面更改要显示第几页
		int pagenow=1;//默认显示第一页
		String page=request.getParameter("pagenow");
		if(page != null){
			pagenow=new Integer(page);
		}

		Doctor d=new Doctor();
		DoctorDAO docdao=new DoctorDAO();
		Mail m=new Mail();
		MailDAO madao=new MailDAO();
		
		HttpSession session=request.getSession();
		d=(Doctor)session.getAttribute("doctor");
		System.out.println(d.getDocname());
		
		int count=0;//总条数
		try {//获取该医生发送的信息总条数
			count=madao.getDocTotal(d.getDocid());
		} catch (Exception e) {
			e.printStackTrace();
		}
		int total=(count-1)/2+1;//总页数
		int pagesize=2;//每页展示两条信息
		List<Mail> list=null;
		try {//获取该医生发送的信息
			list=madao.DocfindByPage(d.getDocid(), pagenow, pagesize);
		} catch (Exception e) {
			e.printStackTrace();
		}
		request.setAttribute("mail", list);
		
		System.out.println("当前页码数"+pagenow);
		request.setAttribute("total", total);
		request.setAttribute("pagenow", pagenow);
		request.setAttribute("count", count);
		
		request.getRequestDispatcher("doc_hospital/mailforadm.jsp").forward(request, response);
	}

}
