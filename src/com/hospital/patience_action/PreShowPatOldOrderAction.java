package com.hospital.patience_action;
/*
 姓名session取
 医生，就诊时间病历取
 是否缴费？
 根据就诊时间，判断状态表
 金额？
 查询order表
 多表查询，病历+订单
 订单表加患者编号，订单缴费状态
 select Medocname, Medate, orprice, orstate from MedicalRecord,Orders where MedicalRecord.patid=8 
 and MedicalRecord.Medate=Orders.Ordate;
 */
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.hospital.dao.DingDanHelpDAO;
import com.hospital.dao.OrdersDAO;
import com.hospital.vo.DingDan;
import com.hospital.vo.DingDanHelp;
import com.hospital.vo.Orders;
import com.hospital.vo.Patient;

/**
 * Servlet implementation class PreShowPatOldOrderAction
 */
public class PreShowPatOldOrderAction extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PreShowPatOldOrderAction() {
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
		DingDanHelpDAO dao = new DingDanHelpDAO();
		//得到患者的ID查找orders表
		HttpSession  session =request.getSession();
		Patient p = (Patient)session.getAttribute("user_pat");
		int patid = p.getPatid();
		try {
			count=dao.getTotalOldOrder(patid);
			
		} catch (Exception e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		int total=(count-1)/5+1;
		request.setAttribute("total", total);
		request.setAttribute("count", count);
		int pagenow=1;
		String page=request.getParameter("pagenow");
		PrintWriter out  = response.getWriter();
		out.println(page);
		
		if(page!=null) {
			pagenow=new Integer(page);
		}
		request.setAttribute("pagenow", pagenow);
		
		
		//分页查询，根据患者的id找到对应的订单信息
		List<DingDanHelp> list=null;
		try {
			list = dao.findByPageForOldOrder(patid,pagenow, 5);
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		//遍历订单编号查询订单日期
				//创建一个订单集合，将日期和价格映射成一个对象
				List<DingDan> dingdan = new ArrayList<DingDan>();
				//创建订单dao
				OrdersDAO ordao = new OrdersDAO();
				for(int i=0;i<list.size();i++) {
					DingDanHelp dh = list.get(i);
					//得到订单编号的总价钱
					Double pri = dh.getOrprice();
				    //获取订单编号
					String ornum = dh.getOrnumber();
					//截取订单编号，获取订单时间
					String one = ornum.substring(0, ornum.length()-4);
					String year = one.substring(0,4);
					String month = one.substring(4,6);
					String day = one.substring(one.length()-2);
					String ordate = year+"-"+month+"-"+day;
					//得到订单的状态
					int orstate=0;
					try {
						orstate = ordao.selectOrstate(ornum);
					} catch (Exception e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
					//生成一个订单对象
					DingDan d = new DingDan(ordate,pri,orstate,ornum);
					dingdan.add(d);
				}
		request.setAttribute("pat_list", dingdan);
		request.getRequestDispatcher("pat_hospital/dingdan.jsp").forward(request,response);
	}

}
