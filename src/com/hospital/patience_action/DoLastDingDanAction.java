package com.hospital.patience_action;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
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
import com.hospital.vo.CarHelp;
import com.hospital.vo.Drug;
import com.hospital.vo.Orders;
import com.hospital.vo.Patient;

/**
 * Servlet implementation class DoLastDingDanAction
 */
public class DoLastDingDanAction extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DoLastDingDanAction() {
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
		HttpSession session = request.getSession();
		List<CarHelp> list = (List<CarHelp>)session.getAttribute("dingdancarlist");
		Patient user = (Patient)session.getAttribute("user_pat");
		//ҩƷ������
		int count_sum = 0;
		//ҩƷ��dao
		DrugDAO drugdao = new DrugDAO();
		Drug dr = new Drug();
		//��ȡ����id
		int patid = user.getPatid();
		Date date = new Date();
		SimpleDateFormat fmt = new SimpleDateFormat("YYYYMMddhhmm");
		//���ɶ������
		String ornumber = fmt.format(date);
		//�õ�������״̬��Ĭ��δ���
		fmt = new SimpleDateFormat("YYYY-MM-dd");
		//�õ�������ʱ��
		String or_date = fmt.format(date);
		int orstate = 0;
		int size = list.size();
		DrugDAO drug_dao = new DrugDAO();
		OrdersDAO orders_dao = new OrdersDAO();
		try {
			for(int i=0;i<size; i++) {
				CarHelp ch = list.get(i);
				String drid = ch.getDrugid(); //�õ�ҩƷid
				String drnumber = ch.getDrnumber(); //�õ�ҩƷ������
				int id = Integer.parseInt(drid);
				int sum = Integer.parseInt(drnumber);
				dr = drugdao.findById(id);
				//��ȡ��ҩƷ������
				count_sum = dr.getDrnumber();
				//��ȡʣ��ҩƷ������
				int count = count_sum-sum;
				dr.setDrnumber(count);
				drugdao.mergeNumber(dr);
				/*------------------------------------------------------------------------*/
				double orprice = 0 ;
				orprice = drug_dao.findById(id).getDrprice()*sum; //�õ�������Ʒ�ܼ�
				Date d = null;
				d = fmt.parse(or_date);
				java.sql.Date ordate=new java.sql.Date(d.getTime());
				Orders o = new Orders( ornumber, orprice, sum, id, patid, ordate, orstate);
				orders_dao.save(o);
			}
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		List<Drug> drug_list = (List<Drug>)session.getAttribute("drug_list");
		for(int i = 0;i<drug_list.size();i++) {
			for(int j=0;j<list.size();j++) {
				if(drug_list.get(i).getDrid()==Integer.parseInt(list.get(j).getDrugid())) {
					drug_list.remove(i);
				}
			}
		}
		session.removeAttribute("dingdancarlist");
		
	}

}
