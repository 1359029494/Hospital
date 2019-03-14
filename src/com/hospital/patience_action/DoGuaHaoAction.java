package com.hospital.patience_action;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.hospital.dao.DoctorDAO;
import com.hospital.dao.PatientDAO;
import com.hospital.dao.RegisterDAO;
import com.hospital.vo.Doctor;
import com.hospital.vo.Patient;
import com.hospital.vo.Register;

/**
 * Servlet implementation class DoGuaHaoAction
 */
public class DoGuaHaoAction extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DoGuaHaoAction() {
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
		String docid = request.getParameter("docid");
		Patient pat = (Patient) session.getAttribute("user_pat");
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
		//ͨ������id�鿴�����Ƿ��ѹҺ�
		List<Register> list = new ArrayList<Register>(); 
		RegisterDAO redao = new RegisterDAO();
		try {
			list = redao.findByIdForGuaHao(pat.getPatid());
		} catch (Exception e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		if(list.size() != 0){
			response.sendRedirect("pat_hospital/confirmguahao.jsp");
		}else{
			//��ȡ���ߵ�����֤��
			String card = pat.getPatidcard();
			//��ȡ��ǰ����
			Date date = new Date();
			//���㻼�߿͹�����
			int age = new Integer(date.toString().substring(24)) - new Integer(card.substring(6,10));
			//���浽���ݿ� �Һųɹ�
			Register reg = new Register();
			reg.setPatid(pat.getPatid());
			reg.setRedname(doc.getDocdept());
			reg.setRepatage(age);
			reg.setRedoc(doc.getDocname());
			RegisterDAO regdao = new RegisterDAO();
			try {
				regdao.save(reg);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

			response.sendRedirect("PaymentRequest");
			
		}
	}
}