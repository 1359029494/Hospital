package com.hospital.patience_action;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.io.UnsupportedEncodingException;
import java.io.Writer;
import java.text.SimpleDateFormat;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.filechooser.FileSystemView;

import com.hospital.dao.MedicalRecordDAO;
import com.hospital.dao.PatientDAO;
import com.hospital.vo.MedicalRecord;
import com.hospital.vo.Patient;

import freemarker.core.ParseException;
import freemarker.template.Configuration;
import freemarker.template.MalformedTemplateNameException;
import freemarker.template.Template;
import freemarker.template.TemplateException;
import freemarker.template.TemplateNotFoundException;

/**
 * Servlet implementation class DoPrintMediRecordAction
 */
public class DoPrintMediRecordAction extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DoPrintMediRecordAction() {
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
System.out.println("dooutputme���յ������ˣ�");
		
		
		Map<String,String> dataMap = new HashMap<String,String>();
		HttpSession session=request.getSession();
		//����meid
		//����ֱ�ӽ�object����תΪint���ᱨ����ת������   auth����ѩ��
		String strmeid=(String)session.getAttribute("meid");
		int meid = new Integer(strmeid);
		System.out.println(meid);
		MedicalRecord m=new MedicalRecord();
		MedicalRecordDAO medao=new MedicalRecordDAO();
		try {
			m=medao.findById(meid);
		} catch (Exception e1) {
			e1.printStackTrace();
		}
		Patient p=new Patient();
		PatientDAO patdao=new PatientDAO();
		try {
			p=patdao.findById(m.getPatid());
		} catch (Exception e1) {
			e1.printStackTrace();
		}
		//����Ҫ�������ĵ��������
		dataMap.put("patname", p.getPatname());
		int sex=p.getPatsex();
		String patsex=null;
		if(sex==1){
			patsex="��";
		}else{
			patsex="Ů";
		}
		SimpleDateFormat sdf=new SimpleDateFormat("yy-MM-dd");
		String medate=sdf.format(m.getMedate());
		
		dataMap.put("patsex", patsex);
		dataMap.put("patdata", medate);
		dataMap.put("patage", String.valueOf(m.getMepatage()));
		dataMap.put("patphone", p.getPatphonenumber());
		dataMap.put("pataddress", p.getPataddress());
		dataMap.put("patsymptomg", m.getPatsymptom());
		dataMap.put("docdiagnosis", m.getDocdiagnosis());
		dataMap.put("docname", m.getMedocname());
		
		Configuration configuration = new Configuration();
		configuration.setDefaultEncoding("utf-8");
		try {
			//��ȡ������ģ���·��
			ServletContext application=session.getServletContext();
			String orgurl=new java.io.File(application.getRealPath(request.getRequestURI())).getParent();
			orgurl=orgurl.substring(0, 32);
			orgurl+="\\MeModel\\";
			System.out.println(orgurl);
			// ��ģ�����ڵ��ļ��м���ģ��
			configuration.setDirectoryForTemplateLoading(new File(orgurl));
		} catch (IOException e) {
			e.printStackTrace();
		}
		String filtname=p.getPatname()+"����";
		//��ȡ��ǰ����·��
		File desktopDir = FileSystemView.getFileSystemView() .getHomeDirectory(); 
		String desktopPath = desktopDir.getAbsolutePath();
		desktopPath+="\\";
		// ������word�ĵ����ڵ�λ�ú��ļ���
		File outFile = new File(desktopPath+filtname+".doc");
		//��utf-8�ı����ȡftl�ļ�
		Template t = null;
		try {
			t = configuration.getTemplate("me.ftl","utf-8");
		} catch (TemplateNotFoundException e) {
			e.printStackTrace();
		} catch (MalformedTemplateNameException e) {
			e.printStackTrace();
		} catch (ParseException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		Writer out = null;
		try {
			out = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(outFile), "utf-8"),10240);
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		}
		try {
			t.process(dataMap, out);
		} catch (TemplateException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		try {
			out.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
		System.out.println("����������ɣ�·��Ϊ��"+desktopPath+filtname+".doc");
		session.removeAttribute("meid");
		
	}

}