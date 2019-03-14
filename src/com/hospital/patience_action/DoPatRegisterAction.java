package com.hospital.patience_action;

import java.io.IOException;
import java.util.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hospital.dao.PatientDAO;
import com.hospital.vo.Patient;

/**
 * Servlet implementation class DoPatRegisterAction
 */
public class DoPatRegisterAction extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DoPatRegisterAction() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.doPost(request ,response);	
		}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/*
		 功能：
		 1.获取验证码，aiax时间，鼠标一点击，跳转到获取验证码的servlet
		 2.判断密码是否相同，获取patpass的值比较，ajax提示密码不相同
		 3.防止重复提交
		  性别、时间？没填，转换时报500错误
		  sdf.parse(null) 报空指针异常
		*/
		//创建病人对象
		Patient p = new Patient();
		//获取病人的注册信息
		String patname = request.getParameter("patname");
		String patidcard = request.getParameter("patidcard");
		String patbirthday = request.getParameter("patbirthday");
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
		Date d=null;
		try {
				d = sdf.parse(patbirthday);
			} catch (ParseException e) {
					// TODO Auto-generated catch block
				e.printStackTrace();
			}
		java.sql.Date date=new java.sql.Date(d.getTime());
		p.setPatbirthday(date);
		String patsex =request.getParameter("patsex");
		int sex=new Integer(patsex);
		p.setPatsex(sex);
		String patphonenumber = request.getParameter("patphonenumber");
		String patpass = request.getParameter("patpass");
		String prov =request.getParameter("prov");
		String city = request.getParameter("city");
		String dist = request.getParameter("dist");	
		String pataddress = prov+"省"+city+"市"+dist;
		String patmail = request.getParameter("patmail");	
		System.out.println(patmail);
		p.setPatname(patname);
		p.setPatidcard(patidcard);
		p.setPatphonenumber(patphonenumber);
		p.setPatmail(patmail);
		p.setPatpass(patpass);
		p.setPataddress(pataddress);
		p.setPatmi(0);
		p.setPatphoto(null);
		PatientDAO pdao = new PatientDAO();
		try {
			pdao.save(p);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		response.sendRedirect("pat_hospital/parlogin.jsp");
	}

}
