package com.hospital.admaction;

import java.io.IOException;
import java.sql.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hospital.dao.PatientDAO;
import com.hospital.vo.Patient;

/**
 * Servlet implementation class twoaction
 */
public class twoaction extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public twoaction() {
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
		
		Patient pa = new Patient();
		PatientDAO dao = new PatientDAO();
		pa.setPatname("刘文浩");
		pa.setPatpass("123456");
		pa.setPatphonenumber("15969745583");
		pa.setPatphoto("img/phone.jpg");
		pa.setPataddress("山东济南扛把子屯");
		pa.setPatidcard("371481199808153073");
		pa.setPatsex(1);
		pa.setPatmi(1);
		pa.setPatmail("2335715300@qq.com");
		java.util.Date date = new java.util.Date();
		java.sql.Date date1 = new Date(date.getTime());
		pa.setPatbirthday(date1);
		try {
			dao.save(pa);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
