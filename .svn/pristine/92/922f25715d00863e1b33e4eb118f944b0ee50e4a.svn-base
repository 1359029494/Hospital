package com.hospital.admaction;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hospital.dao.DrugDAO;
import com.hospital.vo.Drug;

/**
 * Servlet implementation class Managemed
 */
public class Managemed extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Managemed() {
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
		int count = 0;
		if(pagenow1 == null) {
			pagenow = 1;
		}else {
			pagenow = new Integer(pagenow1);
		}
		List<Drug> list = null;
		DrugDAO dd = new DrugDAO();
		try {
			list = dd.findByPage(pagenow, 12);
			count = dd.getTotal();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		int numpage = (count - 1)/12 + 1;
		
		request.setAttribute("pagenow", pagenow);
		request.setAttribute("count", count);
		request.setAttribute("numpage", numpage);
		request.setAttribute("list", list);
		request.getRequestDispatcher("/hos_admin/managemed.jsp").forward(request, response);
		
	}

}
