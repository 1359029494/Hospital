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

import com.hospital.dao.RegisterDAO;
import com.hospital.vo.Patient;
import com.hospital.vo.Register;

import net.sf.json.JSONArray;

/**
 * Servlet implementation class DoShowGuaHaoDocAction
 */
public class DoShowGuaHaoDocAction extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DoShowGuaHaoDocAction() {
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
		Patient pat =  (Patient)session.getAttribute("user_pat");
		List<Register> list = new ArrayList<Register>();
		RegisterDAO dao = new RegisterDAO();
		try {
			list = dao.findByIdForGuaHao(pat.getPatid());
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		Register re = new Register();
		PrintWriter out = response.getWriter();
		if(list.size()!=0) {
			JSONArray arr=JSONArray.fromObject(list);
			out.println(arr.toString());
		}else {
			out.println(0);
		}
	}
}
