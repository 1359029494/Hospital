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

import com.hospital.vo.CarHelp;

/**
 * Servlet implementation class DoaddcarAction
 */
public class DoaddcarAction extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DoaddcarAction() {
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
	@SuppressWarnings("unchecked")
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		
		String  drug_id =request.getParameter("drug_id");
		String  number =request.getParameter("number");
		if(drug_id!=null) {
			CarHelp h = new CarHelp(drug_id,number);
			List<CarHelp> dingdanlist;
			if(session.getAttribute("dingdancarlist")==null) {
				dingdanlist = new ArrayList<>();
				dingdanlist.add(h);
				session.setAttribute("dingdancarlist", dingdanlist);
			}else {
				dingdanlist = (List<CarHelp>)session.getAttribute("dingdancarlist");
				dingdanlist.add(h);
				session.setAttribute("dingdancarlist", dingdanlist);
			}
		}
//		PrintWriter out = response.getWriter();
//		out.println(1);
	}

}
