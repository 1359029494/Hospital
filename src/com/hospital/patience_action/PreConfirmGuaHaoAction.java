package com.hospital.patience_action;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hospital.dao.DoctorDAO;
import com.hospital.vo.Doctor;
import com.hospital.vo.Patient;

/**
 * Servlet implementation class PreConfirmGuaHaoAction
 */
public class PreConfirmGuaHaoAction extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PreConfirmGuaHaoAction() {
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
		//��ȡ������ѡҽ����ID
		String docid = request.getParameter("docid");
		//����ҽ��ID��ѯ��ҽ����Ϣ
		Doctor doc = new Doctor();
		DoctorDAO docdao = new DoctorDAO();
		try {
			doc = docdao.findById(new Integer(docid));
		} catch (NumberFormatException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		request.setAttribute("doctor",doc);
		request.getRequestDispatcher("pat_hospital/doctorchild.jsp").forward(request, response);
	}

}