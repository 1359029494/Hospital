package com.hospital.patience_action;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.hospital.dao.PatientDAO;
import com.hospital.vo.Patient;

/**
 * Servlet implementation class DoFindPersionalMessageAction
 */
public class DoFindPersionalMessageAction extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DoFindPersionalMessageAction() {
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
		/*
		 根据存在session对象的id,查询个人信息，为什么不直接用session的患者对象呢？ 因为个人信息不能更新
		 auth:陈雪冰
		 */
		
		//获取session中的患者
		HttpSession session = request.getSession();
		Patient spat = (Patient)session.getAttribute("user_pat");
		//获取患者id，根据患者的id再次获取患者这个对象
		int patid = spat.getPatid();
		PatientDAO dao = new PatientDAO();
		Patient pat = new Patient();
		try {
			pat = dao.findById(patid);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		//将新查询的患者放在session对象中
		request.setAttribute("agin_pat", pat);
		request.getRequestDispatcher("pat_hospital/selfmessage.jsp").forward(request, response);
	}

}
