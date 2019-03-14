package com.hospital.admaction;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hospital.dao.DoctorDAO;
import com.hospital.vo.Doctor;

/**
 * Servlet implementation class Managedoc
 */
@WebServlet("/hos_admin/Managedoc")
public class Managedoc extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Managedoc() {
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
		
		DoctorDAO dd = new DoctorDAO();
		List<Doctor> list = null;
		try {
			list = dd.findByPage(pagenow, 12);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		int count = 0;
		try {
			count = dd.getTotal();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		int numpage = (count - 1) / 12 + 1;
		request.setAttribute("pagenow", pagenow);
		request.setAttribute("numpage", numpage); 
		request.setAttribute("count", count);
		request.setAttribute("list", list);
		request.getRequestDispatcher("/hos_admin/managedoc.jsp").forward(request, response);
	}

}
