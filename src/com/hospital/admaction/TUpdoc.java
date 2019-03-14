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

import com.hospital.dao.DoctorDAO;
import com.hospital.vo.Doctor;

/**
 * Servlet implementation class TUpdoc
 */
public class TUpdoc extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TUpdoc() {
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
		String docphoto1 = null;
		int docid = 0;
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
				if (name.equals("docid")) {
					docid = new Integer(value);
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
				docaddress = docaddress1+","+ docaddress2;
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
				if (name.equals("docphoto1")) {
					docphoto1 = value;
					}
			}else {
				String name = item.getName();
				if(name.equals("")) {
					docphoto =  docphoto1;;
				}else {
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
			
			Doctor d = new Doctor(docid, docname, docpass, docphoto, docsex, docage, docidcard, docphonenumber, docmail, docaddress, docdept);
			DoctorDAO dd = new DoctorDAO();
			int flag = -1;
			try {
				flag = dd.merge(d);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			if(flag >= 0) {
				out.println("<html>");
				out.println("<head>");
				out.println("<meta charset='utf-8' />");
				out.println("<script>");
				out.println("alert('�޸ĳɹ���');window.location.href='/hospital/hos_admin/Managedoc'");
				out.println("</script>");
				out.println("</head>");
				out.println("</html>");
				
			}else {
				out.println("<script>");
				out.println("alert('�޸�ʧ�ܣ�');window.location.href='hos_admin/updoc.jsp' onClick=��javascript :history.back(-1);��");
				out.println("</script>");
			}
		}
	}

}
