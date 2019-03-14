package com.hospital.doctor_action;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;
import com.hospital.dao.DoctorDAO;
import com.hospital.vo.Doctor;
import com.hospital.yanzhengma.IndustrySMS;

/**
 * Servlet implementation class DoDuanxinYanZhengAction
 */
public class DocYanZhengAction extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DocYanZhengAction() {
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
		System.out.println("docyanzheg接收到请求了！");
		
		DoctorDAO dao=new DoctorDAO();
		//判断手机号的部分
		//判断手机号是否已注册，已经注册了才让他接受验证码
		String phone2 = request.getParameter("phone");
		//System.out.println("接收到的手机号是："+phone2);
		Doctor d=new Doctor();
		PrintWriter out=response.getWriter();
		try {
			d=dao.findByphone(phone2);
		} catch (Exception e1) {
			e1.printStackTrace();
		}
		if(d.getDocid() == 0 ){//手机号不存在
			out.print(1);
			return;
		}else{//手机号存在
			out.print(0);
		}
		
		//处理验证码的部分
		String bool=request.getParameter("bool");
		System.out.println(bool);
		if(bool.equals("1")){
			//System.out.println("发送验证短信");
			String phone = request.getParameter("phone");
			String code = request.getParameter("code");
			//System.out.println(phone);
			Doctor doctor=new Doctor();
			try {
				doctor=dao.findByphone(phone);
			} catch (Exception e) {
				e.printStackTrace();
			}
			HttpSession session=request.getSession();
			session.setAttribute("Doctor", doctor);
			//System.out.println("要放进session范围的用户id是："+doctor.getDocid());
			//发送信息
			IndustrySMS.execute(phone,code);
			//将生成的验证码传给前台比较
		}else{
			return;
		}

	}

}
