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

import com.hospital.dao.DoctorDAO;
import com.hospital.dao.RegisterDAO;
import com.hospital.vo.Doctor;
import com.hospital.vo.Patient;
import com.hospital.vo.Register;

/**
 * Servlet implementation class PreGuaHaoAction
 */
public class PreGuaHaoAction extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PreGuaHaoAction() {
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
		Patient pat = (Patient) session.getAttribute("user_pat");
		//通过患者id查看患者是否已挂号
		List<Register> list = new ArrayList<Register>(); 
		RegisterDAO redao = new RegisterDAO();
		try {
			list = redao.findByIdForGuaHao(pat.getPatid());
		} catch (Exception e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		PrintWriter out = response.getWriter();
		if(list.size() != 0){
			out.println(1);
		}else{
			out.println(0);			
		}
	}

}
