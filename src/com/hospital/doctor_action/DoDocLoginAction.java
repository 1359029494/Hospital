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
		//System.out.println("�ҽ��յ������ˣ�");
		
		String docphonenumber = request.getParameter("phonenumber");
		String docpass = request.getParameter("password");	
		Doctor d=new Doctor();
		DoctorDAO dao=new DoctorDAO();
		//ͨ���ֻ��ź������ѯ�û�
		try {
			d=dao.login(docphonenumber, docpass);
		} catch (Exception e) {
			e.printStackTrace();
		}
		//�ж��û��Ƿ����
				if(d.getDocid() != 0){
					//������ڣ��ͽ���session��Χ
					HttpSession session=request.getSession();
					//��ҽ����Ϣ����session��Χ�ڱ���
					session.setAttribute("doctor", d);
					//�ض���
					response.sendRedirect("docindex");
					System.out.println("��¼�ɹ�");
				}else{
					System.out.println("��¼ʧ��");
					HttpSession session=request.getSession();
					session.setAttribute("alert", "fals");
					response.sendRedirect("doc_hospital/doclogin.jsp");
				}
	}

}