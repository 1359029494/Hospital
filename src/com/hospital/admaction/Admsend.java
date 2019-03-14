package com.hospital.admaction;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.hospital.dao.MailDAO;
import com.hospital.vo.Admins;
import com.hospital.vo.Mail;

/**
 * Servlet implementation class Admsend
 */
public class Admsend extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Admsend() {
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
		HttpSession session = request.getSession();
		Admins a = (Admins)session.getAttribute("admins");
		int authorid = a.getAdmid();
		String title = request.getParameter("title");
		String message = request.getParameter("message");
		System.out.println(message);
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
		Date d = new Date();
		java.sql.Date date=new java.sql.Date(d.getTime());
		Mail m = new Mail(0, authorid, title, message,date, 0);
		MailDAO md = new MailDAO();
		int flag = -1;
		try {
			flag = md.save(m);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		PrintWriter out = response.getWriter();
		if(flag >= 0) {
			response.sendRedirect("/hospital/hos_admin/Adminindex");
		}else {
			out.println("<script>");
			out.println("alert('����ʧ�ܣ�');window.location.href='remail.jsp'");
			out.println("</script>");
		}
	}

}
