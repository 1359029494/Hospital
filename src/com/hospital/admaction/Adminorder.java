package com.hospital.admaction;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hospital.dao.DrugDAO;
import com.hospital.dao.OrdersDAO;
import com.hospital.vo.Orders;

/**
 * Servlet implementation class Adminorder
 */
public class Adminorder extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Adminorder() {
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
		String pagenow1 = request.getParameter("pagenow");
		int pagenow = -1;
		if(pagenow1 == null) {
			pagenow = 1;
		}else {
			pagenow = new Integer(pagenow1);
		}
		List<Orders> list = null;
		int count = 0;
		int first = 0;
		int second = 0;
		int third = 0;
		int fourth = 0;
		int fiveth = 0;
		int sixth = 0;
		int seventh = 0;
		OrdersDAO od = new OrdersDAO();
		DrugDAO dd = new DrugDAO();
		try {
			list = od.findByPage(pagenow, 8);
			count = od.getTotal();
			first = od.findByTime(getPastTime());
			second = od.findByTime(getSecondTime());
			third = od.findByTime(getThirdTime());
			fourth = od.findByTime(getFourthTime());
			fiveth = od.findByTime(getfivethTime());
			sixth = od.findByTime(getSixthTime());
			seventh = od.findByTime(getTime());
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		int numpage = (count -1) / 8 +1;
		int orcount = first + second + third + fourth + fiveth + sixth + seventh;
		request.setAttribute("nowTime", this.getTime());
		request.setAttribute("pastTime", this.getPastTime());
		request.setAttribute("first", first);
		request.setAttribute("second", second);
		request.setAttribute("third", third);
		request.setAttribute("fourth", fourth);
		request.setAttribute("fiveth", fiveth);
		request.setAttribute("sixth", sixth);
		request.setAttribute("seventh", seventh);
		request.setAttribute("count", count);
		request.setAttribute("numpage", numpage);
		request.setAttribute("orcount", orcount);
		request.setAttribute("pagenow", pagenow);
		request.setAttribute("list", list);
		request.getRequestDispatcher("/hos_admin/findorder.jsp").forward(request, response);
	}
	
	
	/**
     * 获取过去第7天的日期
     *
     * @return
     */
    public static String getPastTime() {
    	  Calendar calendar=Calendar.getInstance();
          calendar.add(Calendar.DATE, -6);
          Date time = calendar.getTime();
          SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置日期格式
		  String pastTime = df.format(time);// new Date()为获取当前系统时间
		  return pastTime.split(" ")[0];
    }
    
    public static String getSecondTime() {
  	  Calendar calendar=Calendar.getInstance();
        calendar.add(Calendar.DATE, -5);
        Date time = calendar.getTime();
        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置日期格式
		  String pastTime = df.format(time);// new Date()为获取当前系统时间
		  return pastTime.split(" ")[0];
  }
    
    public static String getThirdTime() {
  	  Calendar calendar=Calendar.getInstance();
        calendar.add(Calendar.DATE, -4);
        Date time = calendar.getTime();
        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置日期格式
		  String pastTime = df.format(time);// new Date()为获取当前系统时间
		  return pastTime.split(" ")[0];
  }
    public static String getFourthTime() {
  	  Calendar calendar=Calendar.getInstance();
        calendar.add(Calendar.DATE, -3);
        Date time = calendar.getTime();
        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置日期格式
		  String pastTime = df.format(time);// new Date()为获取当前系统时间
		  return pastTime.split(" ")[0];
  }
    public static String getfivethTime() {
  	  Calendar calendar=Calendar.getInstance();
        calendar.add(Calendar.DATE, -2);
        Date time = calendar.getTime();
        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置日期格式
		  String pastTime = df.format(time);// new Date()为获取当前系统时间
		  return pastTime.split(" ")[0];
  }
    public static String getSixthTime() {
  	  Calendar calendar=Calendar.getInstance();
        calendar.add(Calendar.DATE, -1);
        Date time = calendar.getTime();
        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置日期格式
		  String pastTime = df.format(time);// new Date()为获取当前系统时间
		  return pastTime.split(" ")[0];
  }
    
    /**
     * 获取当前时间
     * @return
     */
    public String getTime() {
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置日期格式
		String time = df.format(new Date());// new Date()为获取当前系统时间
		return time.split(" ")[0];
	}

}
