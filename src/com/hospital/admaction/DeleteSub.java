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
 * Servlet implementation class DeleteSub
 */
public class DeleteSub extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteSub() {
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
		int deptid = Integer.parseInt(request.getParameter("deptid"));
		MdeptDAO dd = new MdeptDAO();
		Mdept md = null;
		int flag = -1;
		try {
			flag = dd.deleteById(deptid);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		PrintWriter out = response.getWriter();
		if(flag >= 0) {
			response.sendRedirect("/hospital/hos_admin/Managesub");
		}else {
			out.println("<script>");
			out.println("alert('ɾ��ʧ�ܣ�');window.location.href='hos_admin/Managesub'");
			out.println("</script>");
		}
		
	}

}