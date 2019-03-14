package com.hospital.dao;

import java.util.List;

import com.hospital.db.DBManager;
import com.hospital.mapper.IMapper;
import com.hospital.mapper.MailMapper;
import com.hospital.vo.Admins;
import com.hospital.vo.Doctor;
import com.hospital.vo.Mail;

public class MailDAO {
	//��ҳ��ѯ֮ǰ ��Ҫ֪��������
		public int getTotal() throws Exception{
			String sql=" select count(*) from Mail ";
			Object []params=null;
			DBManager db=new DBManager();
			int total=db.executeQueryJvHe(sql, params);
			return total;
		}
		//��ѯ��Ϣ�� ��ҳ��ѯ ��ѯ��ȫ����Ϣ 
		public List<Mail> findByPage(int pagenow, int pagesize) throws Exception{
			int start=(pagenow-1)*pagesize;
			String sql = " select *from (select rownum rn,a.* from mail a) where rn>? and rownum<=? ";
			Object []params = {
				start,
				pagesize
			};
			IMapper mapper = new MailMapper();
			DBManager db = new DBManager();
			List<Mail> list = db.executeQueryObjectList(sql, params, mapper);
			return list;
		}
		//������Ϣ 
		public int save(Mail m) throws Exception{
			String sql = "insert into mail values(mesid.nextval,?,?,?,?,?,?)";
			Object []params = {
					m.getAuthor(),
					m.getAuthorid(),
					m.getTitle(),
					m.getMessage(),
					m.getMesdate(),
					m.getMesstade()
			};
			DBManager db = new DBManager();
			int retn = db.executeUpdate(sql, params);
			return retn;
		}
		
		//�޸���Ϣ״̬
		public int merge(int messtate,int mesid) throws Exception{
			String sql=" update mail set messtate=? where mesid=? ";
			Object []params={
					messtate,
					mesid
			};
			DBManager db=new DBManager();
			int retn=db.executeUpdate(sql, params);
			return retn;
		}
		/**
		 * �Ƴ���
		 * 18-12-26
		 * ����ҽ��������Ϣ
		 * */
		//��ѯ��Ϣ�� ��ҳ��ѯ ��ѯ��ҽ������ȫ����Ϣ 
				public List<Mail> DocfindByPage(int authorid,int pagenow, int pagesize) throws Exception{
					int start=(pagenow-1)*pagesize;
					String sql = " select *from (select rownum rn,a.* from mail a where author=1 and authorid=?) where rn>? and rownum<=? ";
					Object []params = {
						authorid,
						start,
						pagesize
					};
					IMapper mapper = new MailMapper();
					DBManager db = new DBManager();
					List<Mail> list = db.executeQueryObjectList(sql, params, mapper);
					return list;
				}
		//��ҳ��ѯҽ��֮ǰ ��Ҫ֪��������
			public int getDocTotal(int authorid) throws Exception{
				String sql=" select count(*) from Mail where author=1 and authorid=?";
				Object []params={
						authorid
				};
				IMapper mapper = new MailMapper();
				DBManager db=new DBManager();
				int total=db.executeQueryJvHe(sql, params);
				return total;
			}
			//��ѯ�����й���Ա����ȫ����Ϣ 
			public List<Mail> admfindByPage(int pagenow, int pagesize) throws Exception{
				int start=(pagenow-1)*pagesize;
				String sql = " select *from (select rownum rn,a.* from mail a where author=0) where rn>? and rownum<=? ";
				Object []params = {
					start,
					pagesize
				};
				IMapper mapper = new MailMapper();
				DBManager db = new DBManager();
				List<Mail> list = db.executeQueryObjectList(sql, params, mapper);
				return list;
			}
		//��ѯ�����й���Ա����ȫ����Ϣ��������
			public int getAdmTotal() throws Exception{
				String sql=" select count(*) from Mail where author=0";
				Object []params={
				};
				IMapper mapper = new MailMapper();
				DBManager db=new DBManager();
				int total=db.executeQueryJvHe(sql, params);
				return total;
			}
			//����mesid��ѯĳ����Ϣ 
			public List<Mail> findById(int mesid) throws Exception{
				String sql = " select *from mail a where mesid=?";
				Object []params = {
					mesid
				};
				IMapper mapper = new MailMapper();
				DBManager db = new DBManager();
				List<Mail> list = db.executeQueryObjectList(sql, params, mapper);
				return list;
			}
			
			//ɾ������ҽ������Ϣ  ͨ��ҽ����ID,ɾ��ҽ�������Ϣ
			public int delete(int docid) throws Exception{
				String sql = "delete from mail where author = ? and authorid = ?";
				Object []params={
						1,docid
				};
				DBManager db=new DBManager();
				int retn=db.executeUpdate(sql, params);
				return retn;
			}
}