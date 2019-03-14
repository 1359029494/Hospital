package com.hospital.admaction;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hospital.dao.DrugDAO;
import com.hospital.dao.OrdersDAO;

/**
 * Servlet implementation class Delectmed
 */
public class Delectmed extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Delectmed() {
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
		int drid = new Integer(request.getParameter("drid"));
		DrugDAO dd = new DrugDAO();
		OrdersDAO od = new OrdersDAO();
		int flag = -1;
		try {
			flag = dd.deleteById(drid);
			od.deleteByid(drid);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		PrintWriter out = response.getWriter();
		if(flag >= 0) {
			response.sendRedirect("Managemed");
		}else {
			out.println("<script>");
			out.println("alert('É¾³ıÊ§°Ü£¡');window.location.href='Managemed'");
			out.println("</script>");
		}
	}

}
