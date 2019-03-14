package com.hospital.doctor_action;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.hospital.vo.Doctor;

/**
 * Servlet implementation class DoDocExitAction
 */
public class DoDocExitAction extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DoDocExitAction() {
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
		System.out.println("我接收到数据了！");
		
		//退出系统，回到登录界面，清空session
		HttpSession session=request.getSession();
		session.removeAttribute("doctor");//删除登录医生信息
		session.removeAttribute("messages");//删除医生给管理员的消息草稿
		
		response.sendRedirect("doc_hospital/doclogin.jsp");
	}

}
