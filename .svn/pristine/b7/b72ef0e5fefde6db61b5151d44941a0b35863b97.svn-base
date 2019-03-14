package com.hospital.patience_action;

import java.io.IOException;
import java.io.PrintWriter;
import java.security.GeneralSecurityException;
import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sun.mail.util.MailSSLSocketFactory;

/**
 * Servlet implementation class DoFanKuiAction
 */
public class DoFanKuiAction extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DoFanKuiAction() {
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
		
		String name = request.getParameter("c_name");
		String email = request.getParameter("c_email");
		String subject = request.getParameter("c_subject");
		String message1 = request.getParameter("c_message");
		
		String xiaoxi = name+"\n"+email+"\n"+message1+"\n";
	    PrintWriter out = response.getWriter();
		
	   
	    out.println(1);
	     
	     
		try {
			// 收件人电子邮箱
			  String to = "841396397@qq.com";
 
			  // 发件人电子邮箱
			  String from = "1441043674@qq.com";
 
			  // 指定发送邮件的主机为 smtp.qq.com
			  String host = "smtp.qq.com";  //QQ 邮件服务器
 
			  // 获取系统属性
			  Properties properties = System.getProperties();
 
   // 设置邮件服务器
			  properties.setProperty("mail.smtp.host", host);

			  properties.put("mail.smtp.auth", "true");
			  MailSSLSocketFactory sf = new MailSSLSocketFactory();
			  sf.setTrustAllHosts(true);
			  properties.put("mail.smtp.ssl.enable", "true");
			  properties.put("mail.smtp.ssl.socketFactory", sf);
			  properties.put("mail.smtp.auth", "true");
			  // 获取默认session对象
			  Session session = Session.getDefaultInstance(properties,new Authenticator(){
			    public PasswordAuthentication getPasswordAuthentication()
			    {
			     return new PasswordAuthentication("1441043674@qq.com", "xetuadxmzgblfgch"); //发件人邮件用户名、授权码
			    }
			   });
 
			     // 创建默认的 MimeMessage 对象
			     MimeMessage message = new MimeMessage(session);
 
			     // Set From: 头部头字段
			     message.setFrom(new InternetAddress(from));
 
			     // Set To: 头部头字段
			     message.addRecipient(Message.RecipientType.TO,
			                              new InternetAddress(to));
 
			     // Set Subject: 头部头字段
			     message.setSubject(subject);
 
			     // 设置消息体
			     message.setText(xiaoxi);
 
			     // 发送消息
			     Transport.send(message);
			     
			     
			     System.out.println("Sent message successfully");
			    
		} catch (AddressException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			out.println(0);
		} catch (GeneralSecurityException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			out.println(0);
		} catch (MessagingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			out.println(0);
		}
		
		
		
		
		
		
		
	}

}
