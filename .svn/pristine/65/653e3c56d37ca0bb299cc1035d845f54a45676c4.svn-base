package com.hospital.doctor_action;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.hospital.dao.DoctorDAO;
import com.hospital.dao.MedicalRecordDAO;
import com.hospital.vo.Doctor;
import com.hospital.vo.MedicalRecord;

/**
 * Servlet implementation class DoShowDocMeAction
 */
public class DoShowDocMeAction extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DoShowDocMeAction() {
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
		//System.out.println("我接收到数据了！");
		
		Doctor d=new Doctor();
		DoctorDAO docdao=new DoctorDAO();
		MedicalRecord m=new MedicalRecord();
		MedicalRecordDAO medao=new MedicalRecordDAO();
		
		HttpSession session=request.getSession();
		d=(Doctor)session.getAttribute("doctor");
		//System.out.println(d.getDocname());
		int count=0;//总条数
		String docname=d.getDocname();//获取登录的医生姓名
		try {//获取该医生开的病历总条数
			count=medao.DocgetTotalOrderTodoc(docname);
		} catch (Exception e) {
			e.printStackTrace();
		}
		int total=(count-1)/2+1;//总页数
		int pagesize=2;//每页展示两条信息
		int pagenow=1;//默认显示第一页
		String page=request.getParameter("pagenow");
		if(page != null){//根据前台选中的页面更改要显示第几页
			pagenow=new Integer(page);
		}
		List<MedicalRecord> list=null;
		try {//获取该医生开的病历集合
			list=medao.DocfindByPageOrderByDate(docname, pagenow, pagesize);
		} catch (Exception e) {
			e.printStackTrace();
		}
		System.out.println("当前页码数"+pagenow);
		request.setAttribute("total", total);
		request.setAttribute("pagenow", pagenow);
		request.setAttribute("count", count);
		request.setAttribute("record", list);
		
		
		request.getRequestDispatcher("doc_hospital/docme.jsp").forward(request, response);
		
		}
		
	}


