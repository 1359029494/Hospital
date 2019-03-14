package com.hospital.zhiifu_action;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
public class BackServlet extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        this.doPost(request, response);
    }
    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");
        String docid = (String) request.getAttribute("docid");
        String r1_Code=request.getParameter("r1_Code");//获取支付结果
        PrintWriter out=response.getWriter();
        //r1_Code代表支付结果
        if("1".equals(r1_Code))
        {
            String p1_MerId=request.getParameter("p1_MerId");//商户编号
            String r3_Amt=request.getParameter("r3_Amt");//支付金额
            String r6_Order=request.getParameter("r6_Order");//商户订单号
            String rp_PayDate=request.getParameter("rp_PayDate");//支付成功时间
            request.setAttribute("p1_MerId",p1_MerId );
            request.setAttribute("r3_Amt", r3_Amt);
            request.setAttribute("r6_Order", r6_Order);
            request.setAttribute("rp_PayDate", rp_PayDate);
            request.setAttribute("docid", docid);
        	response.sendRedirect("pat_hospital/zhifuok.jsp");
        }
        else
        {
        	response.sendRedirect("pat_hospital/zhifushibai.jsp");
        }
    }
}