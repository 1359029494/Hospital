package com.hospital.doctor_action;

import java.io.IOException;
import java.sql.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.hospital.dao.AdminsDAO;
import com.hospital.dao.DoctorDAO;
import com.hospital.dao.MailDAO;
import com.hospital.vo.Admins;
import com.hospital.vo.Doctor;
import com.hospital.vo.Mail;

/**
 * Servlet implementation class DoDocReadMailAction
 */
public class DoDocReadMailAction extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DoDocReadMailAction() {
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
		 request.setCharacterEncoding("UTF-8");
	     response.setCharacterEncoding("UTF-8");
		
		System.out.println("dodocreadmail接收到请求了！");
		int pagenow=1;//默认显示第一页
		String page=request.getParameter("pagenow");
		if(page != null){
			pagenow=new Integer(page);
		}
		int mesid=new Integer(request.getParameter("mesid"));
		Mail m=new Mail();
		MailDAO madao=new MailDAO();
		
		List<Mail> list=null;
		try {
			list=madao.findById(mesid);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		m=list.get(0);
		HttpSession session=request.getSession();
		session.setAttribute("mailmessages", m);
		session.setAttribute("backpage", pagenow);
		//如果查看的是管理员的信息，那就改成已阅
		if(m.getAuthor() == 0){
			try {
				madao.merge(1, mesid);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		response.sendRedirect("doc_hospital/remail.jsp");
	}

}
