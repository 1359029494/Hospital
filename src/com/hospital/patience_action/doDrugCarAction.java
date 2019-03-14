package com.hospital.patience_action;

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

/**
 * Servlet implementation class doDrugCarAction
 */
public class doDrugCarAction extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public doDrugCarAction() {
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
		int id =new Integer(request.getParameter("drug_drid")) ;
		List<Drug> drug_list;
		DrugDAO dao = new DrugDAO();
		if(session.getAttribute("drug_list")==null){
			drug_list = new ArrayList<Drug>();
			try {
				Drug d = dao.findById(id);
				drug_list.add(d);
				session.setAttribute("drug_list", drug_list);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}else {
			drug_list =  (List<Drug>)session.getAttribute("drug_list");
			Drug d = new Drug();
			try {
				d = dao.findById(id);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			drug_list.add(d);
			session.setAttribute("drug_list", drug_list);
		}
		PrintWriter out = response.getWriter();
		out.println(drug_list.size());
	
	}

}
