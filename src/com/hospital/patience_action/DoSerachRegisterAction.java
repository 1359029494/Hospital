package com.hospital.patience_action;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.hospital.dao.RegisterDAO;
import com.hospital.vo.Patient;
import com.hospital.vo.Register;

/**
 * Servlet implementation class DoSerachRegisterAction
 */
public class DoSerachRegisterAction extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DoSerachRegisterAction() {
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
		PrintWriter out = response.getWriter();
		RegisterDAO dao = new RegisterDAO();
		HttpSession session = request.getSession();
		Patient pat = (Patient)session.getAttribute("user_pat");
		int patid = pat.getPatid();
		List<Register> list = null;
		try {
			list =  dao.findByIdForGuaHao(patid);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		Register reg = null ;
		if(list.size()!=0) {
			reg = list.get(0);
			out.println(reg.getRegid());
		}else {
			out.println(0);
		}
		
	}

}
