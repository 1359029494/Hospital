package com.hospital.admaction;

import com.hospital.vo.Mdept;

public class Testsub {
	private String dname;//科室名称
	
	public String register(String str) {
		if(str.indexOf("科室名：") != -1){//判断是否存在截取的字符
            String result = str.substring(str.indexOf("科室名：")+4,str.lastIndexOf("科")+1);
            dname = result;
        }else{
        	dname = "";
        }
		
		return dname;
		
	}
}
