package com.hospital.dao;

import java.util.List;

import com.hospital.db.DBManager;
import com.hospital.mapper.IMapper;
import com.hospital.mapper.PatientMapper;
import com.hospital.vo.Patient;

//���߱���DAO
public class PatientDAO {
	//�����û�
	public int save(Patient p) throws Exception{
		String sql = "insert into Patient values(patid.nextval,?,?,?,?,?,?,?,?,?,?)";
		Object []params = {
				p.getPatname(),
				p.getPatsex(),
				p.getPatidcard(),
				p.getPatbirthday(),
				p.getPatphonenumber(),
				p.getPatmail(),
				p.getPataddress(),
				p.getPatmi(),
				p.getPatphoto(),
				p.getPatpass()		
		};
		DBManager db = new DBManager();
		int retn = db.executeUpdate(sql, params);
		return retn;
	}
	//ɾ���û�  ͨ���û���ID
	public int delete(Patient p) throws Exception{
		String sql = "delete from Patient where patid = ?";
		Object []params={
				p.getPatid()
		};
		DBManager db=new DBManager();
		int retn=db.executeUpdate(sql, params);
		return retn;
	}
	//��ѯ������
		public int getTotal() throws Exception{
			String sql=" select count(*) from Patient ";
			Object []params=null;
			DBManager db=new DBManager();
			int total=db.executeQueryJvHe(sql, params);
			return total;
		}
	//��ѯ�û��� ��ҳ��ѯ ��ѯ��ȫ����Ϣ 
	public List<Patient> findByPage(int pagenow, int pagesize) throws Exception{
		int start=(pagenow-1)*pagesize;
		String sql = " select *from (select rownum rn,p.* from Patient p) where rn>? and rownum<=? ";
		Object []params = {
			start,
			pagesize
		};
		IMapper mapper = new PatientMapper();
		DBManager db = new DBManager();
		List<Patient> list = db.executeQueryObjectList(sql, params, mapper);
		return list;
	}
	//�޸��û���Ϣ ͨ���û�ID,��ȡ�û���Ϣ ���޸�
	public int merge(Patient p) throws Exception{
		String sql=" update Patient set patname=?,patpass=?,patphoto=?,patsex=?,patidcard=?,patbirthday=?,patphonenumber=?,patmail=?,pataddress=?,patmi=? where patid=? ";
		Object []params={
				p.getPatname(),
				p.getPatpass(),
				p.getPatphoto(),
				p.getPatsex(),
				p.getPatidcard(),
				p.getPatbirthday(),
				p.getPatphonenumber(),
				p.getPatmail(),
				p.getPataddress(),
				p.getPatmi(),
				p.getPatid()
		};
		DBManager db=new DBManager();
		int retn=db.executeUpdate(sql, params);
		return retn;
	}
	//ͨ���û�ID ֱ�Ӳ�ѯ���û���������Ϣ
	public Patient findById(int patid) throws Exception{
		String sql="select *from Patient where patid=?";
		Object []params={
				patid
		};
		IMapper mapper=new PatientMapper();
		DBManager db=new DBManager();
		List<Patient> list=db.executeQueryObjectList(sql, params, mapper);
		Patient d=list.get(0);
		return d;
	}
	//ͨ���ֻ��Ų�ѯ���û����е���Ϣ
	public Patient findByPatphonenumber(String Patphonenumber) throws Exception{
		String sql="select *from Patient where Patphonenumber=?";
		Object []params={
				Patphonenumber
		};
		IMapper mapper=new PatientMapper();
		DBManager db=new DBManager();
		List<Patient> list=db.executeQueryObjectList(sql, params, mapper);
		Patient d=list.get(0);
		return d;
	}

	
	

	

	//ͨ���û�����֤�Ų�ѯ�û���Ϣ ����ֵΪlist����
	public List<Patient> findByPatcard(String patidcard) throws Exception{
		String sql="select *from Patient where patidcard=?";
		Object []params={
				patidcard
		};
		IMapper mapper=new PatientMapper();
		DBManager db=new DBManager();
		List<Patient> list=db.executeQueryObjectList(sql, params, mapper);
		return list;
	}
	//ͨ���绰�����жϸ��û��Ƿ����
	public int checkUser(String phonenumber) throws Exception{
		String sql="select * from patient where patphonenumber=?";
		Object []params={phonenumber};
		DBManager db=new DBManager();
		int retn=db.executeUpdate(sql, params);
		return retn;
	}
	
	//���ݵ绰�����ҵ��û���ʵ���һ�����Ĺ���
	public int changePass(String newpass,String phonenumber ) throws Exception{
		String sql="update patient set patpass=? where patphonenumber=?";
		Object []params={newpass,phonenumber};
		DBManager db=new DBManager();
		int retn=db.executeUpdate(sql, params);
		return retn;
	}

	//ͨ���ֻ��Ų�ѯ���û����е���Ϣ ����ֵΪlist����
		public List<Patient> findByPatphone(String Patphonenumber) throws Exception{
			String sql="select *from Patient where Patphonenumber=?";
			Object []params={
					Patphonenumber
			};
			IMapper mapper=new PatientMapper();
			DBManager db=new DBManager();
			List<Patient> list=db.executeQueryObjectList(sql, params, mapper);
			return list;
		}
		/*
		 ���ܣ��޸Ļ��ߵ���Ϣ(�޸�������סַ������)
		 ���ߣ���ѩ��  2018/12/21
		 */
		public int changeMessage(String name,String address,String mail,Patient p) throws Exception{
			String sql = "update Patient set patname=?,pataddress=?,patmail=? where patid =?";
			Object []params={
					name,
					address,
					mail,
					p.getPatid()
			};
			DBManager db=new DBManager();
			int retn=db.executeUpdate(sql, params);
			return retn;
		}

		//ͨ���ֻ��ź������ѯ���û����е���Ϣ ����ֵΪlist����
		public List<Patient> findByPatphoneAndPass(String Patphonenumber,String patpass) throws Exception{
			String sql="select *from Patient where Patphonenumber=? and patpass=?";
			Object []params={
					Patphonenumber,
					patpass
			};
			IMapper mapper=new PatientMapper();
			DBManager db=new DBManager();
			List<Patient> list=db.executeQueryObjectList(sql, params, mapper);
			return list;
		}
		/*
		 ���ܣ��޸��û�ע����ֻ���
		 ���ߣ���ѩ�� 2018/12/22
		 */
		public int changePhone(String phonenumber,int patid ) throws Exception{
			String sql="update patient set patphonenumber=? where patid=?";
			Object []params={phonenumber,patid};
			DBManager db=new DBManager();
			int retn=db.executeUpdate(sql, params);
			return retn;
		}
}