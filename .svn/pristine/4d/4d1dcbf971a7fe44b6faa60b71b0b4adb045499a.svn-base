package com.hospotal.app;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;
import com.hospital.dao.MedicalRecordDAO;
import com.hospital.vo.MedicalRecord;
import com.hospital.vo.Patient;

/**
 * Servlet implementation class AppMedicalRecord
 */
public class AppMedicalRecord extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AppMedicalRecord() {
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
		Patient p = (Patient)session.getAttribute("pat");
		int patid = p.getPatid();
		MedicalRecordDAO md = new MedicalRecordDAO();
		List<MedicalRecord> list = null;
		try {
			list = md.findAllByPageOrderByDate(patid);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		Gson gs = new Gson();
		String json = gs.toJson(list);
		response.getWriter().print(json);
	}

}
