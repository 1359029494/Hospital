package com.hospital.patience_action;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.hospital.dao.PatientDAO;
import com.hospital.vo.Patient;

/**
 * Servlet implementation class DoPreShowUpdateMessageAction
 */
public class DoPreShowUpdateMessageAction extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DoPreShowUpdateMessageAction() {
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
		//功能：预展示修改的信息
		
		//获取登录用户
		HttpSession session = request.getSession();
		Patient pat = (Patient)session.getAttribute("user_pat");
		//得到当前用户id,重新从数据库中得到当前用户，刷新信息
		int patid  = pat.getPatid();
		PatientDAO 	dao = new PatientDAO();
	    Patient pre_pat = null;;
		try {
			pre_pat = dao.findById(patid);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		//将用户传给updatemessage页面，展示预修改信息
		request.setAttribute("pre_pat", pre_pat);
		//请求转发
		request.getRequestDispatcher("pat_hospital/updatemessage.jsp").forward(request, response);
	}

}
