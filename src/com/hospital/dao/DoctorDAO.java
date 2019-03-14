package com.hospital.dao;

import java.util.List;

import com.hospital.db.DBManager;
import com.hospital.mapper.DoctorMapper;
import com.hospital.mapper.IMapper;
import com.hospital.vo.Doctor;

//ҽ������DAO
public class DoctorDAO {
	//����ҽ�� 
	public int save(Doctor d) throws Exception{
		String sql = "insert into Doctor values(docid.nextval,?,?,?,?,?,?,?,?,?,?)";
		Object []params = {
				d.getDocname(),
				d.getDocsex(),
				d.getDocage(),
				d.getDocidcard(),
				d.getDocphonenumber(),
				d.getDocmail(),
				d.getDocaddress(),
				d.getDocdept(),
				d.getDocphoto(),
				d.getDocpass()
		};
		DBManager db = new DBManager();
		int retn = db.executeUpdate(sql, params);
		return retn;
	}
	//ɾ��ҽ��  ͨ��ҽ����ID,ɾ��ҽ��
	public int delete(Doctor d) throws Exception{
		String sql = "delete from Doctor where docid = ?";
		Object []params={
				d.getDocid()
		};
		DBManager db=new DBManager();
		int retn=db.executeUpdate(sql, params);
		return retn;
	}
	//ɾ��ҽ�� ͨ��ҽ����id
	public int deleteid(int docid) throws Exception{
		String sql = "delete from Doctor where docid = ?";
		Object []params={
				docid
		};
		DBManager db=new DBManager();
		int retn=db.executeUpdate(sql, params);
		return retn;
	}
	//��ҳ��ѯ֮ǰ ��Ҫ֪��������
	public int getTotal() throws Exception{
		String sql=" select count(*) from Doctor ";
		Object []params=null;
		DBManager db=new DBManager();
		int total=db.executeQueryJvHe(sql, params);
		return total;
	}
	//��ѯҽ���� ��ҳ��ѯ ��ѯ��ȫ����Ϣ 
	public List<Doctor> findByPage(int pagenow, int pagesize) throws Exception{
		int start=(pagenow-1)*pagesize;
		String sql = " select *from (select rownum rn,d.* from Doctor d) where rn>? and rownum<=? ";
		Object []params = {
			start,
			pagesize
		};
		IMapper mapper = new DoctorMapper();
		DBManager db = new DBManager();
		List<Doctor> list = db.executeQueryObjectList(sql, params, mapper);
		return list;
	}
	//�޸�ҽ����Ϣ ͨ��ҽ��ID,��ȡҽ����Ϣ ���޸�
	public int merge(Doctor d) throws Exception{
		String sql=" update doctor set docname=?,docpass=?,docidcard=?,docphoto=?,docsex=?,docage=?,docphonenumber=?,docmail=?,docaddress=?,docdept=? where docid=? ";
		Object []params={
				d.getDocname(),
				d.getDocpass(),
				d.getDocidcard(),
				d.getDocphoto(),
				d.getDocsex(),
				d.getDocage(),
				d.getDocphonenumber(),
				d.getDocmail(),
				d.getDocaddress(),
				d.getDocdept(),
				d.getDocid()
		};
		DBManager db=new DBManager();
		int retn=db.executeUpdate(sql, params);
		return retn;
	}
	//ͨ��ҽ������ ֱ�Ӳ�ѯ��ҽ����������Ϣ  �����ģ�
	public Doctor findByName(String docname) throws Exception{
		String sql="select *from doctor where docname=?";
		Object []params={
				docname
		};
		IMapper mapper=new DoctorMapper();
		DBManager db=new DBManager();
		List<Doctor> list=db.executeQueryObjectList(sql, params, mapper);
		System.out.println(list.size());
		Doctor d=list.get(0);
		return d;
	}
	public Doctor findById(int docid) throws Exception{
		String sql="select *from doctor where docid=?";
		Object []params={
				docid
		};
		IMapper mapper=new DoctorMapper();
		DBManager db=new DBManager();
		List<Doctor> list=db.executeQueryObjectList(sql, params, mapper);
		System.out.println(list.size());
		Doctor d=list.get(0);
		return d;
	}
	/*
	 *�Ƴ���-12/9-19:26
	 */
	//ͨ��ҽ���ֻ��ź������ѯҽ����Ϣ
	public Doctor login(String docphonenumber,String docpass) throws Exception{
		String sql="select *from doctor where docphonenumber=? and docpass=?";
		Object []params={
				docphonenumber,docpass
		};
		IMapper mapper=new DoctorMapper();
		DBManager db=new DBManager();
		List<Doctor> list=db.executeQueryObjectList(sql, params, mapper);
		Doctor d=list.get(0);
		return d;
	}
	//��ѯ�ض������µ�ҽ������
	public int getTotalToKeShi(String docdept) throws Exception{
		String sql=" select count(*) from Doctor where docdept=? ";
		Object []params= {
				docdept
		};
		DBManager db=new DBManager();
		int total=db.executeQueryJvHe(sql, params);
		return total;
	}
	/*
	 *�Ƴ���-12/10-21:38
	 */
	//��ѯͨ��ҽ���ֻ��Ų�ѯ��Ϣ
	public Doctor findByphone(String docphonenumber) throws Exception{
		String sql="select *from doctor where docphonenumber=?";
		Object []params={
				docphonenumber
		};
		IMapper mapper=new DoctorMapper();
		DBManager db=new DBManager();
		List<Doctor> list=db.executeQueryObjectList(sql, params, mapper);
		Doctor d=list.get(0);
		return d;
	}
	//��ҳ��ѯ ͨ������
	public List<Doctor> findByPageToKeShi(String docdept,int pagenow, int pagesize) throws Exception{
		int start=(pagenow-1)*pagesize;
		String sql = " select *from (select rownum rn,d.* from doctor d where docdept=?) where rn>? and rownum<=? ";
		Object []params = {
			docdept,
			start,
			pagesize
		};
		IMapper mapper = new DoctorMapper();
		DBManager db = new DBManager();
		List<Doctor> list = db.executeQueryObjectList(sql, params, mapper);
		return list;
	}
	/*
	 *�Ƴ���-12/14-21:38
	 */
	//��ѯͨ��ҽ���ֻ��Ų�ѯ��Ϣ
	public int mergedocpass(Doctor d) throws Exception{
		String sql=" update doctor set docpass=? where docid=? ";
		Object []params={
				d.getDocpass(),
				d.getDocid()
		};
		DBManager db=new DBManager();
		int retn=db.executeUpdate(sql, params);
		return retn;
	}
	//�޸�ҽ����Ϣ ͨ��ҽ��ID,��ȡҽ����Ϣ ���޸�����͵�ַ
		public int DocEditinfo(Doctor d) throws Exception{
			String sql=" update doctor set docmail=?,docaddress=? where docid=? ";
			Object []params={
					d.getDocmail(),
					d.getDocaddress(),
					d.getDocid()
			};
			DBManager db=new DBManager();
			int retn=db.executeUpdate(sql, params);
			return retn;
		}
	
