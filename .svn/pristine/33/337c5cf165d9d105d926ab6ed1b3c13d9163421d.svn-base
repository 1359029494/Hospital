package com.hospital.doctor_action;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.hospital.dao.DoctorDAO;
import com.hospital.dao.MailDAO;
import com.hospital.vo.Doctor;
import com.hospital.vo.Mail;

/**
 * Servlet implementation class DoDocIndexAction
 */
public class DoDocIndexAction extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DoDocIndexAction() {
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
		System.out.println("dodocindex接收到数据了！");
		
		//根据前台选中的页面更改要显示第几页
			int pagenow=1;//默认显示第一页
			String page=request.getParameter("pagenow");
			if(page != null){
				pagenow=new Integer(page);
			}
			
			Mail m=new Mail();
			MailDAO madao=new MailDAO();
			
			int count=0;//总条数
			try {//获取所有管理员发送的信息总条数
				count=madao.getAdmTotal();
			} catch (Exception e) {
				e.printStackTrace();
			}
			//System.out.println(count);
			int total=(count-1)/2+1;//总页数
			int pagesize=2;//每页展示两条信息
			List<Mail> list=null;
			try {//获取管理员发送的信息
				list=madao.admfindByPage(pagenow, pagesize);
			} catch (Exception e) {
				e.printStackTrace();
			}
			request.setAttribute("admmail", list);
			System.out.println("当前页码数"+pagenow);
			request.setAttribute("total", total);
			request.setAttribute("pagenow", pagenow);
			request.setAttribute("count", count);
			request.getRequestDispatcher("doc_hospital/docindex2.jsp").forward(request, response);
		
	}

}
