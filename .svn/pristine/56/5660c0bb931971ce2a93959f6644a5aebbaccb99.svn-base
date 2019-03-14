package com.hospital.doctor_action;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hospital.dao.DoctorDAO;
import com.hospital.dao.RegisterDAO;
import com.hospital.vo.Doctor;
import com.hospital.vo.Register;

/**
 * Servlet implementation class TestAction
 */
public class TestAction extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TestAction() {
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
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		
		Register r=new Register();
		RegisterDAO dao=new RegisterDAO();
		
//		String docname="黄成兴";
//		int size = 0;
//		try {
//			size = dao.getTotalByDoc(docname);
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
//		System.out.println(size);
//		
//		try {
//			r=dao.findFirst("黄成兴");
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
//		System.out.println(r.getRedname());
		
	}

}
