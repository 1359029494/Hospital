package com.hospital.admaction;

import java.io.IOException;
import java.io.OutputStream;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;

import com.hospital.dao.DrugDAO;
import com.hospital.dao.OrdersDAO;
import com.hospital.dao.PatientDAO;
import com.hospital.vo.Drug;
import com.hospital.vo.Orders;
import com.hospital.vo.Patient;

/**
 * Servlet implementation class DownloadExcel
 */
public class DownloadExcel extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DownloadExcel() {
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
		response.setCharacterEncoding("utf-8");
		OrdersDAO od = new OrdersDAO();
		DrugDAO dd = new DrugDAO();
		PatientDAO pd = new PatientDAO();
		int count = -1;
		List<Orders> list = null;
		try {
			count = od.getTotal();
			list = od.findAll();
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		HSSFWorkbook wb = new HSSFWorkbook();//创建excel工作�?   excel2003以及之前版本请使用HSSFWorkbook
		HSSFSheet s = wb.createSheet();// 创建sheet  若有多页sheet页面可创建多�?
		HSSFRow	r = s.createRow(0);//创建�? 0代表第一�?
		HSSFCell c0=r.createCell(0);
		c0.setCellValue("订单编号");//创建单元格并赋�?? 0代表当前行的第一个单元格}}}
		HSSFCell c1=r.createCell(1);
		c1.setCellValue("购买药品");
		HSSFCell c2=r.createCell(2);
		c2.setCellValue("购买数量");
		HSSFCell c3=r.createCell(3);
		c3.setCellValue("单件商品总价");
		HSSFCell c4=r.createCell(4);
		c4.setCellValue("患者姓名");
		HSSFCell c5=r.createCell(5);
		c5.setCellValue("订单状态");
		HSSFCell c6=r.createCell(6);
		c6.setCellValue("订单日期");
		for(int i = 1; i <= count; i++) {
			Drug d = null;
			Patient p = null;
			try {
				d = dd.findById(list.get(i-1).getDrid());
				p = pd.findById(list.get(i-1).getPatid());
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			HSSFRow	r1 = s.createRow(i);
			HSSFCell c11=r1.createCell(0);
			c11.setCellValue(list.get(i-1).getOrnumber());
			HSSFCell c12=r1.createCell(1);
			c12.setCellValue(d.getDrname());
			HSSFCell c13=r1.createCell(2);
			c13.setCellValue(list.get(i-1).getDrnumber());
			HSSFCell c14=r1.createCell(3);
			c14.setCellValue(list.get(i-1).getOrprice());
			HSSFCell c15=r1.createCell(4);
			c15.setCellValue(p.getPatname());
			HSSFCell c16=r1.createCell(5);
			if(list.get(i-1).getOrstate() == 1) {
			c16.setCellValue("已缴费");
			}else {
				c16.setCellValue("未缴费");
			}
			HSSFCell c17=r1.createCell(6);
			c17.setCellValue(list.get(i-1).getOrdate().toString());
			
		}
		response.setHeader("Content-Disposition", "attachment;filename=Order.xls");
		response.setContentType("application/x-download");
		OutputStream out=response.getOutputStream();
		wb.write(out);
	}

}
