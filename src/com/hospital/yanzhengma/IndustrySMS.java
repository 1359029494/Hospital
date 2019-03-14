package com.hospital.yanzhengma;

import java.net.URLEncoder;


public class IndustrySMS
{
	private static String operation = "/industrySMS/sendSMS";
	
	public static String getSms() {
		return sms;
	}
	public static void setSms(String sms) {
		IndustrySMS.sms = sms;
	}
	private static String accountSid = Config.ACCOUNT_SID;
	private static String sms;
	
	
	
	public static String execute(String phone,String code)
	{	
		String smsContent = "【工大校医院】验证码："+code+"。 你正在使用短信验证码注册功能，该验证码仅用于身份验证，请勿泄露给他人使用。";
		String tmpSmsContent = null;
	    try{
	      tmpSmsContent = URLEncoder.encode(smsContent, "UTF-8");
	    }catch(Exception e){
	      
	    }
	    String url = Config.BASE_URL + operation;
	    String body = "accountSid=" + accountSid + "&to=" + phone + "&smsContent=" + tmpSmsContent
	        + HttpUtil.createCommonParam();

	    String result = HttpUtil.post(url, body);
	    System.out.println("result:" + System.lineSeparator() + result);
	    return sms;
	}
	public static String smsCode(){
        String random=(int)((Math.random()*9+1)*100000)+""; 
        sms=random;
        return random;
    }
}
