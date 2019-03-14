package com.hospital.patience_action;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.hospital.dao.RegisterDAO;
import com.hospital.vo.Patient;
import com.hospital.vo.Register;

/**
 * Servlet implementation class DoSearchPeopleAction
 */
public class DoSearchPeopleAction extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DoSearchPeopleAction() {
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
		PrintWriter out = response.getWriter();
		
		
		RegisterDAO dao = new RegisterDAO();
		HttpSession session = request.getSession();
		Patient pat = (Patient)session.getAttribute("user_pat");
		int patid = pat.getPatid();
		List<Register> list = null;
		List<Register> list_t = null;
		try {
			list =  dao.findByIdForGuaHao(patid);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		Register reg = null ;
		String docname = null;
		int now = 0 ;
		if(list.size()!=0) {
			reg = list.get(0);
			now = reg.getRegid();
			docname = reg.getRedoc();
		}
		try {
			list_t = dao.findByForDoctor(docname);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		int count =0;
		for(int i=0;i<list_t.size();i++) {
			Register r = list_t.get(i);
			int x = r.getRegid();
			if(now<=x) {
				count++;
			}
			
		}
		out.println(count);
	}

}
