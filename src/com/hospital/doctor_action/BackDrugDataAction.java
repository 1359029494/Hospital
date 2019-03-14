package com.hospital.doctor_action;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hospital.dao.DrugDAO;
import com.hospital.vo.Drug;

/**
 * Servlet implementation class BackDrugDataAction
 */
public class BackDrugDataAction extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BackDrugDataAction() {
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
		System.out.println("backdrugdata接收到值了！");
		
		//用于完成自动补全的信息填充
		//从搜索框接收值
		String term=request.getParameter("term");
		System.out.println(term);
		DrugDAO dao=new DrugDAO();
		//根据模糊查询查出相关药品
		String drugname="%"+term+"%";
		//System.out.println(drugname);
		List<Drug> list=null;
		try {
			list=dao.DocfindByLike(drugname);
		} catch (Exception e) {
			e.printStackTrace();
		}
		//将药品名放入数据补全的数据来源
		PrintWriter out=response.getWriter();
		String str="[";
		for(int i=0;i<list.size();i++){
			Drug d=new Drug();
			d=list.get(i);
			str+="  \""+d.getDrname()+"\",";
		}
		str=str.substring(0,str.length()-1);
		str+="]";
		System.out.println(str);
		out.println(str);

		
	}

}
