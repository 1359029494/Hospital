package com.hospital.admaction;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import com.hospital.dao.DrugDAO;
import com.hospital.vo.Drug;

/**
 * Servlet implementation class Addmed
 */
public class Addmed extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Addmed() {
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
		String path = request.getRealPath("");
		path += "hos_admin\\admin\\images\\";
		ServletFileUpload up=new ServletFileUpload(new DiskFileItemFactory());
		String drphoto = null;
		String drname = null;
		double drprice = 0;
		int drnumber = 0;
		String dreffect = null;
		int prescription = 0;
		List<FileItem> list = null;
		try {
			list = up.parseRequest(request);
		} catch (FileUploadException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		for(int i = 0; i < list.size(); i++) {
			FileItem item = list.get(i);
			if(item.isFormField()) {
				String name = item.getFieldName();
				String value = item.getString("utf-8");
					if (name.equals("drname")) {
						drname = value;
					}
					if (name.equals("drprice")) {
						drprice = new Double(value);
					}
					if (name.equals("drnumber")) {
						drnumber = new Integer(value);
					}
					if (name.equals("dreffect")) {
						dreffect = value;
					}
					if (name.equals("prescription")) {
						prescription = new Integer(value);
					}
			}else {
					String name = item.getName();
					drphoto = "images/"+name;
					name = path +name;
					File f = new File(name);
					try {
						item.write(f);
					} catch (Exception e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
				}
			}
		Drug d = new Drug(drphoto, drname, drprice, drnumber, dreffect, prescription);
		DrugDAO dd = new DrugDAO();
		int flag = -1;
		try {
			flag = dd.save(d);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		if(flag >= 0) {
			response.sendRedirect("Managemed");
		}else {
			out.println("<script>");
			out.println("alert('����ʧ�ܣ�');window.location.href='addmed.html'");
			out.println("</script>");
		}
		
		
	}

}
