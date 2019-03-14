package com.hospital.dao;

import java.util.List;

import com.hospital.db.DBManager;
import com.hospital.mapper.IMapper;
import com.hospital.mapper.PatientMapper;
import com.hospital.mapper.RegisterMapper;
import com.hospital.vo.Doctor;
import com.hospital.vo.Patient;
import com.hospital.vo.Register;
//�Һű���DAO
public class RegisterDAO {
	//���ӹҺ���Ϣ
	public int save(Register r) throws Exception{
		String sql = "insert into Register values(regid.nextval,?,?,?,?)";
		Object []params = {
				r.getPatid(),
				r.getRepatage(),
				r.getRedname(),
				r.getRedoc()
		};
		DBManager db = new DBManager();
		int retn = db.executeUpdate(sql, params);
		return retn;
	}
	//ɾ���Һ���Ϣ  ͨ���Һ���Ϣ��ID
	public int delete(Register r) throws Exception{
		String sql = "delete from Register where regid = ?";
		Object []params={
				r.getRegid()
		};
		DBManager db=new DBManager();
		int retn=db.executeUpdate(sql, params);
		return retn;
	}
	//��ѯ������
	public int getTotal() throws Exception{
		String sql=" select count(*) from Register ";
		Object []params=null;
		DBManager db=new DBManager();
		int total=db.executeQueryJvHe(sql, params);
		return total;
	}
	//��ѯ�Һ���Ϣ�� ��ҳ��ѯ ��ѯ��ȫ����Ϣ 
	public List<Register> findByPage(int pagenow, int pagesize) throws Exception{
		int start=(pagenow-1)*pagesize;
		String sql = " select *from (select rownum rn,r.* from Register r) where rn>? and rownum<=? ";
		Object []params = {
			start,
			pagesize
		};
		IMapper mapper = new RegisterMapper();
		DBManager db = new DBManager();
		List<Register> list = db.executeQueryObjectList(sql, params, mapper);
		return list;
	}
	//�޸ĹҺ���Ϣ��Ϣ ͨ���Һ���ϢID,��ȡ�����Һ���Ϣ ���޸�
	public int merge(Register r) throws Exception{
		String sql=" update Register set patid=?,repatage=?,redname=?,redoc=? where regid=? ";
		Object []params={
			r.getPatid(),
			r.getRepatage(),
			r.getRedname(),
			r.getRedoc(),
			r.getRegid()
		};
		DBManager db=new DBManager();
		int retn=db.executeUpdate(sql, params);
		return retn;
	}
	//ͨ���Һ���ϢID ֱ�Ӳ�ѯ�ùҺ���Ϣ
	public Register findById(int regid) throws Exception{
		String sql="select *from Register where regid=?";
		Object []params={
				regid
		};
		IMapper mapper=new RegisterMapper();
		DBManager db=new DBManager();
		List<Register> list=db.executeQueryObjectList(sql, params, mapper);
		Register d=list.get(0);
		return d;
	}
	/*
	 *�Ƴ���-12/15-16:40
	 */
	//��ѯĳ��ҽ��Ҫ�����ĹҺ���Ϣ������ 
	public int getTotalByDoc(String redoc) throws Exception{
		String sql=" select count(*) from register where redoc=? ";
		Object []params={
				redoc
		};
		DBManager db=new DBManager();
		int total=db.executeQueryJvHe(sql, params);
		return total;
	}
	/*
	 *�Ƴ���-12/15-16:42
	 */
	//��ѯĳ��ҽ��Ҫ�����ĹҺ���Ϣ������
	public Register findFirst(String redoc) throws Exception{
		String sql="select * from (select * from register order by regid) where redoc=? and rownum=1";
		Object []params={
				redoc
		};
		IMapper mapper=new RegisterMapper();
		DBManager db=new DBManager();
		List<Register> list=db.executeQueryObjectList(sql, params, mapper);
		Register d=list.get(0);
		return d;
	}
	
	/*
	 *����ҽ������������ҳ���ҹҺŲ���
	 ���ߣ���ѩ��
	 */
	public List<Register> findByPageForDoctor(int pagenow, int pagesize,String docname) throws Exception{
		int start=(pagenow-1)*pagesize;
		String sql = " select *from (select rownum rn,r.* from Register r) where rn>? and rownum<=? and redoc=? order by regid ";
		Object []params = {
			start,
			pagesize,
			docname
		};
		IMapper mapper = new RegisterMapper();
		DBManager db = new DBManager();
		List<Register> list = db.executeQueryObjectList(sql, params, mapper);
		return list;
	}
	/*
	 * ������
	 * 2018-12-29
	 * */
	public List<Register> findByForDoctor(String docname) throws Exception{
		String sql = " select *from Register where  redoc=?";
		Object []params = {
			docname
		};
		IMapper mapper = new RegisterMapper();
		DBManager db = new DBManager();
		List<Register> list = db.executeQueryObjectList(sql, params, mapper);
		return list;
	}
	
	
	/*
	 ��ѯָ��ҽ���ĹҺŻ��ߵ�������
	 ���ߣ���ѩ��
	 */
	public int getTotalPatientForDoctor(String redoc) throws Exception{
		String sql="select count(*) from register where redoc=?";
		Object []params= {redoc};
		DBManager db=new DBManager();
		int total=db.executeQueryJvHe(sql, params);
		return total;
	}
	/*
	 * ������
	 * 2018/12/29
	 * */

	/*
	 *�Ƴ���-12/15-16:42
	 */
	//ͨ������id��ѯ�� �Һ���Ϣ ����ֵΪlist����
	public List<Register> findByIdForGuaHao(int patid) throws Exception{
		String sql="select *from Register where patid=?";
		Object []params={
				patid
		};
		IMapper mapper=new RegisterMapper();
		DBManager db=new DBManager();
		List<Register> list=db.executeQueryObjectList(sql, params, mapper);
		return list;
	}
	//ɾ���Һű����е���Ϣ
	public int deleteGuaHaoTable() throws Exception{
		String sql="delete from register where 1=1";
		Object []params=null;
		DBManager db=new DBManager();
		int retn=db.executeUpdate(sql, params);
		return retn;
	}
	//ɾ������
	public int deleteRegid() throws Exception{
		String sql="drop sequence regid";
		Object []params=null;
		DBManager db=new DBManager();
		int retn=db.executeUpdate(sql, params);
		return retn;
	}
	//�½�����
	public int saveRegid() throws Exception{
		String sql="\r\n" + 
				"create sequence regid\r\n" + 
				"increment by 1\r\n" + 
				"start with 1\r\n" + 
				" nomaxvalue\r\n" + 
				" minvalue 1\r\n" + 
				" nocache\r\n" + 
				"order";
		Object []params=null;
		DBManager db=new DBManager();
		int retn=db.executeUpdate(sql, params);
		return retn;
	}
	//���ݻ���idɾ���Һ���Ϣ
	public int deleteGuaHao(int patid) throws Exception{
		String sql="delete from register where patid=?";
		Object []params= {
				patid
		};
		DBManager db=new DBManager();
		int retn=db.executeUpdate(sql, params);
		return retn;
	}
	//ͨ���û�ID ֱ�Ӳ�ѯ�ùҺ���Ϣ
		public Register findByuserId(int patid) throws Exception{
			String sql="select *from Register where patid=?";
			Object []params={
					patid
			};
			IMapper mapper=new RegisterMapper();
			DBManager db=new DBManager();
			List<Register> list=db.executeQueryObjectList(sql, params, mapper);
			Register d=list.get(0);
			return d;
		}
		
}