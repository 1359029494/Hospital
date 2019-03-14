package com.hospital.doctor_action;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hospital.dao.MedicalRecordDAO;
import com.hospital.vo.MedicalRecord;

/**
 * Servlet implementation class DoDocLookMeRecordAction
 */
public class DoDocLookMeRecordAction extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DoDocLookMeRecordAction() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.doPost(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
				//��ȡ���ߵĲ���id
				String meid = request.getParameter("meid");
				//String meid ="11";
				int mid = new Integer(meid);
				//���ݲ���id��ѯ������Ϣ
				MedicalRecordDAO dao = new MedicalRecordDAO();
				MedicalRecord merecord =null;
				try {
					 merecord = dao.findById(mid);
				} catch (Exception e) {
					e.printStackTrace();
				}
				System.out.println(merecord.getMedocname());
				request.setAttribute("merecord", merecord);
				request.getRequestDispatcher("doc_hospital/doclookpatme.jsp").forward(request, response);
			}
	}
