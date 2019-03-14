package com.hospital.patience_action;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.hospital.dao.MedicalRecordDAO;
import com.hospital.dao.OrdersDAO;
import com.hospital.vo.MedicalRecord;
import com.hospital.vo.Orders;
import com.hospital.vo.Patient;

/**
 * Servlet implementation class FindPat_OldRecordAction
 */
public class FindPat_OldRecordAction extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FindPat_OldRecordAction() {
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
		int count=0;
		MedicalRecordDAO dao = new MedicalRecordDAO();
		//得到患者的ID查找orders表
		HttpSession  session =request.getSession();
		Patient p = (Patient)session.getAttribute("user_pat");
		int patid = p.getPatid();
		try {
			count=dao.getTotalOrderToPat(patid);
			
		} catch (Exception e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		int total=(count-1)/5+1;
		request.setAttribute("total", total);
		request.setAttribute("count", count);
		int pagenow=1;
		String page=request.getParameter("pagenow");
		if(page!=null) {
			pagenow=new Integer(page);
		}
		request.setAttribute("pagenow", pagenow);
		//分页查询，根据患者的id找到对应的订单信息
		List<MedicalRecord> list=null;
		try {
			list = dao.findByPageOrderByDate(patid, pagenow, 5);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		request.setAttribute("record_list", list);
		request.getRequestDispatcher("pat_hospital/findrecord.jsp").forward(request,response);
	}

}
