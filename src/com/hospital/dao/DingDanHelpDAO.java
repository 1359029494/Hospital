package com.hospital.dao;

import java.util.List;

import com.hospital.db.DBManager;
import com.hospital.mapper.DingDanHelpMapper;
import com.hospital.mapper.IMapper;
import com.hospital.mapper.OrdersMapper;
import com.hospital.vo.DingDanHelp;
import com.hospital.vo.Orders;

public class DingDanHelpDAO {
	//�����ѯδ֧���������
	public List<DingDanHelp> findByPageForUnpay(int patid ,int pagenow, int pagesize) throws Exception{
		int start=(pagenow-1)*pagesize;
		String sql = "select * from(select rownum rn,n.* from(select ornumber,sum(orprice) from orders where patid=? and orstate=0 group by ornumber order by ornumber desc) n) where rn>? and rownum<=? order by ornumber desc";
		Object []params = {
			patid,
			start,
			pagesize
		};
		IMapper mapper = new DingDanHelpMapper();
		DBManager db = new DBManager();
		List<DingDanHelp> list = db.executeQueryObjectList(sql, params, mapper);
		return list;
	}
	//��ѯδ֧������������
	public int getTotalUnpayOrder(int patid) throws Exception{
		String sql=" select count(*) from(select rownum rn,n.* from(select ornumber,sum(orprice) from orders where patid=? and orstate=0 group by ornumber order by ornumber desc) n)";
		Object []params= {patid};
		DBManager db=new DBManager();
		int total=db.executeQueryJvHe(sql, params);
		return total;
	}
	//��ѯ��������������
	public int getTotalOldOrder(int patid) throws Exception{
		String sql=" select count(*) from(select rownum rn,n.* from(select ornumber,sum(orprice) from orders where patid=? group by ornumber order by ornumber desc) n)";
		Object []params= {patid};
		DBManager db=new DBManager();
		int total=db.executeQueryJvHe(sql, params);
		return total;
	}
	//��ѯ�������������Ϣ
	public List<DingDanHelp> findByPageForOldOrder(int patid,int pagenow, int pagesize) throws Exception{
		int start=(pagenow-1)*pagesize;
		String sql = "select * from(select rownum rn,n.* from(select ornumber,sum(orprice) from orders where patid=? group by ornumber order by ornumber desc) n) where rn>? and rownum<=? order by ornumber desc";
		Object []params = {
			patid,
			start,
			pagesize
		};
		IMapper mapper = new DingDanHelpMapper();
		DBManager db = new DBManager();
		List<DingDanHelp> list = db.executeQueryObjectList(sql, params, mapper);
		return list;
	}
}
