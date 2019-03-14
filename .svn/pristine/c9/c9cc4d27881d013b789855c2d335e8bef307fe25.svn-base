package com.hospital.admaction;

import com.hospital.vo.Doctor;

public class Test {
	private String docname;//医生姓名
	private String docpass;//医生密码
	private String docphoto;//医生头像
	private int docsex;//医生性别
	private int docage;//医生年龄
	private String docidcard;//医生身份证号
	private String docphonenumber;//医生手机号
	private String docmail;//医生邮箱
	private String docaddress;//医生住址
	private String docdept;//医生所属科室

	public Doctor register(String str) {
		
		 if(str.indexOf("姓名：") != -1){//判断是否存在截取的字符
	            String result = str.substring(str.indexOf("姓名：")+3,str.indexOf("姓名：")+6);
	            docname = result;
	        }else{
	        	docname = null;
	        }
	        if(str.indexOf("身份证：") != -1){//判断是否存在截取的字符
	            String result = str.substring(str.indexOf("身份证：")+4,str.indexOf("身份证：")+22);
	            docidcard = result;
	        }
	        else{
	        	docidcard = null;
	        }
	        if(str.indexOf("手机号：") != -1){//判断是否存在截取的字符
	            String result = str.substring(str.indexOf("手机号：")+4,str.indexOf("手机号：")+15);
	            docphonenumber = result;
	        }
	        else{
	        	docphonenumber = null;
	        }
	        if(str.indexOf("年龄：") != -1){//判断是否存在截取的字符
	            String result = str.substring(str.indexOf("年龄：")+3,str.indexOf("年龄：")+5);
	            docage = Integer.parseInt(result);
	        }
	        else{
	        	docage = -1;
	        }
	        if(str.indexOf("科室：") != -1){//判断是否存在截取的字
	            String result = str.substring(str.indexOf("科室：")+3,str.lastIndexOf("科")+1);
	            docdept = result;
	        }
	        else{
	        	docdept = null;
	        }
	        if(str.indexOf("邮箱：") != -1){//判断是否存在截取的字符
	            String result = str.substring(str.indexOf("邮箱：")+3,str.indexOf("com")+3);
	            docmail = result;
	        }
	        else{
	        	docmail = null;
	        }
	        if(str.indexOf("性别：") != -1){//判断是否存在截取的字符
	            String result = str.substring(str.indexOf("性别：")+3,str.indexOf("性别")+4);
	            if(result.equals("男")) {
	            	docsex = 1;
	            }else {
	            	docsex = 0;
	            }
	        }
	        else{
	        	docsex = 1;
	        }
	        
	        Doctor d = new Doctor(docname, null, null, docsex, docage, docidcard, docphonenumber, docmail, docaddress, docdept);
	        return d;
	}

}
