package com.hospital.admaction;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hospital.dao.MailDAO;
import com.hospital.vo.Drug;
import com.hospital.vo.Mail;

/**
 * Servlet implementation class Addmed2
 */
public class Addmed2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Addmed2() {
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
		List<Mail> list = null;
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
		
		Testmed m = new Testmed();
		Drug d = m.register(message);
		
		request.setAttribute("drug", d);
		request.getRequestDispatcher("/hos_admin/addmed.jsp").forward(request, response);
	}

}
