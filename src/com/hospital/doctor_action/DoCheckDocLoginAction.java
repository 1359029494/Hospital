package com.hospital.doctor_action;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.hospital.dao.DoctorDAO;
import com.hospital.vo.Doctor;

/**
 * Servlet implementation class DoCheckDocLoginAction
 */
public class DoCheckDocLoginAction extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DoCheckDocLoginAction() {
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
		
		//�����ж�ҽ����¼���棨doclogin.jsp���û��ֻ����Ƿ����
		String phonenumber=request.getParameter("phonenumber");
		//�ж��ֻ����Ƿ����
		Doctor d=new Doctor();
		DoctorDAO dao=new DoctorDAO();
		try {
			d=dao.findByphone(phonenumber);
		} catch (Exception e) {
			e.printStackTrace();
		}
		int i=d.getDocid();
		//System.out.println(i);
		PrintWriter out=response.getWriter();
		if(i != 0){
			out.println("1");//����
		}else{
			out.print("0");//������
		}
		
	}
}
