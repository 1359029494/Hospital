package com.hospital.doctor_action;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.hospital.dao.DoctorDAO;
import com.hospital.vo.Doctor;

/**
 * Servlet implementation class DoDocLoginAction
 */
public class DoDocLoginAction extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DoDocLoginAction() {
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
		//System.out.println("我接收到数据了！");
		
		String docphonenumber = request.getParameter("phonenumber");
		String docpass = request.getParameter("password");	
		Doctor d=new Doctor();
		DoctorDAO dao=new DoctorDAO();
		//通过手机号和密码查询用户
		try {
			d=dao.login(docphonenumber, docpass);
		} catch (Exception e) {
			e.printStackTrace();
		}
		//判断用户是否存在
				if(d.getDocid() != 0){
					//如果存在，就建立session范围
					HttpSession session=request.getSession();
					//把医生信息放入session范围内备用
					session.setAttribute("doctor", d);
					//重定向
					response.sendRedirect("docindex");
					System.out.println("登录成功");
				}else{
					System.out.println("登录失败");
					HttpSession session=request.getSession();
					session.setAttribute("alert", "fals");
					response.sendRedirect("doc_hospital/doclogin.jsp");
				}
	}

}
