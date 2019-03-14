package com.hospital.admaction;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.hospital.dao.AdminsDAO;
import com.hospital.vo.Admins;

/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login() {
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
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession();
		String username = request.getParameter("admphonenumber");
		String userpass = request.getParameter("admpass");
		AdminsDAO ad = new AdminsDAO();
		boolean flag = false;
		try {
			flag = ad.finduser(username, userpass);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		Admins a = null;
		
		
		
			if(flag) {
				try {
					a = ad.findByphone(username);
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				session.setAttribute("admins", a);
				response.sendRedirect("hos_admin/Adminindex");
			}else {
				out.println("<html>");
				out.println("<head>");
				out.println("<meta charset='utf-8' />");
				out.println("<script>");
				out.println("alert('�˺Ż��������');window.location.href='hos_admin/admlogin.html'");
				out.println("</script>");
				out.println("</head>");
				out.println("</html>");
			}
		}
	

}