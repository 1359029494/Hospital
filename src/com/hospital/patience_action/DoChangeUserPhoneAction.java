package com.hospital.patience_action;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.hospital.dao.PatientDAO;
import com.hospital.vo.Patient;

/**
 * Servlet implementation class DoChangeUserPhoneAction
 */
public class DoChangeUserPhoneAction extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DoChangeUserPhoneAction() {
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
		//获取传来的新手机号
		System.out.println("修改手机号");
		String phonenumber = request.getParameter("phone");
		//从session中取出登录用户
		HttpSession session = request.getSession();
	
		Patient pat = (Patient)session.getAttribute("user_pat");
		int patid = pat.getPatid();
	
		PatientDAO dao = new PatientDAO();
		int i=0;
		try {
			i=dao.changePhone(phonenumber,patid);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		System.out.println(i);
		PrintWriter out = response.getWriter();
		out.println(i);
	}

}
