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

import com.hospital.dao.RegisterDAO;
import com.hospital.vo.Patient;
import com.hospital.vo.Register;

/**
 * Servlet implementation class DoChaZhaoGuaHaoAction
 */
public class DoChaZhaoGuaHaoAction extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DoChaZhaoGuaHaoAction() {
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
		Patient spat = (Patient)session.getAttribute("user_pat");
		List<Register> list = new ArrayList<Register>();
		RegisterDAO dao = new RegisterDAO();
		try {
			list = dao.findByIdForGuaHao(spat.getPatid());
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		PrintWriter out = response.getWriter();
		if(list.size()!=0) {
			out.println(1);
		}else {
			out.println(0);
		}
	}

}
