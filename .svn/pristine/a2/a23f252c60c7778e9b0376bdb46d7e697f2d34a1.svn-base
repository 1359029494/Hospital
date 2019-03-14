package com.hospital.patience_action;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.hospital.dao.DrugDAO;
import com.hospital.dao.MedicalRecordDAO;
import com.hospital.dao.OrdersDAO;
import com.hospital.vo.Drug;
import com.hospital.vo.MedicalRecord;
import com.hospital.vo.Orders;

import net.sf.json.JSONArray;

/**
 * Servlet implementation class DoLookMeRecordAction
 */
public class DoLookMeRecordAction extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DoLookMeRecordAction() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.doPost(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//获取患者的病历id
		String meid = request.getParameter("meid");
		int mid = new Integer(meid);
		//将患者的meid放在session中，用于打印患者病历
		HttpSession session = request.getSession();
		session.setAttribute("meid", meid);
		//根据病历id查询病历信息
		MedicalRecordDAO dao = new MedicalRecordDAO();
		MedicalRecord mrecord =null;
		try {
			 mrecord = dao.findById(mid);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		//查询病历的订单编号，用于查询医生开的药品清单
		String ornumber = mrecord.getDruglist();
		//根据药品订单查询所有的药品
		List<Orders> or_list = null;
		OrdersDAO ordao = new OrdersDAO();
		try {
			or_list = ordao.findByornumber(ornumber);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		DrugDAO dgdao = new DrugDAO(); 
		//根据药品id查询药品名称，放在一个list集合里
		List<String> drug_list = new ArrayList<String>();
		for(int i=0;i<or_list.size();i++) {
			Orders or  = or_list.get(i);
			int drid = or.getDrid();
			//根据药品的id查询药品名称
			Drug drug = null;
			try {
			     drug = dgdao.findById(drid);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			String drname = drug.getDrname();
			drug_list.add(drname);
		}
		//去除重复数据
		Set<String> set=new HashSet<String>(drug_list);
		//将set转为未重复的list集合
		List<String> redrug_list = new ArrayList<String>();
		redrug_list.addAll(set);
		//存储筛选过后的药品
		List<String> new_list = new ArrayList<String>();
		 //遍历药品是否重复
		int count = 0;//记录药品的数量
		int num = 0; //记录药品的下标
		for(int i=0;i<redrug_list.size();i++){
			for(int j=0;j<drug_list.size();j++){
				if(redrug_list.get(i).equals(drug_list.get(j))){
					count++;
				}
			}
			if(count>=1){
				String drug = redrug_list.get(i)+" "+"x"+count;
				new_list.add(drug);
				count=0;
			}
		}
		//把药品放再request对象中
		/*
		JSONArray arr=JSONArray.fromObject(drug_list);
		PrintWriter out=response.getWriter();
		out.println(arr.toString());
		*/
		request.setAttribute("drug_list", new_list);
		request.setAttribute("mrecord", mrecord);
		request.getRequestDispatcher("pat_hospital/pat_merecord.jsp").forward(request, response);
	}

}