	//ͨ��ҽ���ֻ��� ֱ�Ӳ�ѯ��ҽ����������Ϣ  �����ģ�
		public boolean findByPhone(String docphonenumber) throws Exception{
			boolean flag = false;
			String sql="select *from doctor where docphonenumber=?";
			Object []params={
					docphonenumber
			};
			IMapper mapper=new DoctorMapper();
			DBManager db=new DBManager();
			List<Doctor> list=db.executeQueryObjectList(sql, params, mapper);
			if(!list.isEmpty()) {
				flag = true;
			}
			return flag;
		}
		
		//ͨ��ҽ������ ֱ�Ӳ�ѯ��ҽ����������Ϣ  �����ģ�
				public List<Doctor> findByDept(String docdept) throws Exception{
					boolean flag = false;
					String sql="select *from doctor where docdept=?";
					Object []params={
							docdept
					};
					IMapper mapper=new DoctorMapper();
					DBManager db=new DBManager();
					List<Doctor> list=db.executeQueryObjectList(sql, params, mapper);
					return list;
				}
				
				//��ѯҽ���ֻ����Ƿ��ظ�
				public boolean findByPhoneRe(String docphonenumber, String olddocphonenumber) throws Exception{
					boolean flag = false;
					String sql="select *from doctor where docphonenumber=? and docphonenumber not in (?)";
					Object []params={
							docphonenumber,olddocphonenumber
					};
					IMapper mapper=new DoctorMapper();
					DBManager db=new DBManager();
					List<Doctor> list=db.executeQueryObjectList(sql, params, mapper);
					if(!list.isEmpty()) {
						flag = true;
					}
					return flag;
				}
}