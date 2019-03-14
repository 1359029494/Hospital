package com.hospital.patience_action;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hospital.dao.OrdersDAO;
import com.hospital.util.PanymentUtil;
import com.hospital.vo.Orders;

/**
 * Servlet implementation class DoDingDanZhiFuAction
 */
public class DoDingDanZhiFuAction extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DoDingDanZhiFuAction() {
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
        String orstr= request.getParameter("orid");//�̻�������ţ�����һ�θ�һ�Σ�
        String amout= request.getParameter("orprice");//֧�����
        Orders o = new Orders();
		OrdersDAO dao = new OrdersDAO();
		o.setOrstate(1);
		o.setOrnumber(orstr);
		try {
			dao.mergetojiaofei(o);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
        String pd_FrpId="CCB-NET";//�������б���
        String p1_MerId="10001126856";//�̻����
        String keyValue="69cl522AV6q613Ii4W6u8K6XuW8vM1N6bFgyv769220IuYe9u37N4y7rI4Pl";//�̻���Կ
        String merchantCallbackURL="http://localhost:8080/hospital/doatbacktozhifu";//�̻�����֧���ɹ����ݵĵ�ַ
        String messageType="Buy";
        String currency="CNY";//���׻���Ϊ�����
        String productDesc="";//��Ʒ����
        String productCat="";//��Ʒ����
        String productId="";//��ƷID
        String addressFlg="0";//�ͻ���ַ,0Ϊ����Ҫ��1Ϊ��Ҫ
        String sMctProperties="";
        String pr_NeedResponse="0";//Ӧ�����
        
        String md5hmac=PanymentUtil.buildHmac(messageType, p1_MerId, orstr, amout, currency, productId, productCat, productDesc, merchantCallbackURL, addressFlg, sMctProperties, pd_FrpId, pr_NeedResponse, keyValue);
        request.setAttribute("businessType", messageType);
        request.setAttribute("accountID", p1_MerId);
        request.setAttribute("orderID", orstr);
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

	public void init() throws ServletException {
		// Put your code here
	}
}