package com.hospital.doctor_action;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.hospital.dao.DrugDAO;
import com.hospital.vo.Drug;

import net.sf.json.JSONArray;

/**
 * Servlet implementation class DoDocAddDrugAction
 */
public class DoDocAddDrugAction extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DoDocAddDrugAction() {
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
		System.out.println("dodocadddrug���յ������ˣ�");

		String drugname=request.getParameter("drugname");
		System.out.println("Ҫ���ӵ�ҩƷ�����ǣ�"+drugname);
		Drug d=new Drug();
		DrugDAO dao=new DrugDAO();
		
		//��ȫ���ҽ��ѡ����ҩƷ�����������ҵ���ҩƷ����Ϣ
		try {
			d=dao.DocfindByname(drugname);
		} catch (Exception e) {
			e.printStackTrace();
		}
		//System.out.println("����������"+d.getDreffect());
		List<Drug> list=new ArrayList<>();
		list.add(d);
		//ת��Ϊjson����
		JSONArray arr=JSONArray.fromObject(list);
		PrintWriter out=response.getWriter();
		out.println(arr.toString());
		
	}

}