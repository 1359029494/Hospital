package com.hospital.patience_action;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.hospital.yanzhengma.IndustrySMS;

/**
 * Servlet implementation class DoDuanxinYanZhengAction
 */
public class DoDuanxinYanZhengAction extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DoDuanxinYanZhengAction() {
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
		System.out.println(phone);
		//������Ϣ
		IndustrySMS.execute(phone,code);
		//�����ɵ���֤�봫��ǰ̨�Ƚ�
		
	}

}
