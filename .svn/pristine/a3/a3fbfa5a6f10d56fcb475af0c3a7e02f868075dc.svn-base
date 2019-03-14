package com.hospital.admaction;

import com.hospital.vo.Drug;

public class Testmed {
	private String drname;//药品名称
	private double drprice;//药品单价
	private int drnumber;//库存数量
	private String dreffect;//药品作用描述
	private int prescription;//是否处方药
	
	public Drug register(String str) {
		if(str.indexOf("药品名：") != -1){//判断是否存在截取的字符
            String result = str.substring(str.indexOf("药品名：")+4,str.indexOf("药品名")+9);
            drname = result;
        }else{
        	drname = "";
        }
		if(str.indexOf("价格：") != -1){//判断是否存在截取的字符
            String result = str.substring(str.indexOf("价格：")+3,str.lastIndexOf("元"));
            drprice = Integer.parseInt(result);
        }else{
        	drprice = 0;
        }
		if(str.indexOf("数量：") != -1){//判断是否存在截取的字符
            String result = str.substring(str.indexOf("数量：")+3,str.lastIndexOf("个"));
            drnumber = Integer.parseInt(result);
        }else{
        	drnumber = 0;
        }
		if(str.indexOf("处方药：") != -1){//判断是否存在截取的字符
            String result = str.substring(str.indexOf("处方药：")+4,str.indexOf("处方药")+5);
            if(result.equals("是")) {
            	prescription = 1;
            }else {
            	prescription = 0;
            }
        }else{
        	prescription = 0;
        }
		if(str.indexOf("作用：") != -1){//判断是否存在截取的字符
            String result = str.substring(str.indexOf("作用：")+3,str.indexOf("。")+1);
            System.out.println(result);
            String result2 = result.substring(0, result.indexOf("。")+1);
            dreffect = result2;
        }else{
        	dreffect = "";
        }
		
		Drug d = new Drug(null, drname, drprice, drnumber, dreffect, prescription);
		
		return d;
		
	}

	private int indexOf(String string) {
		// TODO Auto-generated method stub
		return 0;
	}
}
