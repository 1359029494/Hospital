package com.hospital.admaction;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hospital.dao.MdeptDAO;
import com.hospital.vo.Mdept;

/**
 * Servlet implementation class Addsub
 */
public class Addsub extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Addsub() {
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
		String dname = request.getParameter("dname");
		MdeptDAO md = new MdeptDAO();
		Mdept m = new Mdept(dname);
		int flag = -1;
		try {
			flag = md.save(m);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		PrintWriter out = response.getWriter();
		if(flag >= 0) {
			response.sendRedirect("hos_admin/Managesub");
		}else {
			out.println("<script>");
			out.println("alert('Ìí¼ÓÊ§°Ü£¡');window.location.href='hos_admin/Managesub'");
			out.println("</script>");
		}
	}

}
