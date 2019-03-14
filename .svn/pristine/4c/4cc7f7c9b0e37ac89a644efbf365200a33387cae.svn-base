package com.hospital.patience_action;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.hospital.dao.PatientDAO;
import com.hospital.vo.Patient;

/**
 * Servlet implementation class pat_dologinAction
 * author:¡ıÓ¯»€
 * time:2018/12/10
 */
public class pat_dologinAction extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public pat_dologinAction() {
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
		HttpSession session = request.getSession();
		PrintWriter out = response.getWriter();
		String yanzheng =(String)session.getAttribute("yanzheng");
		String yzm = request.getParameter("yzm");
		if (yanzheng.equalsIgnoreCase(yzm)){
			Patient pat = new Patient();
			List<Patient> list = new ArrayList<Patient>();
			String userid = request.getParameter("id");
			String userpass = request.getParameter("password");
			PatientDAO dao = new PatientDAO();
			try {
				list = dao.findByPatphoneAndPass(userid, userpass);
			} catch (NumberFormatException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
	
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			if(list.size() != 0) {
				try {
					pat = dao.findByPatphonenumber(userid);
					session.setAttribute("user_pat",pat);
				}catch (Exception e) {
					// TODO: handle exception
				}	
				out.println("1");
			}else {
				out.println(0);;
			}
		}else {
			out.println(2);
		}
		
	}

}
