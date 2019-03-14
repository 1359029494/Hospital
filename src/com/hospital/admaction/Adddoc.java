package com.hospital.admaction;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import com.hospital.dao.DoctorDAO;
import com.hospital.vo.Doctor;

/**
 * Servlet implementation class Adddoc
 */
@WebServlet("/Adddoc")
public class Adddoc extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Adddoc() {
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
		String docphonenumber = null;
		String docname = null;
		int docage = 0;
		String docdept = null;
		String docidcard = null;
		String docaddress1 = null;
		String docaddress2 = null;
		String docaddress = null;
		String docmail = null;
		String docpass= null;
		String docphoto = null;
		int docsex = 0;
		ServletFileUpload up=new ServletFileUpload(new DiskFileItemFactory());
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
				String name=item.getFieldName();
				String value=item.getString("utf-8");
				if (name.equals("docphonenumber")) {
				docphonenumber = value;
				}
				if (name.equals("docname")) {
				docname = value;
				}
				if (name.equals("docage")) {
				docage = new Integer(value);
				}
				if (name.equals("docdept")) {
				docdept = value;
				}
				if (name.equals("docidcard")) {
				docidcard = value;
				}
				if (name.equals("docaddress1")) {
				docaddress1 = value;
				}
				if (name.equals("docaddress2")) {
				docaddress2 = value;
				}
				if (name.equals("docaddress2")) {
				docaddress = docaddress1 +","+ docaddress2;
				}
				if (name.equals("docmail")) {
				docmail = value;
				}
				if (name.equals("docpass")) {
				docpass= value;
				}
				if (name.equals("docsex")) {
				docsex = new Integer(value);
				}
			}else {
				String name = item.getName();
				docphoto = "images/"+name;
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
		Doctor d = new Doctor(docname, docpass, docphoto, docsex, docage, docidcard, docphonenumber, docmail, docaddress, docdept);
		DoctorDAO dd = new DoctorDAO();
		int flag = 0;
		try {
			dd.save(d);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if(flag >= 0) {
			response.sendRedirect("hos_admin/Managedoc");
		}else {
			out.println("<script>");
			out.println("alert('����ʧ�ܣ�');window.location.href='hos_admin/adddoc.html'");
			out.println("</script>");
		}
		
	}

}
