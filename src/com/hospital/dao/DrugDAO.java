package com.hospital.dao;

import java.util.List;

import com.hospital.db.DBManager;
import com.hospital.mapper.DrugMapper;
import com.hospital.mapper.IMapper;
import com.hospital.vo.Drug;

//ҩƷ����DAO
public class DrugDAO {
	//������ҩ��
	public int save(Drug d) throws Exception{
		String sql = "insert into Drug values(drid.nextval,?,?,?,?,?,?)";
		Object []params = {
				d.getDrphoto(),
				d.getDrname(),
				d.getDrprice(),
				d.getDrnumber(),
				d.getDreffect(),
				d.getPrescription()
		};
		DBManager db = new DBManager();
		int retn = db.executeUpdate(sql, params);
		return retn;
	}
	//ɾ��ҩƷ  ͨ��ҩƷ��ID
	public int delete(Drug d) throws Exception{
		String sql = "delete from Drug where drid = ?";
		Object []params={
				d.getDrid()
		};
		DBManager db=new DBManager();
		int retn=db.executeUpdate(sql, params);
		return retn;
	}
	
	//ɾ��ҩƷ  ͨ��ҩƷ��ID
		public int deleteById(int drid) throws Exception{
			String sql = "delete from Drug where drid = ?";
			Object []params={
					drid
			};
			DBManager db=new DBManager();
			int retn=db.executeUpdate(sql, params);
			return retn;
		}
	public int getTotal() throws Exception{
		String sql=" select count(*) from Drug ";
		Object []params=null;
		DBManager db=new DBManager();
		int total=db.executeQueryJvHe(sql, params);
		return total;
	}
	//������������ݽ�����Ŀ��ͳ��
	public int getTotalbychoose(String drugname) throws Exception{
		String sql=" select count(*) from (select * from drug where drname like ? and prescription=0) ";
		Object []params= {
				drugname
		};
		DBManager db=new DBManager();
		int total=db.executeQueryJvHe(sql, params);
		return total;
	}
	//��ѯҩƷ�� ��ҳ��ѯ ��ѯ��ȫ����Ϣ 
	public List<Drug> findByPage(int pagenow, int pagesize) throws Exception{
		int start=(pagenow-1)*pagesize;
		String sql = " select *from (select rownum rn,d.* from Drug d) where rn>? and rownum<=? ";
		Object []params = {
			start,
			pagesize
		};
		IMapper mapper = new DrugMapper();
		DBManager db = new DBManager();
		List<Drug> list = db.executeQueryObjectList(sql, params, mapper);
		return list;
	}
	//�޸�ҩƷ��Ϣ ͨ��ҩƷID,��ȡҩƷ��Ϣ ���޸�
	public int merge(Drug d) throws Exception{
		String sql=" update Drug set drphoto=?,drname=?,drprice=?,drnumber=?,dreffect=?,prescription=? where drid=? ";
		Object []params={
				d.getDrphoto(),
				d.getDrname(),
				d.getDrprice(),
				d.getDrnumber(),
				d.getDreffect(), 
				d.getPrescription(),
				d.getDrid()
		};
		DBManager db=new DBManager();
		int retn=db.executeUpdate(sql, params);
		return retn;
	}
	//ͨ��ҩƷID ֱ�Ӳ�ѯ��ҩƷ��������Ϣ
	public Drug findById(int drid) throws Exception{
		String sql="select *from Drug where drid=?";
		Object []params={
				drid
		};
		IMapper mapper=new DrugMapper();
		DBManager db=new DBManager();
		List<Drug> list=db.executeQueryObjectList(sql, params, mapper);
		Drug d=list.get(0);
		return d;
	}
	
	
	//ͨ��ҩƷID ֱ�Ӳ�ѯ��ҩƷ������
		public Drug findByIdToName(int drid) throws Exception{
			String sql="select drname from Drug where drid=?";
			Object []params={
					drid
			};
			IMapper mapper=new DrugMapper();
			DBManager db=new DBManager();
			List<Drug> list=db.executeQueryObjectList(sql, params, mapper);
			Drug d=list.get(0);
			return d;
		}

	
	public Drug findByName(String drname) throws Exception{
		String sql="select *from Drug where drname=?";
		Object []params={
				drname
		};
		IMapper mapper=new DrugMapper();
		DBManager db=new DBManager();
		List<Drug> list=db.executeQueryObjectList(sql, params, mapper);
		Drug d=list.get(0);
		return d;
	}

	//ͨ��ģ�����ѯ��ӷ�ҳ��ѯ������ҩƷ
	public List<Drug>  findByLike(int pagenow, int pagesize,String drname) throws Exception{
		int start=(pagenow-1)*pagesize;
		String sql = " select *from (select rownum rn,d.* from (select * from drug where drname like ? and prescription=0)d) where rn>? and rownum<=? ";
		Object []params = {
			drname,
			start,
			pagesize
		};
		IMapper mapper = new DrugMapper();
		DBManager db = new DBManager();
		List<Drug> list = db.executeQueryObjectList(sql, params, mapper);
		return list;
		
	}

	/***
	 * �Ƴ���
	 *18/12/18/21:56
	 * ͨ��ҩƷ����ģ�����ѯ������ҩƷ
	 */
	
	public List<Drug> DocfindByLike(String drname) throws Exception{
		String sql = " select * from drug where drname like ? ";
		Object []params = {
			drname,
		};
		IMapper mapper = new DrugMapper();
		DBManager db = new DBManager();
		List<Drug> list = db.executeQueryObjectList(sql, params, mapper);
		return list;
	}
	/***
	 * �Ƴ���
	 *18/12/19/22:21
	 * ͨ��ҩƷ��������ҩƷ
	 */
	public Drug DocfindByname(String drname) throws Exception{
		String sql="select *from Drug where drname=?";
		Object []params={
				drname
		};
		IMapper mapper=new DrugMapper();
		DBManager db=new DBManager();
		List<Drug> list=db.executeQueryObjectList(sql, params, mapper);
		Drug d=list.get(0);
		return d;
	} 
	/*
	 * 	������ 2019 1/10
	 * 	�޸�ҩƷ������
	 */
	public int mergeNumber(Drug d) throws Exception{
		String sql=" update Drug set drnumber=? where drid=? ";
		Object []params={
				d.getDrnumber(),
				d.getDrid()
		};
		DBManager db=new DBManager();
		int retn=db.executeUpdate(sql, params);
		return retn;
	}
	
	
	
	
	
	
	
	
}