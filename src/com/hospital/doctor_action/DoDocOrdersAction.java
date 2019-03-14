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
		System.out.println("dodocorders���յ������ˣ�");

		System.out.println("----------------------------------");
		//����ǰ̨������ҩ��������
		DrugDAO drdao=new DrugDAO();
		Drug d=new Drug();
		String drugname=request.getParameter("drugname");
		int drugnumber=Integer.parseInt((String)request.getParameter("drugnumber"));
		System.out.println("ҩƷ�����ǣ�"+drugname+"��ҩƷ����Ϊ��"+drugnumber);
		try {
			d=drdao.findByName(drugname);
		} catch (Exception e) {
			e.printStackTrace();
		}
		//��ȡҩƷid
		int drid=d.getDrid();
		//�����������Ʒ�ܼ�
		double drugprice=d.getDrprice()*drugnumber;
		//System.out.println("������Ʒ�ܼ�Ϊ��"+drugprice);
		//ͨ���ѵ�ǰ����ʱ��ת��Ϊ�ַ����õ��������
		Date date = new Date();
		SimpleDateFormat fmt = new SimpleDateFormat("YYYYMMddhhmm");
		//���ɶ������
		HttpSession session=request.getSession();
		String ornumber = fmt.format(date);
		session.setAttribute("ordernumber", ornumber);
		System.out.println("�������Ϊ��"+ornumber.toString());
		//��ȡ��ǰʱ��
		java.sql.Date sqldate=new java.sql.Date(date.getTime());
		Date ordate=sqldate;
		//��ȡ����id
		int patid=(int) session.getAttribute("orpatid");
		//System.out.println("����id�ǣ�"+patid);
		
		Orders o=new Orders();
		OrdersDAO ordao=new OrdersDAO();
		//��װorders���󲢴������ݿ�
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
		System.out.println("�����Ѵ������ݿ⣡");
		PrintWriter out=response.getWriter();
		out.println(ornumber);
		
		//response.sendRedirect("doc_hospital/docindex.jsp");
	}

}