package com.hospital.doctor_action;

import java.io.IOException;
import java.text.SimpleDateFormat;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.hospital.dao.AdmmailDAO;
import com.hospital.dao.MailDAO;
import com.hospital.vo.Admmail;
import com.hospital.vo.Doctor;
import com.hospital.vo.Mail;

/**
 * Servlet implementation class DoDocMailForAdmAction
 */
public class DoDocMailForAdmAction extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DoDocMailForAdmAction() {
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
		System.out.println("dodocmailforadm接收到信息了！");
		
		HttpSession session=request.getSession();
		String tip=request.getParameter("tip");//从前台获取tip的状态，判断执行哪个功能
		System.out.println(tip);
		
		//保存草稿功能
		if(tip.equals("1")){//如果tip为1，就把消息存入session
			String messages=request.getParameter("messages");
			String title=request.getParameter("title");
			System.out.println("要保存的草稿为："+messages+","+"标题为："+title);
			session.setAttribute("messages", messages);
			session.setAttribute("title", title);
		}
		//发送消息功能
		if(tip.equals("2")){//如果tip为2，就把消息存入数据库
			System.out.println(tip);
			String messages=request.getParameter("messages");
			String title=request.getParameter("title");
			System.out.println("要发送的消息为："+messages+","+"标题为："+title);
			Mail m=new Mail();
			MailDAO dao=new MailDAO();
			Doctor d=(Doctor)session.getAttribute("doctor");
			//存入数据库
			int author = 1;//因为是医生所以默认为1
			m.setAuthor(author);
			m.setAuthorid(d.getDocid());
			m.setTitle(title);
			m.setMessage(messages);;
			m.setMesstate(0);
			java.util.Date date = new java.util.Date();
			java.sql.Date sqdate = new java.sql.Date(date.getTime());
			m.setMesdate(sqdate);
			try {
				dao.save(m);
			} catch (Exception e) {
				e.printStackTrace();
			}
			System.out.println("消息已存入数据库！");
		}
		
	}

}
