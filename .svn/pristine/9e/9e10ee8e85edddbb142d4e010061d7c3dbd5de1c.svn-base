package com.hospital.admaction;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;
import com.hospital.dao.DoctorDAO;
import com.hospital.vo.Admins;

/**
 * Servlet implementation class Docphone
 */
public class Docphone extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Docphone() {
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
		String docphonenumber = request.getParameter("phone");
		HttpSession session = request.getSession();
		Admins a = (Admins)session.getAttribute("admins");
		String olddocphonenumber = a.getAdmphonenumber();
		DoctorDAO dd = new DoctorDAO();
		boolean flag = false;
		try {
			flag = dd.findByPhoneRe(docphonenumber, olddocphonenumber);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		Gson gs = new Gson();
		String json = gs.toJson(flag);
		response.getWriter().println(json);
	}

}
