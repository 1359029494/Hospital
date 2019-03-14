package com.hospital.patience_action;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class DoAtBackToZhiFuAction
 */
public class DoAtBackToZhiFuAction extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DoAtBackToZhiFuAction() {
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
		HttpSession session = request.getSession();
		String orid = request.getParameter("orid");
		session.setAttribute("orid", orid);
        response.setContentType("text/html;charset=utf-8");
        String r1_Code=request.getParameter("r1_Code");//��ȡ֧�����
        PrintWriter out=response.getWriter();
        //r1_Code����֧�����
        if("1".equals(r1_Code))
        {
            String p1_MerId=request.getParameter("p1_MerId");//�̻����
            String r3_Amt=request.getParameter("r3_Amt");//֧�����
            String r6_Order=request.getParameter("r6_Order");//�̻�������
            String rp_PayDate=request.getParameter("rp_PayDate");//֧���ɹ�ʱ��
            request.setAttribute("msg", "ojbk");
            request.setAttribute("p1_MerId",p1_MerId );
            request.setAttribute("r3_Amt", r3_Amt);
            request.setAttribute("r6_Order", r6_Order);
            request.setAttribute("rp_PayDate", rp_PayDate);
            response.sendRedirect("preshowpatoldorder");
        }
        else
        {
            response.sendRedirect("preshowpatoldorder");
        }
    }
}
