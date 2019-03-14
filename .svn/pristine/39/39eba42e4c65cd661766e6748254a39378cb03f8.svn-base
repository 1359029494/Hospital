package com.hospital.patience_action;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.hospital.yanzhengma.YanZhengMa;

/**
 * Servlet implementation class DoYanZhengForLoginAction
 */
public class DoYanZhengForLoginAction extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DoYanZhengForLoginAction() {
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
		response.setContentType("image/jpeg");
		// ½ûÖ¹Í¼Ïñ»º´æ¡£
		response.setHeader("Pragma", "no-cache");
		response.setHeader("Cache-Control", "no-cache");
		response.setDateHeader("Expires", 0);
		YanZhengMa instance = new YanZhengMa();
		String yanzheng = instance.getCode();
		HttpSession session = request.getSession();
		session.setAttribute("yanzheng", yanzheng);
		Cookie cookie = new Cookie("scaptcha", yanzheng);
		cookie.setMaxAge(1800);
		response.addCookie(cookie);
		instance.write(response.getOutputStream());
	}
}
