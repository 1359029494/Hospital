package com.hospital.patience_action;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.hospital.dao.DrugDAO;
import com.hospital.vo.Drug;

/**
 * Servlet implementation class DoMoveCarListAction
 */
public class DoMoveCarListAction extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DoMoveCarListAction() {
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
		int id  = new Integer(request.getParameter("drug_move_id"));
		HttpSession session = request.getSession();
		PrintWriter out = response.getWriter();
		List<Drug> list = (List<Drug>)session.getAttribute("drug_list");
		int len = list.size();
		for(int i = 0;i<len;i++) {
			if(list.get(i).getDrid()==id) {
				list.remove(i);
				break;
			}
		}
		session.setAttribute("drug_list", list);
	}

}
