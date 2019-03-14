package com.hospital.admaction;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hospital.dao.DoctorDAO;
import com.hospital.dao.DrugDAO;
import com.hospital.dao.MdeptDAO;
import com.hospital.vo.Doctor;
import com.hospital.vo.Drug;
import com.hospital.vo.Mdept;

import net.sf.json.JSONArray;

/**
 * Servlet implementation class OneAction
 */
public class OneAction extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public OneAction() {
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
		Doctor d = new Doctor();
		DoctorDAO dao = new DoctorDAO();
		d.setDocname("刘文浩");
		d.setDocidcard("371481199808153073");
		d.setDocpass("123456");
		d.setDocphonenumber("17861404987");
		d.setDocmail("2335715300@qq.com");
		d.setDocage(20);
		d.setDocaddress("山东济南扛把子屯");
		d.setDocsex(1);
		d.setDocphoto("img/photo.jpg");
		d.setDocdept("心理咨询室");//
		for(int i=0;i<3;i++) {
			try {
				dao.save(d);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}
}
