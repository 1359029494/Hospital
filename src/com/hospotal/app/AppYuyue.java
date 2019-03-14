package com.hospotal.app;

import java.io.IOException;
import java.util.Calendar;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;
import com.hospital.dao.RegisterDAO;
import com.hospital.vo.Patient;
import com.hospital.vo.Register;

/**
 * Servlet implementation class AppYuyue
 */
public class AppYuyue extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AppYuyue() {
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
		String redname = request.getParameter("dname");
		String redoc = request.getParameter("docname");
		RegisterDAO rd = new RegisterDAO();
		HttpSession session = request.getSession();
		Patient p = (Patient)session.getAttribute("pat");
		int patid = p.getPatid();
		Date birthday = p.getPatbirthday();
		int repatage = getAgeByBirth(birthday);
		Register r = new Register(patid, repatage, redname, redoc);
		int flag = -1;
		try {
			flag = rd.save(r);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		Gson gs = new Gson();
		String json = gs.toJson(flag);
		response.getWriter().print(flag);
		
	}
	
	 private static int getAgeByBirth(Date birthday) {
	        int age = 0;
	        try {
	            Calendar now = Calendar.getInstance();
	            now.setTime(new Date());// 当前时间

	            Calendar birth = Calendar.getInstance();
	            birth.setTime(birthday);

	            if (birth.after(now)) {//如果传入的时间，在当前时间的后面，返回0岁
	                age = 0;
	            } else {
	                age = now.get(Calendar.YEAR) - birth.get(Calendar.YEAR);
	                if (now.get(Calendar.DAY_OF_YEAR) > birth.get(Calendar.DAY_OF_YEAR)) {
	                    age += 1;
	                }
	            }
	            return age;
	        } catch (Exception e) {//兼容性更强,异常后返回数据
	           return 0;
	        }
	    }

}
