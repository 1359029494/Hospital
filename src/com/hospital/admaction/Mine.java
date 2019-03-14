package com.hospital.admaction;

import java.io.IOException;
import java.sql.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.hospital.dao.AdminsDAO;
import com.hospital.vo.Admins;

/**
 * Servlet implementation class Mine
 */
public class Mine extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Mine() {
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
		AdminsDAO ad = new AdminsDAO();
		Admins a  = (Admins) session.getAttribute("admins");
		int admid = a.getAdmid();
		String admname = a.getAdmname();
		String admpass = a.getAdmpass();
		String admphoto = a.getAdmphoto();
		String admidcard = a.getAdmidcard();
		String admphonenumber = a.getAdmphonenumber();
		String admaddress = a.getAdmaddress();
		int superadmin = a.getSuperadmin();
		
		Admins admin =  new Admins(admid, admname, admpass, admphoto, null, admidcard, admphonenumber, admaddress, superadmin);
		request.setAttribute("admin", admin);
		request.getRequestDispatcher("/hos_admin/mine.jsp").forward(request, response);
	}

}
