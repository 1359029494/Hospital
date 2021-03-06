package com.hospital.admaction;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hospital.dao.MailDAO;
import com.hospital.vo.Mail;

/**
 * Servlet implementation class Adminindex
 */
public class Adminindex extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Adminindex() {
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
		String pagenow1 = request.getParameter("pagenow");
		int pagenow = -1;
		if(pagenow1 == null) {
			pagenow = 1;
		}else {
			pagenow = new Integer(pagenow1);
		}
		
		int count = 0;
		MailDAO md = new MailDAO();
		List<Mail> list = null;
		try {
			count = md.getTotal();
			list = md.findByPage(pagenow, 20);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		int numpage = (count - 1) / 20 + 1;
		System.out.println(list.size());
		request.setAttribute("pagenow", pagenow);
		request.setAttribute("count", count);
		request.setAttribute("numpage", numpage);
		request.setAttribute("list", list);
		request.getRequestDispatcher("/hos_admin/adminindex.jsp").forward(request, response);
	}

}
