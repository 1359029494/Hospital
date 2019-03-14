package com.hospital.doctor_action;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.hospital.dao.DoctorDAO;
import com.hospital.vo.Doctor;

/**
 * Servlet implementation class DoDocForgetAction
 */
public class DoDocForgetAction extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DoDocForgetAction() {
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
		
		//System.out.println("dodocforgetaction接收到请求了！");
		
		
		//处理form表单
		Doctor d=new Doctor();//这是要用修改方法放进数据库的数据
		HttpSession session=request.getSession();
		Doctor d2=(Doctor)session.getAttribute("Doctor");//这是通过前台手机号查到的数据
		String newpass=request.getParameter("newpass2");
		//设置新密码
		d.setDocpass(newpass);
		System.out.println("新密码是："+newpass);
		//其他不变
		d.setDocid(d2.getDocid());
		System.out.println("用户id是："+d2.getDocid());
		
		DoctorDAO dao=new DoctorDAO();
		try {
			dao.mergedocpass(d);
		} catch (Exception e) {
			e.printStackTrace();
		}
		response.sendRedirect("doc_hospital/go-forget3.jsp");
	}

}
