package com.hospotal.app;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.hospital.dao.PatientDAO;
import com.hospital.vo.Patient;

/**
 * Servlet implementation class AppRegister
 */
public class AppRegister extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AppRegister() {
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
		
		String patname = request.getParameter("patname");
		int patsex = Integer.parseInt(request.getParameter("patsex"));
		String patidcard = request.getParameter("patidcard");
		String patbirthday = request.getParameter("patbirthday");
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
		Date d=null;
		try {
			d = sdf.parse(patbirthday);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		java.sql.Date date=new java.sql.Date(d.getTime());
		String patphonenumber = request.getParameter("patphonenumber");
		String patmail = request.getParameter("patmail");
		String pataddress = request.getParameter("pataddress");
		String patpass = request.getParameter("patpass");
		Patient p = new Patient();
		p.setPatname(patname);
		p.setPatidcard(patidcard);
		p.setPatbirthday(date);
		p.setPatphonenumber(patphonenumber);
		p.setPatsex(patsex);
		p.setPatmail(patmail);
		p.setPatpass(patpass);
		p.setPataddress(pataddress);
		p.setPatmi(0);
		p.setPatphoto(null);
		PatientDAO pdao = new PatientDAO();
		int flag = -1;
		try {
			flag = pdao.save(p);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		Gson gs = new Gson();
		String json = gs.toJson(flag);
		response.getWriter().println(json);
	}

}
