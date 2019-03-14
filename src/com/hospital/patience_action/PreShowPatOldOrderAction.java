package com.hospital.patience_action;
/*
 ����sessionȡ
 ҽ��������ʱ�䲡��ȡ
 �Ƿ�ɷѣ�
 ���ݾ���ʱ�䣬�ж�״̬��
 ��
 ��ѯorder��
 ����ѯ������+����
 ������ӻ��߱�ţ������ɷ�״̬
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
		//�õ����ߵ�ID����orders��
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
		
		
		//��ҳ��ѯ�����ݻ��ߵ�id�ҵ���Ӧ�Ķ�����Ϣ
		List<DingDanHelp> list=null;
		try {
			list = dao.findByPageForOldOrder(patid,pagenow, 5);
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		//����������Ų�ѯ��������
				//����һ���������ϣ������ںͼ۸�ӳ���һ������
				List<DingDan> dingdan = new ArrayList<DingDan>();
				//��������dao
				OrdersDAO ordao = new OrdersDAO();
				for(int i=0;i<list.size();i++) {
					DingDanHelp dh = list.get(i);
					//�õ�������ŵ��ܼ�Ǯ
					Double pri = dh.getOrprice();
				    //��ȡ�������
					String ornum = dh.getOrnumber();
					//��ȡ������ţ���ȡ����ʱ��
					String one = ornum.substring(0, ornum.length()-4);
					String year = one.substring(0,4);
					String month = one.substring(4,6);
					String day = one.substring(one.length()-2);
					String ordate = year+"-"+month+"-"+day;
					//�õ�������״̬
					int orstate=0;
					try {
						orstate = ordao.selectOrstate(ornum);
					} catch (Exception e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
					//����һ����������
					DingDan d = new DingDan(ordate,pri,orstate,ornum);
					dingdan.add(d);
				}
		request.setAttribute("pat_list", dingdan);
		request.getRequestDispatcher("pat_hospital/dingdan.jsp").forward(request,response);
	}

}
