package com.hospital.zhiifu_action;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.*;
import com.hospital.util.PanymentUtil;

public class PaymentRequest extends HttpServlet {
    private static final long serialVersionUID = 1L;
	public PaymentRequest() {
		super();
	}
	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
			this.doPost(request, response);
	}

	/**
	 * The doPost method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to post.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");

		Date date = new Date();
		SimpleDateFormat fmt = new SimpleDateFormat("YYYYMMddhhmm");
		//生成订单编号
		String orid = fmt.format(date);//商户订单编号（用完一次改一次）
        String amout="0.01";//支付金额
        String pd_FrpId="CCB-NET";//建设银行编码
        String p1_MerId="10001126856";//商户编号
        String keyValue="69cl522AV6q613Ii4W6u8K6XuW8vM1N6bFgyv769220IuYe9u37N4y7rI4Pl";//商户密钥
        String merchantCallbackURL="http://localhost:8080/hospital/BackServlet.do";//商户接收支付成功数据的地址
        String messageType="Buy";
        String currency="CNY";//交易货币为人民币
        String productDesc="";//商品描述
        String productCat="";//商品种类
        String productId="";//商品ID
        String addressFlg="0";//送货地址,0为不需要，1为需要
        String sMctProperties="";
        String pr_NeedResponse="0";//应答机制
        
        String md5hmac=PanymentUtil.buildHmac(messageType, p1_MerId, orid, amout, currency, productId, productCat, productDesc, merchantCallbackURL, addressFlg, sMctProperties, pd_FrpId, pr_NeedResponse, keyValue);
        request.setAttribute("businessType", messageType);
        request.setAttribute("accountID", p1_MerId);
        request.setAttribute("orderID", orid);
        request.setAttribute("amount", amout);
        request.setAttribute("currency", currency);    
        request.setAttribute("productID", productId);
        request.setAttribute("productCategory", productCat);
        request.setAttribute("productDesc", productDesc);
        request.setAttribute("accountCallbackURL", merchantCallbackURL);
        request.setAttribute("addressFlag", addressFlg);    
        request.setAttribute("accountMoreInfo", sMctProperties);
        request.setAttribute("accountBankID", pd_FrpId);
        request.setAttribute("needResponse", pr_NeedResponse);
        request.setAttribute("md5hmac", md5hmac);
        request.getRequestDispatcher("pat_hospital/formrequest.jsp").forward(request, response);
    }

	/**
	 * Initialization of the servlet. <br>
	 *
	 * @throws ServletException if an error occurs
	 */
	public void init() throws ServletException {
		// Put your code here
	}

}
