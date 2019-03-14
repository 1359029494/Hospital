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
 * Servlet implementation class DoCheckPhoneForUpDatePassAction
 */
public class DoCheckPhoneForUpDatePassAction extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DoCheckPhoneForUpDatePassAction() {
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
		
		//获取ajax传来的电话码,判断数据库中是否有该用户存在,result=1存在，=0不存在
		String ajphone = request.getParameter("phone");
		System.out.println(ajphone);
		PatientDAO dao = new PatientDAO();
		int result = -2;
		try {
			result =dao.checkUser(ajphone);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		//将用户的电话号码存到session中
		if(result==1) {
			HttpSession session = request.getSession();
			session.setAttribute("userphone", ajphone);
		}
		//将查询的结果传到前端
		PrintWriter out = response.getWriter();
		out.println(result);	
	}

}
