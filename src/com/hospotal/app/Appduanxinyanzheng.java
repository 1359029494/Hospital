package com.hospotal.app;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hospital.yanzhengma.IndustrySMS;

/**
 * Servlet implementation class Appduanxinyanzheng
 */
public class Appduanxinyanzheng extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Appduanxinyanzheng() {
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
		System.out.println("������֤");
		String phone = request.getParameter("phone");
		String code = request.getParameter("code");
		System.out.println(code);
		//������Ϣ
		IndustrySMS.execute(phone,code);
		//�����ɵ���֤�봫��ǰ̨�Ƚ�
	}

}
