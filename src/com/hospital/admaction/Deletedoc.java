package com.hospital.admaction;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hospital.dao.DoctorDAO;
import com.hospital.dao.MailDAO;
import com.hospital.vo.Doctor;

/**
 * Servlet implementation class Deletedoc
 */
public class Deletedoc extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Deletedoc() {
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
		PrintWriter out = response.getWriter();
		int docid = Integer.parseInt(request.getParameter("docid"));
		DoctorDAO dd = new DoctorDAO();
		MailDAO md = new MailDAO();
		int flag = -1;
		try {
			flag = dd.deleteid(docid);
			md.delete(docid);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if(flag >= 0) {
			response.sendRedirect("hos_admin/Managedoc");
		}else {
			out.println("<script>");
			out.println("alert('ɾ��ʧ�ܣ�');window.location.href='hos_admin/Managedoc'");
			out.println("</script>");
		}
	}

}
