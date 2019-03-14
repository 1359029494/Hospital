package com.hospital.doctor_action;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.hospital.dao.DrugDAO;
import com.hospital.dao.OrdersDAO;
import com.hospital.vo.Drug;
import com.hospital.vo.Orders;

/**
 * Servlet implementation class DoDocOrdersAction
 */
public class DoDocOrdersAction extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DoDocOrdersAction() {
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
		response.setCharacterEncoding("utf-8");
		System.out.println("dodocorders接收到数据了！");

		System.out.println("----------------------------------");
		//接收前台传来的药名和数量
		DrugDAO drdao=new DrugDAO();
		Drug d=new Drug();
		String drugname=request.getParameter("drugname");
		int drugnumber=Integer.parseInt((String)request.getParameter("drugnumber"));
		System.out.println("药品名称是："+drugname+"，药品数量为："+drugnumber);
		try {
			d=drdao.findByName(drugname);
		} catch (Exception e) {
			e.printStackTrace();
		}
		//获取药品id
		int drid=d.getDrid();
		//计算出单件商品总价
		double drugprice=d.getDrprice()*drugnumber;
		//System.out.println("单件商品总价为："+drugprice);
		//通过把当前日期时间转化为字符串得到订单编号
		Date date = new Date();
		SimpleDateFormat fmt = new SimpleDateFormat("YYYYMMddhhmm");
		//生成订单编号
		HttpSession session=request.getSession();
		String ornumber = fmt.format(date);
		session.setAttribute("ordernumber", ornumber);
		System.out.println("订单编号为："+ornumber.toString());
		//获取当前时间
		java.sql.Date sqldate=new java.sql.Date(date.getTime());
		Date ordate=sqldate;
		//获取患者id
		int patid=(int) session.getAttribute("orpatid");
		//System.out.println("患者id是："+patid);
		
		Orders o=new Orders();
		OrdersDAO ordao=new OrdersDAO();
		//封装orders对象并存入数据库
		o.setOrnumber(ornumber);
		o.setDrid(drid);
		o.setDrnumber(drugnumber);
		o.setOrprice(drugprice);
		o.setPatid(patid);
		o.setOrstate(0);
		o.setOrdate(sqldate);
		try {
			ordao.save(o);
		} catch (Exception e) {
			e.printStackTrace();
		}
		System.out.println("订单已存入数据库！");
		PrintWriter out=response.getWriter();
		out.println(ornumber);
		
		//response.sendRedirect("doc_hospital/docindex.jsp");
	}

}
