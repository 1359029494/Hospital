package com.hospital.admaction;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hospital.dao.MailDAO;
import com.hospital.vo.Mail;
import com.hospital.vo.Mdept;

/**
 * Servlet implementation class Addsub2
 */
public class Addsub2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Addsub2() {
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
		List<Mail> list = null;
		MailDAO md = new MailDAO();
		try {
			list = md.findById(mesid);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		String message = null;
		for(Mail m : list) {
			message = m.getMessage();
		}
		Testsub sub = new Testsub();
		String dname = sub.register(message);
		request.setAttribute("dept", dname);
		request.getRequestDispatcher("/hos_admin/Managesub").forward(request, response);
		
	}

}
