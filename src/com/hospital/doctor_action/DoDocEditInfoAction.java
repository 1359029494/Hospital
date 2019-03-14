package com.hospital.doctor_action;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import com.hospital.dao.DoctorDAO;
import com.hospital.vo.Doctor;

/**
 * Servlet implementation class DoDocEditInfoAction
 */
public class DoDocEditInfoAction extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DoDocEditInfoAction() {
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
		
		System.out.println("dodoceditinfo���յ���Ϣ�ˣ�");
		
		//���ղ��ұ���ҽ���޸ĸ�����Ϣҳ������ݣ�docinfo-edit��
		//�����ϴ�����
//		ServletFileUpload up=new ServletFileUpload(new DiskFileItemFactory());
//		HttpSession session=request.getSession();
//		Doctor d2=(Doctor)session.getAttribute("Doctor");
		//����������󣬻�ȡ�ϴ��б�
//		List<FileItem> list=null;
//		try {
//			 list=up.parseRequest(request);
//		} catch (FileUploadException e) {
//			e.printStackTrace();
//		}
		//System.out.println(list.size());
		
//		for(int i=0;i<list.size();i++){
//			FileItem item=list.get(i);
//			if(item.isFormField()){//���Ϊ����Ϊ��ͨ���ݣ���Ϊ����Ϊ�ļ�����
//				String name=item.getFieldName();
//				String value=item.getString("utf-8");
//				if(name.equals("docsex")){
//					//���Ա���ַ���ת��Ϊ�������ݿ������
//					int sex;
//					if(value.equals("��")){
//						sex=1;
//					}else{
//						sex=0;
//					}
//					d.setDocsex(sex);
//				}else if(name.equals("docaddress")){
//					d.setDocaddress(value);
//				}else if(name.equals("docmail")){
//					d.setDocmail(value);
//				}
//			}else{//�ļ�
//				//��ȡ��ǰ·��
//				//String path=request.getRealPath("");
//				String path="docphoto\\";
//				//System.out.println(path);
//				String name=item.getName();
//				//System.out.println(name);
//				name=path+name;
//				File f=new File(name);
//				try {
//					item.write(f);
//				} catch (Exception e) {
//					e.printStackTrace();
//				}
//				d.setDocphoto(name);
//			}
//		}
		HttpSession session=request.getSession();
		Doctor d2=(Doctor)session.getAttribute("doctor");
		Doctor d=new Doctor();
		
		String docaddress=request.getParameter("docaddress");
		d.setDocaddress(docaddress);
		String docmail=request.getParameter("docmail");
		d.setDocmail(docmail);
		d.setDocid(d2.getDocid());
		//����dao���޸ĵ���Ϣ�������ݿ�
		DoctorDAO dao=new DoctorDAO();
		try {
			dao.DocEditinfo(d);
		} catch (Exception e) {
			e.printStackTrace();
		}
		session.setAttribute("Doctor", d);
		response.sendRedirect("doc_hospital/docinfo.jsp");
		System.out.println("������Ϣ�޸ĳɹ�");
	}

}