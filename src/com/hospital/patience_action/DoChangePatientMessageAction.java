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
 * Servlet implementation class DoChangePatientMessageAction
 */
public class DoChangePatientMessageAction extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DoChangePatientMessageAction() {
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
		 ���ܣ������û����޸���Ϣ�������ݿ��ж��û�����Ϣ�����޸�
		 */
		//��ȡ�û��޸ĵ���Ϣ
		
		String pat_name = request.getParameter("pat_name");
		System.out.println(pat_name);
		String pat_address = request.getParameter("pat_address");
		String pat_mail = request.getParameter("pat_mail");
		//��ȡ��ǰ�û�
		HttpSession session = request.getSession();
		Patient pat = (Patient)session.getAttribute("user_pat");
		//ʹ�û��ߵ�DAO������Ϣ�����޸�
		PatientDAO dao = new PatientDAO();
		int i=0;
		try {
			i=dao.changeMessage(pat_name, pat_address, pat_mail, pat);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		System.out.println(i);
		//�ض������²�ѯ������Ϣ��ҳ��
		response.sendRedirect("findpersionalmessage");
		
	}

}
