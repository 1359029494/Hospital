package com.hospital.doctor_action;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.hospital.dao.DoctorDAO;
import com.hospital.vo.Doctor;

import net.sf.json.JSONArray;

/**
 * Servlet implementation class DoShowWaiKeDoctorAction
 */
public class DoShowKeShiDoctorAction extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DoShowKeShiDoctorAction() {
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
		int pagenow=1;//Ĭ�ϵ�һҳ
		int pagesize=2;//ÿҳ�̶�����
		String pagechange = request.getParameter("pagenow");
		String docdept = request.getParameter("keshiname");
		if(pagechange == null) {
			pagenow = 1;
		}else {
			pagenow = new Integer(pagechange);
		}
		Doctor d = new Doctor();
		List<Doctor> list = new ArrayList<Doctor>();
		DoctorDAO dao = new DoctorDAO();
		int total = 0;
		try {
			total = dao.getTotal();
		} catch (Exception e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		int totalpage=(total-1)/pagesize+1;
		try {
			list = dao.findByPageToKeShi(docdept,pagenow,pagesize);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		PrintWriter out = response.getWriter();
		JSONArray arr=JSONArray.fromObject(list);
		out.println(arr.toString());
	}

}