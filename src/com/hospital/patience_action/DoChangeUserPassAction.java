package com.hospital.patience_action;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.hospital.dao.PatientDAO;

/**
 * Servlet implementation class DoChangeUserPassAction
 */
public class DoChangeUserPassAction extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DoChangeUserPassAction() {
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
		String newpass = request.getParameter("password");
		HttpSession session = request.getSession();
		String phonenumber = (String)session.getAttribute("userphone");
		PatientDAO dao = new PatientDAO();
		int result=-2;
		try {
			result = dao.changePass(newpass,phonenumber);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		PrintWriter out = response.getWriter();
		out.println(result);
		System.out.println("�޸�����"+result);
		System.out.println(phonenumber);
		//���޸ĵĽ������session�У������ж��Ƿ�ɹ�
		session.setAttribute("changeresult", result);
	}

}