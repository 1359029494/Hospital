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

import com.google.gson.Gson;
import com.hospital.dao.DrugDAO;
import com.hospital.vo.Drug;

import net.sf.json.JSON;
import net.sf.json.JSONArray;



/**
 * Servlet implementation class DoMedicineAtion
 */
public class DoMedicineAtion extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DoMedicineAtion() {
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
		String drugname="%%";
		int startnow =1; 
		
		if(request.getParameter("drugname")==null) {
			drugname = "%%";
		}else {
			drugname = "%"+request.getParameter("drugname")+"%";
		}
		DrugDAO dao = new DrugDAO();
		PrintWriter out = response.getWriter();
		List<Drug> list = new ArrayList<Drug>();
		HttpSession session = request.getSession();
		
		if(request.getParameter("pagenow")==null) {
			startnow =1;
		}else {
			startnow =new  Integer( request.getParameter("pagenow"));
		}
		
		int pagesize = 9;
		int total;
		try {
			total = dao.getTotalbychoose(drugname);
			int totalpage = (total-1)/pagesize+1;
			list= dao.findByLike(startnow, pagesize, drugname);
			request.setAttribute("total", total);
			request.setAttribute("totalpage", totalpage);
			request.setAttribute("pagenow", startnow);
			request.setAttribute("list", list);
			request.getRequestDispatcher("pat_hospital/medicine.jsp").forward(request, response);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}

}
