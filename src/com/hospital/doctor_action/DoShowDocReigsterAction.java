package com.hospital.doctor_action;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.hospital.dao.DoctorDAO;
import com.hospital.dao.MedicalRecordDAO;
import com.hospital.dao.RegisterDAO;
import com.hospital.vo.Doctor;
import com.hospital.vo.MedicalRecord;
import com.hospital.vo.Register;

/**
 * Servlet implementation class DoShowDocReigsterAction
 */
public class DoShowDocReigsterAction extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DoShowDocReigsterAction() {
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
		System.out.println("doshowdocregister���յ������ˣ�");
		
		Doctor d=new Doctor();
		DoctorDAO docdao=new DoctorDAO();
		Register r=new Register();
		RegisterDAO regdao=new RegisterDAO();
		
		HttpSession session=request.getSession();
		d=(Doctor)session.getAttribute("doctor");
		//System.out.println(d.getDocname());
		int count=0;//������
		String docname=d.getDocname();//��ȡ��¼��ҽ������
		try {//��ȡ��ҽ�����¹Һ�������
			count=regdao.getTotalPatientForDoctor(docname);
		} catch (Exception e) {
			e.printStackTrace();
		}
		int total=(count-1)/2+1;//��ҳ��
		int pagesize=2;//ÿҳչʾ������Ϣ
		int pagenow=1;//Ĭ����ʾ��һҳ
		String page=request.getParameter("pagenow");
		if(page != null){//����ǰ̨ѡ�е�ҳ�����Ҫ��ʾ�ڼ�ҳ
			pagenow=new Integer(page);
		}
		List<Register> list=null;
		try {//��ȡ��ҽ�����µĹҺ���Ϣ����
			list=regdao.findByPageForDoctor(pagenow, pagesize, docname);
		} catch (Exception e) {
			e.printStackTrace();
		}
		System.out.println("��ǰҳ����"+pagenow);
		request.setAttribute("total", total);
		request.setAttribute("pagenow", pagenow);
		request.setAttribute("count", count);
		request.setAttribute("reglist", list);
		
		System.out.println("doshowdocregister���յ������ˣ�");
		request.getRequestDispatcher("doc_hospital/docre.jsp").forward(request, response);
	}

}
