package com.hospital.admaction;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hospital.dao.DoctorDAO;
import com.hospital.dao.MailDAO;
import com.hospital.vo.Mail;

/**
 * Servlet implementation class Yue
 */
public class Yue extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Yue() {
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
		int mesid = Integer.parseInt(request.getParameter("mesid"));
		MailDAO md = new MailDAO();
		DoctorDAO dd = new DoctorDAO();
		List<Mail> list = null;
		String docname = null;
		try {
			md.merge(1, mesid);
			list = md.findById(mesid);
			docname = dd.findById(list.get(0).getAuthorid()).getDocname();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		request.setAttribute("mesid", mesid);
		request.setAttribute("list", list);
		request.setAttribute("docname",docname);
		request.getRequestDispatcher("info.jsp").forward(request, response);
	}

}
