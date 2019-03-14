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
		 ���ܣ�
		 1.��ȡ��֤�룬aiaxʱ�䣬���һ�������ת����ȡ��֤���servlet
		 2.�ж������Ƿ���ͬ����ȡpatpass��ֵ�Ƚϣ�ajax��ʾ���벻��ͬ
		 3.��ֹ�ظ��ύ
		  �Ա�ʱ�䣿û�ת��ʱ��500����
		  sdf.parse(null) ����ָ���쳣
		*/
		//�������˶���
		Patient p = new Patient();
		//��ȡ���˵�ע����Ϣ
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
		String pataddress = prov+"ʡ"+city+"��"+dist;
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