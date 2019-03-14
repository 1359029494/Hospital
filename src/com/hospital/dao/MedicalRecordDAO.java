package com.hospital.dao;

import java.util.List;

import com.hospital.db.DBManager;
import com.hospital.mapper.IMapper;
import com.hospital.mapper.MedicalRecordMapper;
import com.hospital.vo.MedicalRecord;

//��������DAO
public class MedicalRecordDAO {
	//�½�����
	public int save(MedicalRecord me) throws Exception{
		String sql = "insert into MedicalRecord values(meid.nextval,?,?,?,?,?,?,?)";
		Object []params = {
				me.getPatid(),
				me.getMepatage(),
				me.getPatsymptom(),
				me.getDocdiagnosis(),
				me.getDruglist(),
				me.getMedate(),
				me.getMedocname()
		};
		DBManager db = new DBManager();
		int retn = db.executeUpdate(sql, params);
		return retn;
	}
	//ɾ������  ͨ��������ID
	public int delete(MedicalRecord me) throws Exception{
		String sql = "delete from MedicalRecord where meid = ?";
		Object []params={
				me.getMeid()
		};
		DBManager db=new DBManager();
		int retn=db.executeUpdate(sql, params);
		return retn;
	}
	//��ѯ������
	public int getTotal() throws Exception{
		String sql=" select count(*) from MedicalRecord ";
		Object []params=null;
		DBManager db=new DBManager();
		int total=db.executeQueryJvHe(sql, params);
		return total;
	}
	//��ѯ������ ��ҳ��ѯ ��ѯ��ȫ����Ϣ 
	public List<MedicalRecord> findByPage(int pagenow, int pagesize) throws Exception{
		int start=(pagenow-1)*pagesize;
		String sql = " select *from (select rownum rn,me.* from MedicalRecord me) where rn>? and rownum<=? ";
		Object []params = {
			start,
			pagesize
		};
		IMapper mapper = new MedicalRecordMapper();
		DBManager db = new DBManager();
		List<MedicalRecord> list = db.executeQueryObjectList(sql, params, mapper);
		return list;
	}
	//�޸Ĳ�����Ϣ ͨ������ID,��ȡ������Ϣ ���޸�
	public int merge(MedicalRecord me) throws Exception{
		String sql=" update MedicalRecord set patid=?,mepatage=?,patsymptom=?,docdiagnosis=?,druglist=?,medate=?,medocname=? where meid=? ";
		Object []params={
				me.getPatid(),
				me.getMepatage(),
				me.getPatsymptom(),
				me.getDocdiagnosis(),
				me.getDruglist(),
				me.getMedate(),
				me.getMedocname(),
				me.getMeid()
		};
		DBManager db=new DBManager();
		int retn=db.executeUpdate(sql, params);
		return retn;
	}
	//ͨ������ID ֱ�Ӳ�ѯ�ò�����������Ϣ
	public MedicalRecord findById(int meid) throws Exception{
		String sql="select *from MedicalRecord where meid=?";
		Object []params={
				meid
		};
		IMapper mapper=new MedicalRecordMapper();
		DBManager db=new DBManager();
		List<MedicalRecord> list=db.executeQueryObjectList(sql, params, mapper);
		MedicalRecord d=list.get(0);
		return d;
	}
	
	/*
	 ��ҳ��ѯ���˵�����������¼��������������
	 �����ߣ���ѩ��   2018/12/13
	 */
	public List<MedicalRecord> findByPageOrderByDate(int patid,int pagenow, int pagesize) throws Exception{
		int start=(pagenow-1)*pagesize;
		String sql = " select *from (select rownum rn,me.* from MedicalRecord me where patid=? ) where rn>? and rownum<=? order by medate desc";
		Object []params = {
			patid,
			start,
			pagesize
		};
		IMapper mapper = new MedicalRecordMapper();
		DBManager db = new DBManager();
		List<MedicalRecord> list = db.executeQueryObjectList(sql, params, mapper);
		return list;
	}
	/*
	 ��ȡ����id�Ļ��߲�����������
	 �����ߣ� ��ѩ��  2018/12/13
	 */
	public int getTotalOrderToPat(int patid) throws Exception{
		String sql=" select count(*) from MedicalRecord where patid=?";
		Object []params= {patid};
		DBManager db=new DBManager();
		int total=db.executeQueryJvHe(sql, params);
		return total;
	}
	/*
	 ��ҳ��ѯҽ������������Ĳ�����¼��������������
	 �����ߣ� �Ƴ���  2018/12/16
	 */
	public List<MedicalRecord> DocfindByPageOrderByDate(String medocname,int pagenow, int pagesize) throws Exception{
		int start=(pagenow-1)*pagesize;
		String sql = " select *from (select rownum rn,me.* from MedicalRecord me where medocname=? ) where rn>? and rownum<=? order by medate desc";
		Object []params = {
			medocname,
			start,
			pagesize
		};
		IMapper mapper = new MedicalRecordMapper();
		DBManager db = new DBManager();
		List<MedicalRecord> list = db.executeQueryObjectList(sql, params, mapper);
		return list;
	}
	/*
	 ��ȡ����ҽ�����ﲡ����������
	 �����ߣ� �Ƴ���  2018/12/16
	 */
	public int DocgetTotalOrderTodoc(String medocname) throws Exception{
		String sql=" select count(*) from MedicalRecord where medocname=?";
		Object []params= {medocname};
		DBManager db=new DBManager();
		int total=db.executeQueryJvHe(sql, params);
		return total;
	}
	
	/*
	 ��ѯ����ȫ��������������¼��������������
	 �����ߣ�����   2018/12/30
	 */
	public List<MedicalRecord> findAllByPageOrderByDate(int patid) throws Exception{
		String sql = " select *from MedicalRecord  where patid=? order by medate desc";
		Object []params = {
			patid,
		};
		IMapper mapper = new MedicalRecordMapper();
		DBManager db = new DBManager();
		List<MedicalRecord> list = db.executeQueryObjectList(sql, params, mapper);
		return list;
	}
}